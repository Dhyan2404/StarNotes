package com.couchbase.lite.internal.replicator;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.replicator.AbstractCBLWebSocket;
import com.couchbase.lite.internal.sockets.CBLSocketException;
import com.couchbase.lite.internal.sockets.CloseStatus;
import com.couchbase.lite.internal.sockets.OkHttpSocket;
import com.couchbase.lite.internal.sockets.SocketFromCore;
import com.couchbase.lite.internal.sockets.SocketFromRemote;
import com.couchbase.lite.internal.sockets.SocketState;
import com.couchbase.lite.internal.sockets.SocketToCore;
import com.couchbase.lite.internal.sockets.SocketToRemote;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.StateMachine;
import com.couchbase.lite.internal.utils.StringUtils;
import com.google.android.material.motion.MotionUtils;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.EOFException;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.UnknownHostException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Credentials;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes4.dex */
public abstract class AbstractCBLWebSocket implements SocketFromCore, SocketFromRemote, AutoCloseable {
    private static final String CHALLENGE_BASIC = "Basic";
    public static final int DEFAULT_HEARTBEAT_SEC = 300;
    public static final String HEADER_AUTH = "Authorization";
    public static final String HEADER_COOKIES = "Cookies";
    public static final String HEADER_PROXY_AUTH = "Proxy-Authorization";
    public static final String HEADER_USER_AGENT = "User-Agent";
    public static final int MAX_AUTH_RETRIES = 3;

    @NonNull
    @GuardedBy("getPeerLock()")
    private final CBLCookieStore cookieStore;

    @Nullable
    private final Map<String, Object> options;

    @NonNull
    private final InterfaceC2217Fn.Consumer<List<Certificate>> serverCertsListener;

    @NonNull
    @GuardedBy("getPeerLock()")
    private final StateMachine<SocketState> state = SocketState.getSocketStateMachine();

    @NonNull
    private final SocketToCore toCore;

    @NonNull
    private final SocketToRemote toRemote;

    @NonNull
    private final URI uri;
    private static final LogDomain LOG_DOMAIN = LogDomain.NETWORK;

    @NonNull
    private static final TaggedWeakPeerBinding<KeyManager> KEY_MANAGERS = new TaggedWeakPeerBinding<>();

    /* loaded from: classes4.dex */
    public static final class ConstrainedAddressSocketFactory extends SSLSocketFactory {

        @NonNull
        private final SSLSocketFactory delegate;

        @NonNull
        private final InetAddress localAddress;

        @Override // javax.net.ssl.SSLSocketFactory
        @NonNull
        public Socket createSocket(@NonNull Socket socket, @NonNull String str, int i, boolean z) throws IOException {
            return this.delegate.createSocket(socket, str, i, z);
        }

        @Override // javax.net.ssl.SSLSocketFactory
        @NonNull
        public String[] getDefaultCipherSuites() {
            return this.delegate.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        @NonNull
        public String[] getSupportedCipherSuites() {
            return this.delegate.getSupportedCipherSuites();
        }

        private ConstrainedAddressSocketFactory(@NonNull InetAddress inetAddress, @NonNull SSLSocketFactory sSLSocketFactory) {
            this.localAddress = inetAddress;
            this.delegate = sSLSocketFactory;
        }

        @Override // javax.net.SocketFactory
        @NonNull
        public Socket createSocket(@NonNull InetAddress inetAddress, int i) throws IOException {
            return createSocket(inetAddress, i, this.localAddress, 0);
        }

        @Override // javax.net.SocketFactory
        @NonNull
        public Socket createSocket(@NonNull InetAddress inetAddress, int i, @NonNull InetAddress inetAddress2, int i2) throws IOException {
            return this.delegate.createSocket(inetAddress, i, inetAddress2, i2);
        }

        @Override // javax.net.SocketFactory
        @NonNull
        public Socket createSocket(@NonNull String str, int i) throws IOException {
            return this.delegate.createSocket(str, i, this.localAddress, 0);
        }

        @Override // javax.net.SocketFactory
        @NonNull
        public Socket createSocket(@NonNull String str, int i, @NonNull InetAddress inetAddress, int i2) throws IOException {
            return this.delegate.createSocket(str, i, inetAddress, i2);
        }
    }

    /* loaded from: classes4.dex */
    public class WebSocketCookieJar implements CookieJar {
        private final boolean acceptParentDomain;

        public WebSocketCookieJar(boolean z) {
            this.acceptParentDomain = z;
        }

        @Override // okhttp3.CookieJar
        @NonNull
        public List<Cookie> loadForRequest(@NonNull HttpUrl httpUrl) {
            ArrayList arrayList = new ArrayList();
            if (!AbstractCBLWebSocket.this.state.assertState(SocketState.UNOPENED, SocketState.OPENING)) {
                return arrayList;
            }
            if (AbstractCBLWebSocket.this.options != null) {
                Object obj = AbstractCBLWebSocket.this.options.get(C4Replicator.REPLICATOR_OPTION_COOKIES);
                if (obj instanceof String) {
                    arrayList.addAll(OkHttpSocket.parseCookies(httpUrl, (String) obj));
                }
            }
            String cookies = AbstractCBLWebSocket.this.cookieStore.getCookies(httpUrl.uri());
            if (cookies != null) {
                arrayList.addAll(OkHttpSocket.parseCookies(httpUrl, cookies));
            }
            return arrayList;
        }

        @Override // okhttp3.CookieJar
        public void saveFromResponse(@NonNull HttpUrl httpUrl, @NonNull List<Cookie> list) {
            AbstractCBLWebSocket.this.cookieStore.setCookies(httpUrl.uri(), InterfaceC2217Fn.mapToList(list, new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.s2
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                public final Object apply(Object obj) {
                    return ((Cookie) obj).toString();
                }
            }), this.acceptParentDomain);
        }
    }

    public AbstractCBLWebSocket(@NonNull SocketToRemote socketToRemote, @NonNull SocketToCore socketToCore, @NonNull URI uri, @Nullable byte[] bArr, @NonNull CBLCookieStore cBLCookieStore, @NonNull InterfaceC2217Fn.Consumer<List<Certificate>> consumer) {
        this.toCore = socketToCore;
        this.toRemote = socketToRemote;
        this.uri = uri;
        this.cookieStore = cBLCookieStore;
        this.serverCertsListener = consumer;
        this.options = bArr == null ? null : Collections.unmodifiableMap(FLValue.fromData(bArr).asDict());
    }

    public static long addKeyManager(@NonNull KeyManager keyManager) {
        TaggedWeakPeerBinding<KeyManager> taggedWeakPeerBinding = KEY_MANAGERS;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        taggedWeakPeerBinding.bind(reserveKey, keyManager);
        return reserveKey;
    }

    private boolean assertState(@NonNull SocketState... socketStateArr) {
        boolean assertState;
        synchronized (getLock()) {
            assertState = this.state.assertState(socketStateArr);
        }
        return assertState;
    }

    @Nullable
    @SuppressFBWarnings({"RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"})
    private Request authenticate(@NonNull Response response, @NonNull String str, @NonNull String str2) {
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "%s.authenticate: %s", this, response);
        if (responseCount(response) >= 3) {
            return null;
        }
        List<Challenge> challenges = response.challenges();
        Log.m9899d(logDomain, "challenges: %s", challenges);
        if (challenges == null) {
            return null;
        }
        Iterator<Challenge> it2 = challenges.iterator();
        while (it2.hasNext()) {
            if ("Basic".equalsIgnoreCase(it2.next().scheme())) {
                return response.request().newBuilder().header(str, str2).build();
            }
        }
        return null;
    }

    private boolean changeState(@NonNull SocketState socketState) {
        boolean state;
        synchronized (getLock()) {
            state = this.state.setState(socketState);
        }
        return state;
    }

    @Nullable
    private byte[] encodeHeaders(@Nullable Map<String, Object> map) {
        try {
            FLEncoder managedEncoder = FLEncoder.getManagedEncoder();
            try {
                managedEncoder.write(map);
                byte[] finish = managedEncoder.finish();
                managedEncoder.close();
                return finish;
            } finally {
            }
        } catch (LiteCoreException e) {
            LogDomain logDomain = LOG_DOMAIN;
            Log.m9909w(logDomain, "CBLWebSocket failed to encode response headers", e);
            Log.m9896d(logDomain, StringUtils.toString(map));
            return null;
        }
    }

    private void forcePreAuth(@NonNull OkHttpClient.Builder builder, @NonNull final String str) {
        builder.addInterceptor(new Interceptor() { // from class: com.sunia.HTREnginev2.o2
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.Chain chain) {
                Response lambda$forcePreAuth$2;
                lambda$forcePreAuth$2 = AbstractCBLWebSocket.lambda$forcePreAuth$2(str, chain);
                return lambda$forcePreAuth$2;
            }
        });
    }

    private int getCodeForError(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null) {
            return -1;
        }
        int handleCloseCause = handleCloseCause(cause);
        if (handleCloseCause > 0) {
            return handleCloseCause;
        }
        if (cause instanceof CertificateExpiredException) {
            return 14;
        }
        return cause instanceof CertificateException ? 8 : 0;
    }

    @Nullable
    private KeyManager getKeyManager(@Nullable Map<?, ?> map) {
        if (map != null && C4Replicator.AUTH_TYPE_CLIENT_CERT.equals(map.get("type"))) {
            Object obj = map.get(C4Replicator.REPLICATOR_AUTH_CLIENT_CERT_KEY);
            r2 = obj instanceof Long ? (KeyManager) KEY_MANAGERS.getBinding(((Long) obj).longValue()) : null;
            if (r2 == null) {
                Log.m9904i(LOG_DOMAIN, "CBLWebSocket: No key manager configured for client certificate authentication");
            }
        }
        return r2;
    }

    @NonNull
    private InetAddress getSelectedInterface(@NonNull String str) {
        List<InterfaceAddress> interfaceAddresses;
        try {
            Iterator it2 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it2.hasNext()) {
                NetworkInterface networkInterface = (NetworkInterface) it2.next();
                if (str.equals(networkInterface.getName()) && (interfaceAddresses = networkInterface.getInterfaceAddresses()) != null && !interfaceAddresses.isEmpty()) {
                    return interfaceAddresses.get(0).getAddress();
                }
            }
            try {
                return InetAddress.getByName(str);
            } catch (UnknownHostException e) {
                throw new CBLSocketException(5, 27, "Could not resolve specified interface: " + str, e);
            }
        } catch (SocketException e2) {
            throw new CBLSocketException(5, 20, "Could not get device interfaces", e2);
        }
    }

    @NonNull
    private CloseStatus getStatusForError(@Nullable Throwable th) {
        Log.m9905i(LOG_DOMAIN, "WebSocket CLOSED with error", th);
        int i = 6;
        if (th == null) {
            return new CloseStatus(6, 0, null);
        }
        CloseStatus handleClose = handleClose(th);
        if (handleClose != null) {
            return handleClose;
        }
        int codeForError = getCodeForError(th);
        if (th instanceof SocketTimeoutException) {
            i = 3;
        } else if ((th instanceof NoRouteToHostException) || (th instanceof PortUnreachableException)) {
            i = 24;
        } else {
            if (!(th instanceof SocketException) && !(th instanceof EOFException)) {
                if (codeForError <= 0) {
                    if (th instanceof UnknownHostException) {
                        i = 2;
                    } else if (!(th instanceof SSLHandshakeException)) {
                        if (!(th instanceof SSLKeyException) && !(th instanceof SSLPeerUnverifiedException)) {
                            if (th instanceof SSLProtocolException) {
                                codeForError = 1002;
                            } else if (th instanceof SSLException) {
                                i = 18;
                            } else {
                                codeForError = 1008;
                            }
                            return new CloseStatus(i, codeForError, th.toString());
                        }
                        i = 8;
                    }
                }
                i = 5;
                return new CloseStatus(i, codeForError, th.toString());
            }
            i = 22;
        }
        codeForError = i;
        i = 5;
        return new CloseStatus(i, codeForError, th.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Response lambda$forcePreAuth$2(String str, Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        try {
            return chain.proceed(chain.connection() != null ? request : request.newBuilder().header("Authorization", str).method(request.method(), request.body()).build());
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            throw new IOException("Unexpected interceptor failure @" + Thread.currentThread() + ": " + request.method() + " \"" + request.body() + "\"", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Request lambda$setupAuthentication$0(String str, Route route, Response response) throws IOException {
        return authenticate(response, "Proxy-Authorization", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Request lambda$setupAuthentication$1(String str, Route route, Response response) throws IOException {
        return authenticate(response, "Authorization", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$setupSSLSocketFactory$3(String str, SSLSession sSLSession) {
        return true;
    }

    private int responseCount(Response response) {
        int i = 1;
        while (true) {
            response = response.priorResponse();
            if (response == null) {
                return i;
            }
            i++;
        }
    }

    private void setupAuthentication(@NonNull OkHttpClient.Builder builder, @NonNull Map<?, ?> map) {
        Object obj = map.get(C4Replicator.REPLICATOR_OPTION_PROXY_USER);
        Object obj2 = map.get(C4Replicator.REPLICATOR_OPTION_PROXY_PASS);
        if ((obj instanceof String) && (obj2 instanceof String)) {
            final String basic = Credentials.basic((String) obj, (String) obj2);
            builder.proxyAuthenticator(new Authenticator() { // from class: com.sunia.HTREnginev2.q2
                @Override // okhttp3.Authenticator
                public final Request authenticate(Route route, Response response) {
                    Request lambda$setupAuthentication$0;
                    lambda$setupAuthentication$0 = AbstractCBLWebSocket.this.lambda$setupAuthentication$0(basic, route, response);
                    return lambda$setupAuthentication$0;
                }
            });
        }
        if ("Basic".equals(map.get("type"))) {
            Object obj3 = map.get(C4Replicator.REPLICATOR_AUTH_USER_NAME);
            Object obj4 = map.get("password");
            if ((obj3 instanceof String) && (obj4 instanceof String)) {
                final String basic2 = Credentials.basic((String) obj3, (String) obj4);
                builder.authenticator(new Authenticator() { // from class: com.sunia.HTREnginev2.r2
                    @Override // okhttp3.Authenticator
                    public final Request authenticate(Route route, Response response) {
                        Request lambda$setupAuthentication$1;
                        lambda$setupAuthentication$1 = AbstractCBLWebSocket.this.lambda$setupAuthentication$1(basic2, route, response);
                        return lambda$setupAuthentication$1;
                    }
                });
                forcePreAuth(builder, basic2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setupSSLSocketFactory(@androidx.annotation.NonNull okhttp3.OkHttpClient.Builder r8, @androidx.annotation.Nullable java.util.Map<?, ?> r9) {
        /*
            r7 = this;
            java.util.Map<java.lang.String, java.lang.Object> r0 = r7.options
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L63
            java.lang.String r4 = "pinnedCert"
            java.lang.Object r0 = r0.get(r4)
            boolean r4 = r0 instanceof byte[]
            if (r4 == 0) goto L2d
            java.lang.String r4 = "X.509"
            java.security.cert.CertificateFactory r4 = java.security.cert.CertificateFactory.getInstance(r4)     // Catch: java.security.cert.CertificateException -> L25
            java.io.ByteArrayInputStream r5 = new java.io.ByteArrayInputStream     // Catch: java.security.cert.CertificateException -> L25
            byte[] r0 = (byte[]) r0     // Catch: java.security.cert.CertificateException -> L25
            r5.<init>(r0)     // Catch: java.security.cert.CertificateException -> L25
            java.security.cert.Certificate r0 = r4.generateCertificate(r5)     // Catch: java.security.cert.CertificateException -> L25
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0     // Catch: java.security.cert.CertificateException -> L25
            goto L2e
        L25:
            r0 = move-exception
            com.couchbase.lite.LogDomain r4 = com.couchbase.lite.internal.replicator.AbstractCBLWebSocket.LOG_DOMAIN
            java.lang.String r5 = "Can't parse pinned certificate.  Ignored"
            com.couchbase.lite.internal.logging.Log.m9909w(r4, r5, r0)
        L2d:
            r0 = r2
        L2e:
            java.util.Map<java.lang.String, java.lang.Object> r4 = r7.options
            java.lang.String r5 = "onlySelfSignedServer"
            java.lang.Object r4 = r4.get(r5)
            boolean r5 = r4 instanceof java.lang.Boolean
            if (r5 == 0) goto L41
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            goto L42
        L41:
            r4 = r3
        L42:
            javax.net.ssl.KeyManager r9 = r7.getKeyManager(r9)
            if (r9 == 0) goto L4d
            javax.net.ssl.KeyManager[] r5 = new javax.net.ssl.KeyManager[r1]
            r5[r3] = r9
            goto L4e
        L4d:
            r5 = r2
        L4e:
            java.util.Map<java.lang.String, java.lang.Object> r9 = r7.options
            java.lang.String r6 = "networkInterface"
            java.lang.Object r9 = r9.get(r6)
            boolean r6 = r9 instanceof java.lang.String
            if (r6 == 0) goto L61
            java.lang.String r9 = (java.lang.String) r9
            java.net.InetAddress r9 = r7.getSelectedInterface(r9)
            goto L67
        L61:
            r9 = r2
            goto L67
        L63:
            r9 = r2
            r0 = r9
            r5 = r0
            r4 = r3
        L67:
            com.couchbase.lite.internal.replicator.CBLTrustManager r6 = new com.couchbase.lite.internal.replicator.CBLTrustManager
            com.couchbase.lite.internal.utils.Fn$Consumer<java.util.List<java.security.cert.Certificate>> r7 = r7.serverCertsListener
            r6.<init>(r0, r4, r7)
            java.lang.String r7 = "TLS"
            javax.net.ssl.SSLContext r7 = javax.net.ssl.SSLContext.getInstance(r7)     // Catch: java.lang.Throwable -> L98
            javax.net.ssl.TrustManager[] r1 = new javax.net.ssl.TrustManager[r1]     // Catch: java.lang.Throwable -> L98
            r1[r3] = r6     // Catch: java.lang.Throwable -> L98
            r7.init(r5, r1, r2)     // Catch: java.lang.Throwable -> L98
            javax.net.ssl.SSLSocketFactory r7 = r7.getSocketFactory()
            if (r9 != 0) goto L82
            goto L88
        L82:
            com.couchbase.lite.internal.replicator.AbstractCBLWebSocket$ConstrainedAddressSocketFactory r1 = new com.couchbase.lite.internal.replicator.AbstractCBLWebSocket$ConstrainedAddressSocketFactory
            r1.<init>(r9, r7)
            r7 = r1
        L88:
            r8.sslSocketFactory(r7, r6)
            if (r0 != 0) goto L8f
            if (r4 == 0) goto L97
        L8f:
            com.sunia.HTREnginev2.p2 r7 = new com.sunia.HTREnginev2.p2
            r7.<init>()
            r8.hostnameVerifier(r7)
        L97:
            return
        L98:
            r7 = move-exception
            com.couchbase.lite.internal.sockets.CBLSocketException r8 = new com.couchbase.lite.internal.sockets.CBLSocketException
            r9 = 1011(0x3f3, float:1.417E-42)
            java.lang.String r0 = "Failed getting SSL context"
            r1 = 6
            r8.<init>(r1, r9, r0, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.internal.replicator.AbstractCBLWebSocket.setupSSLSocketFactory(okhttp3.OkHttpClient$Builder, java.util.Map):void");
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        Log.m9899d(LOG_DOMAIN, "%s.close: %s", this, this.uri);
        this.toCore.requestCoreClose(new CloseStatus(1001, "Closed by client"));
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public void coreAcksWrite(long j) {
        Log.m9899d(LOG_DOMAIN, "%s.coreAckReceive: %d", this, Long.valueOf(j));
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public final void coreClosed() {
        Log.m9911w(LOG_DOMAIN, "%s.coreClosed: ignoring unexpected call", this);
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public final void coreRequestsClose(@NonNull CloseStatus closeStatus) {
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "%s.coreRequestsClose: %s", this, closeStatus);
        if (assertState(SocketState.OPENING, SocketState.OPEN, SocketState.CLOSING)) {
            int i = closeStatus.code;
            if (i > 100 && i < 600) {
                closeStatus = new CloseStatus(6, 1008, closeStatus.message);
            }
            if (this.toRemote.closeRemote(closeStatus)) {
                return;
            }
            Log.m9899d(logDomain, "%s.coreRequestsClose: Could not close remote", this);
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public final void coreRequestsOpen() {
        Log.m9899d(LOG_DOMAIN, "%s.coreRequestedOpen", this);
        if (changeState(SocketState.OPENING)) {
            this.toRemote.openRemote(this.uri, this.options);
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public final void coreWrites(@NonNull byte[] bArr) {
        int length = bArr.length;
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "%s.coreWrites: %d", this, Integer.valueOf(length));
        if (assertState(SocketState.OPEN, SocketState.CLOSING)) {
            if (this.toRemote.writeToRemote(bArr)) {
                this.toCore.ackWriteToCore(length);
                return;
            }
            Log.m9904i(logDomain, "CBLWebSocket failed to send data of length: " + length);
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    @NonNull
    public Object getLock() {
        return this.toCore.getLock();
    }

    @Nullable
    @VisibleForTesting
    public Map<String, Object> getOptions() {
        return this.options;
    }

    @NonNull
    @VisibleForTesting
    public SocketState getSocketState() {
        return this.state.getCurrentState();
    }

    @Nullable
    public abstract CloseStatus handleClose(@NonNull Throwable th);

    public abstract int handleCloseCause(@NonNull Throwable th);

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    public void remoteClosed(@NonNull CloseStatus closeStatus) {
        Log.m9899d(LOG_DOMAIN, "%s.remoteClosed: %s", this, closeStatus);
        if (changeState(SocketState.CLOSED)) {
            if (closeStatus.code == 1000) {
                closeStatus = new CloseStatus(1, 0, closeStatus.message);
            }
            this.toCore.closeCore(closeStatus);
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    public void remoteFailed(@NonNull Throwable th) {
        Log.m9898d(LOG_DOMAIN, "%s.remoteFailed", th, this);
        if (changeState(SocketState.CLOSED)) {
            this.toCore.closeCore(getStatusForError(th));
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    public void remoteOpened(int i, @Nullable Map<String, Object> map) {
        Log.m9899d(LOG_DOMAIN, "%s.remoteOpened: %s", this, map);
        if (changeState(SocketState.OPEN)) {
            this.toCore.ackOpenToCore(i, encodeHeaders(map));
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    public void remoteRequestsClose(@NonNull CloseStatus closeStatus) {
        Log.m9899d(LOG_DOMAIN, "%s.remoteRequestsClose: %s", this, closeStatus);
        if (changeState(SocketState.CLOSING)) {
            this.toCore.requestCoreClose(closeStatus);
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    public void remoteWrites(@NonNull byte[] bArr) {
        Log.m9899d(LOG_DOMAIN, "%s.remoteWrites: %d", this, Integer.valueOf(bArr.length));
        if (assertState(SocketState.OPEN, SocketState.CLOSING)) {
            this.toCore.writeToCore(bArr);
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
    public void setupRemoteSocketFactory(@NonNull OkHttpClient.Builder builder) {
        Map<String, Object> map = this.options;
        boolean z = false;
        if (map != null) {
            Object obj = map.get(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION);
            r1 = obj instanceof Map ? (Map) obj : null;
            Object obj2 = this.options.get(C4Replicator.REPLICATOR_HEARTBEAT_INTERVAL);
            builder.pingInterval(obj2 instanceof Number ? ((Long) obj2).longValue() : 300L, TimeUnit.SECONDS);
            Object obj3 = this.options.get(C4Replicator.REPLICATOR_OPTION_ACCEPT_PARENT_COOKIES);
            if (obj3 instanceof Boolean) {
                z = ((Boolean) obj3).booleanValue();
            }
        }
        if (r1 != null) {
            setupAuthentication(builder, r1);
        }
        builder.cookieJar(new WebSocketCookieJar(z));
        setupSSLSocketFactory(builder, r1);
    }

    @NonNull
    public String toString() {
        return "CBLWebSocket@" + ClassUtils.objId(this) + "{" + this.toCore + " <=> " + this.toRemote + MotionUtils.f31761c + this.uri + ")}";
    }
}
