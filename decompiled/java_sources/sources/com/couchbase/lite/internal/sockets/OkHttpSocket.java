package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.sockets.CloseStatus;
import com.couchbase.lite.internal.sockets.OkHttpSocket;
import com.couchbase.lite.internal.sockets.SocketFromRemote;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.google.common.net.HttpHeaders;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sunia.HTREnginev2.cyi;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.StringTokenizer;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/* loaded from: classes4.dex */
public final class OkHttpSocket extends WebSocketListener implements SocketToRemote {

    @NonNull
    private static final OkHttpClient BASE_HTTP_CLIENT;
    private static final LogDomain LOG_DOMAIN = LogDomain.NETWORK;

    @NonNull
    private static final WebSocket NULL_WS;
    private final SocketFactory socketFactory;
    private final AtomicReference<SocketFromRemote> toCore;
    private final AtomicReference<WebSocket> toRemote;

    /* loaded from: classes4.dex */
    public interface SocketFactory {
        @NonNull
        WebSocket create(@NonNull OkHttpClient okHttpClient, @NonNull Request request, @NonNull WebSocketListener webSocketListener);
    }

    static {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        BASE_HTTP_CLIENT = builder.connectTimeout(0L, timeUnit).readTimeout(0L, timeUnit).writeTimeout(0L, timeUnit).followRedirects(true).followSslRedirects(true).build();
        NULL_WS = new WebSocket() { // from class: com.couchbase.lite.internal.sockets.OkHttpSocket.1
            @Override // okhttp3.WebSocket
            public void cancel() {
                throw new UnsupportedOperationException();
            }

            @Override // okhttp3.WebSocket
            public boolean close(int i, @Nullable String str) {
                throw new UnsupportedOperationException();
            }

            @Override // okhttp3.WebSocket
            public long queueSize() {
                throw new UnsupportedOperationException();
            }

            @Override // okhttp3.WebSocket
            @NonNull
            /* renamed from: request */
            public Request getOriginalRequest() {
                throw new UnsupportedOperationException();
            }

            @Override // okhttp3.WebSocket
            public boolean send(@NonNull String str) {
                throw new UnsupportedOperationException();
            }

            @Override // okhttp3.WebSocket
            public boolean send(@NonNull ByteString byteString) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public OkHttpSocket() {
        this(new SocketFactory() { // from class: com.couchbase.lite.internal.sockets.a
            @Override // com.couchbase.lite.internal.sockets.OkHttpSocket.SocketFactory
            public final WebSocket create(OkHttpClient okHttpClient, Request request, WebSocketListener webSocketListener) {
                return okHttpClient.newWebSocket(request, webSocketListener);
            }
        });
    }

    private void closeSocket(@Nullable WebSocket webSocket, @NonNull InterfaceC2217Fn.Consumer<SocketFromRemote> consumer) {
        WebSocket webSocket2;
        if (!cyi.m53538a(this.toRemote, webSocket, null) && (webSocket2 = this.toRemote.get()) != null) {
            Log.m9911w(LOG_DOMAIN, "Ignoring attempt to close the wrong socket: %s, %s", webSocket, webSocket2);
            return;
        }
        SocketFromRemote andSet = this.toCore.getAndSet(null);
        if (andSet == null || SocketFromRemote.Constants.NULL.equals(andSet)) {
            return;
        }
        consumer.accept(andSet);
    }

    @Nullable
    private SocketFromRemote getOpenCore() {
        SocketFromRemote socketFromRemote = this.toCore.get();
        if (SocketFromRemote.Constants.NULL.equals(socketFromRemote)) {
            throw new CouchbaseLiteError("Attempt to use socket before initialization");
        }
        return socketFromRemote;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cancelRemote$2(WebSocket webSocket, SocketFromRemote socketFromRemote) {
        if (webSocket != null) {
            webSocket.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$closeRemote$1(CloseStatus closeStatus, WebSocket webSocket) {
        return Boolean.valueOf(webSocket.close(closeStatus.code, closeStatus.message));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onClosed$6(int i, String str, SocketFromRemote socketFromRemote) {
        socketFromRemote.remoteClosed(new CloseStatus(6, i, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onFailure$8(Response response, SocketFromRemote socketFromRemote) {
        socketFromRemote.remoteClosed(new CloseStatus(6, response.code(), response.message()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onMessage$3(String str, SocketFromRemote socketFromRemote) {
        socketFromRemote.remoteWrites(str.getBytes(StandardCharsets.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onMessage$4(ByteString byteString, SocketFromRemote socketFromRemote) {
        socketFromRemote.remoteWrites(byteString.toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$writeToRemote$0(byte[] bArr, WebSocket webSocket) {
        return Boolean.valueOf(webSocket.send(ByteString.m65003of(bArr, 0, bArr.length)));
    }

    @NonNull
    private Request newRequest(@NonNull URI uri, @Nullable Map<String, Object> map) {
        Request.Builder builder = new Request.Builder();
        builder.url(uri.toString());
        String host = uri.getHost();
        if (uri.getPort() >= 0) {
            host = host + ":" + uri.getPort();
        }
        builder.header("Host", host);
        if (map != null) {
            Object obj = map.get(C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS);
            if (obj instanceof Map) {
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    builder.header(entry.getKey().toString(), entry.getValue().toString());
                }
            }
            Object obj2 = map.get(C4Replicator.SOCKET_OPTION_WS_PROTOCOLS);
            if (obj2 instanceof String) {
                builder.header(HttpHeaders.SEC_WEBSOCKET_PROTOCOL, (String) obj2);
            }
        }
        return builder.build();
    }

    @NonNull
    public static List<Cookie> parseCookies(@NonNull HttpUrl httpUrl, @NonNull String str) {
        ArrayList arrayList = new ArrayList();
        StringTokenizer stringTokenizer = new StringTokenizer(str, AndroidTreeView.f47214k);
        while (stringTokenizer.hasMoreTokens()) {
            Cookie parse = Cookie.parse(httpUrl, stringTokenizer.nextToken().trim());
            if (parse != null) {
                arrayList.add(parse);
            }
        }
        return arrayList;
    }

    private boolean verifyRemote(@Nullable WebSocket webSocket) {
        WebSocket webSocket2 = this.toRemote.get();
        if (Objects.equals(webSocket, webSocket2)) {
            return true;
        }
        if (webSocket2 == null) {
            Log.m9899d(LOG_DOMAIN, "Ignoring operation on closed socket: %s", webSocket);
            return false;
        }
        Log.m9911w(LOG_DOMAIN, "Ignoring operation on the wrong socket(%s): %s", webSocket2, webSocket);
        return false;
    }

    private void withCore(@Nullable WebSocket webSocket, @NonNull InterfaceC2217Fn.Consumer<SocketFromRemote> consumer) {
        SocketFromRemote openCore = getOpenCore();
        if (openCore == null || !verifyRemote(webSocket)) {
            return;
        }
        consumer.accept(openCore);
    }

    private boolean withRemote(@NonNull InterfaceC2217Fn.Function<WebSocket, Boolean> function) {
        Boolean apply;
        WebSocket webSocket = this.toRemote.get();
        return (webSocket == null || (apply = function.apply(webSocket)) == null || !apply.booleanValue()) ? false : true;
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToRemote
    public void cancelRemote() {
        Log.m9899d(LOG_DOMAIN, "%s.cancel", this);
        final WebSocket webSocket = this.toRemote.get();
        closeSocket(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.kfk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                OkHttpSocket.lambda$cancelRemote$2(WebSocket.this, (SocketFromRemote) obj);
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        CloseStatus closeStatus = new CloseStatus(6, 1001, "Closed by client");
        SocketFromRemote andSet = this.toCore.getAndSet(null);
        WebSocket andSet2 = this.toRemote.getAndSet(null);
        if (andSet2 != null) {
            andSet2.close(closeStatus.code, closeStatus.message);
        }
        if (andSet == null || SocketFromRemote.Constants.NULL.equals(andSet)) {
            return;
        }
        andSet.remoteClosed(closeStatus);
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToRemote
    public boolean closeRemote(@NonNull final CloseStatus closeStatus) {
        Log.m9899d(LOG_DOMAIN, "%s.close: %s", this, closeStatus);
        getOpenCore();
        return withRemote(new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.ifk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
            public final Object apply(Object obj) {
                Boolean lambda$closeRemote$1;
                lambda$closeRemote$1 = OkHttpSocket.lambda$closeRemote$1(CloseStatus.this, (WebSocket) obj);
                return lambda$closeRemote$1;
            }
        });
    }

    @Nullable
    @VisibleForTesting
    public SocketFromRemote getCore() {
        return this.toCore.get();
    }

    @Nullable
    @VisibleForTesting
    public WebSocket getRemote() {
        return this.toRemote.get();
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToRemote
    public void init(@NonNull SocketFromRemote socketFromRemote) {
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "%s.init: %s", this, socketFromRemote);
        if (cyi.m53538a(this.toCore, SocketFromRemote.Constants.NULL, socketFromRemote)) {
            return;
        }
        SocketFromRemote socketFromRemote2 = this.toCore.get();
        if (socketFromRemote2 == null) {
            Log.m9911w(logDomain, "Ignoring attempt to initialize a closed socket socket: %s", this);
            return;
        }
        if (socketFromRemote.equals(socketFromRemote2)) {
            Log.m9911w(logDomain, "Ignoring socket re-initialization: %s", this);
            return;
        }
        throw new CBLSocketException(5, 16, "Attempt to re-initialize socket(" + socketFromRemote2 + "): " + socketFromRemote);
    }

    @Override // okhttp3.WebSocketListener
    public void onClosed(@NonNull WebSocket webSocket, final int i, @NonNull final String str) {
        Log.m9899d(LOG_DOMAIN, "%s.onClosed(%d): '%s'", this, Integer.valueOf(i), str);
        getOpenCore();
        closeSocket(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.dfk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                OkHttpSocket.lambda$onClosed$6(i, str, (SocketFromRemote) obj);
            }
        });
    }

    @Override // okhttp3.WebSocketListener
    public void onClosing(@NonNull WebSocket webSocket, int i, @NonNull String str) {
        Log.m9899d(LOG_DOMAIN, "%s.onClosing(%d): '%s'", this, Integer.valueOf(i), str);
        final CloseStatus closeStatus = new CloseStatus(i, str);
        withCore(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.hfk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                ((SocketFromRemote) obj).remoteRequestsClose(CloseStatus.this);
            }
        });
    }

    @Override // okhttp3.WebSocketListener
    public void onFailure(@NonNull WebSocket webSocket, @NonNull final Throwable th, @Nullable final Response response) {
        Log.m9898d(LOG_DOMAIN, "%s.onFailure: %s", th, this, response);
        getOpenCore();
        if (response == null) {
            closeSocket(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.efk
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
                public final void accept(Object obj) {
                    ((SocketFromRemote) obj).remoteFailed(th);
                }
            });
        } else {
            closeSocket(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.ffk
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
                public final void accept(Object obj) {
                    OkHttpSocket.lambda$onFailure$8(Response.this, (SocketFromRemote) obj);
                }
            });
        }
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(@NonNull WebSocket webSocket, @NonNull final String str) {
        int length = str == null ? -1 : str.length();
        Log.m9899d(LOG_DOMAIN, "%s.onText(%d)", this, Integer.valueOf(length));
        if (length <= 0) {
            return;
        }
        withCore(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.jfk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                OkHttpSocket.lambda$onMessage$3(str, (SocketFromRemote) obj);
            }
        });
    }

    @Override // okhttp3.WebSocketListener
    public void onOpen(@NonNull WebSocket webSocket, @NonNull Response response) {
        HashMap hashMap;
        Log.m9899d(LOG_DOMAIN, "%s.onOpen: %s", this, response);
        SocketFromRemote openCore = getOpenCore();
        if (openCore == null || !verifyRemote(webSocket)) {
            return;
        }
        Headers headers = response.headers();
        if (headers == null || headers.size() <= 0) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            for (int i = 0; i < headers.size(); i++) {
                hashMap.put(headers.name(i), headers.value(i));
            }
        }
        openCore.remoteOpened(response.code(), hashMap);
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToRemote
    public boolean openRemote(@NonNull URI uri, @Nullable Map<String, Object> map) {
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "%s.open: %s", this, uri);
        SocketFromRemote openCore = getOpenCore();
        if (openCore == null) {
            return false;
        }
        AtomicReference<WebSocket> atomicReference = this.toRemote;
        WebSocket webSocket = NULL_WS;
        if (!cyi.m53538a(atomicReference, null, webSocket)) {
            Log.m9899d(logDomain, "Attempt to re-open open socket: %s", this);
            return false;
        }
        OkHttpClient.Builder newBuilder = BASE_HTTP_CLIENT.newBuilder();
        openCore.setupRemoteSocketFactory(newBuilder);
        if (cyi.m53538a(this.toRemote, webSocket, this.socketFactory.create(newBuilder.build(), newRequest(uri, map), this))) {
            return true;
        }
        throw new CBLSocketException(5, 13, "Failed setting remote web socket");
    }

    @NonNull
    public String toString() {
        return "OkHttpSocket" + ClassUtils.objId(this);
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToRemote
    public boolean writeToRemote(@NonNull final byte[] bArr) {
        int length = bArr == null ? -1 : bArr.length;
        Log.m9899d(LOG_DOMAIN, "%s.write(%d)", this, Integer.valueOf(length));
        if (length <= 0) {
            return true;
        }
        getOpenCore();
        return withRemote(new InterfaceC2217Fn.Function() { // from class: com.sunia.HTREnginev2.gfk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Function
            public final Object apply(Object obj) {
                Boolean lambda$writeToRemote$0;
                lambda$writeToRemote$0 = OkHttpSocket.lambda$writeToRemote$0(bArr, (WebSocket) obj);
                return lambda$writeToRemote$0;
            }
        });
    }

    @VisibleForTesting
    public OkHttpSocket(@NonNull SocketFactory socketFactory) {
        this.toRemote = new AtomicReference<>();
        this.toCore = new AtomicReference<>(SocketFromRemote.Constants.NULL);
        this.socketFactory = socketFactory;
    }

    @Override // okhttp3.WebSocketListener
    public void onMessage(@NonNull WebSocket webSocket, @NonNull final ByteString byteString) {
        int size = byteString == null ? -1 : byteString.size();
        Log.m9899d(LOG_DOMAIN, "%s.onBytes(%d)", this, Integer.valueOf(size));
        if (size <= 0) {
            return;
        }
        withCore(webSocket, new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.lfk
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                OkHttpSocket.lambda$onMessage$4(ByteString.this, (SocketFromRemote) obj);
            }
        });
    }
}
