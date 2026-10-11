package com.squareup.okhttp;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Network;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.AuthenticatorAdapter;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.RouteException;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okio.BufferedSink;
import okio.BufferedSource;

/* loaded from: classes9.dex */
public class OkHttpClient implements Cloneable {

    /* renamed from: Q */
    public static final List<Protocol> f63571Q = Util.immutableList(Protocol.HTTP_2, Protocol.SPDY_3, Protocol.HTTP_1_1);

    /* renamed from: Z */
    public static final List<ConnectionSpec> f63572Z = Util.immutableList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT);

    /* renamed from: k0 */
    public static SSLSocketFactory f63573k0;

    /* renamed from: J */
    public int f63574J;

    /* renamed from: O */
    public int f63575O;

    /* renamed from: e */
    public final RouteDatabase f63576e;

    /* renamed from: f */
    public Dispatcher f63577f;

    /* renamed from: g */
    public Proxy f63578g;

    /* renamed from: h */
    public List<Protocol> f63579h;

    /* renamed from: i */
    public List<ConnectionSpec> f63580i;

    /* renamed from: j */
    public final List<Interceptor> f63581j;

    /* renamed from: k */
    public final List<Interceptor> f63582k;

    /* renamed from: l */
    public ProxySelector f63583l;

    /* renamed from: m */
    public CookieHandler f63584m;

    /* renamed from: n */
    public InternalCache f63585n;

    /* renamed from: o */
    public Cache f63586o;

    /* renamed from: p */
    public SocketFactory f63587p;

    /* renamed from: q */
    public SSLSocketFactory f63588q;

    /* renamed from: r */
    public HostnameVerifier f63589r;

    /* renamed from: s */
    public CertificatePinner f63590s;

    /* renamed from: t */
    public Authenticator f63591t;

    /* renamed from: u */
    public ConnectionPool f63592u;

    /* renamed from: v */
    public Network f63593v;

    /* renamed from: w */
    public boolean f63594w;

    /* renamed from: x */
    public boolean f63595x;

    /* renamed from: y */
    public boolean f63596y;

    /* renamed from: z */
    public int f63597z;

    /* renamed from: com.squareup.okhttp.OkHttpClient$a */
    /* loaded from: classes9.dex */
    public static class C13156a extends Internal {
        @Override // com.squareup.okhttp.internal.Internal
        public void addLenient(Headers.Builder builder, String str) {
            builder.m52520b(str);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void apply(ConnectionSpec connectionSpec, SSLSocket sSLSocket, boolean z) {
            connectionSpec.m52504c(sSLSocket, z);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public Connection callEngineGetConnection(Call call) {
            return call.f63474e.getConnection();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void callEngineReleaseConnection(Call call) throws IOException {
            call.f63474e.releaseConnection();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void callEnqueue(Call call, Callback callback, boolean z) {
            call.m52459d(callback, z);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public boolean clearOwner(Connection connection) {
            return connection.m52472a();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void closeIfOwnedBy(Connection connection, Object obj) throws IOException {
            connection.m52473b(obj);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void connectAndSetOwner(OkHttpClient okHttpClient, Connection connection, HttpEngine httpEngine, Request request) throws RouteException {
            connection.m52475d(okHttpClient, httpEngine, request);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public BufferedSink connectionRawSink(Connection connection) {
            return connection.m52485n();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public BufferedSource connectionRawSource(Connection connection) {
            return connection.m52486o();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void connectionSetOwner(Connection connection, Object obj) {
            connection.m52489r(obj);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public InternalCache internalCache(OkHttpClient okHttpClient) {
            return okHttpClient.m52565e();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public boolean isReadable(Connection connection) {
            return connection.m52482k();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public Network network(OkHttpClient okHttpClient) {
            return okHttpClient.f63593v;
        }

        @Override // com.squareup.okhttp.internal.Internal
        public Transport newTransport(Connection connection, HttpEngine httpEngine) throws IOException {
            return connection.m52484m(httpEngine);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void recycle(ConnectionPool connectionPool, Connection connection) {
            connectionPool.m52496e(connection);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public int recycleCount(Connection connection) {
            return connection.m52487p();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public RouteDatabase routeDatabase(OkHttpClient okHttpClient) {
            return okHttpClient.m52566f();
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void setCache(OkHttpClient okHttpClient, InternalCache internalCache) {
            okHttpClient.m52567g(internalCache);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void setNetwork(OkHttpClient okHttpClient, Network network) {
            okHttpClient.f63593v = network;
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void setOwner(Connection connection, HttpEngine httpEngine) {
            connection.m52489r(httpEngine);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void setProtocol(Connection connection, Protocol protocol) {
            connection.m52490s(protocol);
        }

        @Override // com.squareup.okhttp.internal.Internal
        public void addLenient(Headers.Builder builder, String str, String str2) {
            builder.m52521c(str, str2);
        }
    }

    static {
        Internal.instance = new C13156a();
    }

    public OkHttpClient() {
        this.f63581j = new ArrayList();
        this.f63582k = new ArrayList();
        this.f63594w = true;
        this.f63595x = true;
        this.f63596y = true;
        this.f63576e = new RouteDatabase();
        this.f63577f = new Dispatcher();
    }

    /* renamed from: c */
    public OkHttpClient m52563c() {
        OkHttpClient okHttpClient = new OkHttpClient(this);
        if (okHttpClient.f63583l == null) {
            okHttpClient.f63583l = ProxySelector.getDefault();
        }
        if (okHttpClient.f63584m == null) {
            okHttpClient.f63584m = CookieHandler.getDefault();
        }
        if (okHttpClient.f63587p == null) {
            okHttpClient.f63587p = SocketFactory.getDefault();
        }
        if (okHttpClient.f63588q == null) {
            okHttpClient.f63588q = m52564d();
        }
        if (okHttpClient.f63589r == null) {
            okHttpClient.f63589r = OkHostnameVerifier.INSTANCE;
        }
        if (okHttpClient.f63590s == null) {
            okHttpClient.f63590s = CertificatePinner.DEFAULT;
        }
        if (okHttpClient.f63591t == null) {
            okHttpClient.f63591t = AuthenticatorAdapter.INSTANCE;
        }
        if (okHttpClient.f63592u == null) {
            okHttpClient.f63592u = ConnectionPool.getDefault();
        }
        if (okHttpClient.f63579h == null) {
            okHttpClient.f63579h = f63571Q;
        }
        if (okHttpClient.f63580i == null) {
            okHttpClient.f63580i = f63572Z;
        }
        if (okHttpClient.f63593v == null) {
            okHttpClient.f63593v = Network.DEFAULT;
        }
        return okHttpClient;
    }

    public OkHttpClient cancel(Object obj) {
        getDispatcher().cancel(obj);
        return this;
    }

    /* renamed from: d */
    public final synchronized SSLSocketFactory m52564d() {
        if (f63573k0 == null) {
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, null, null);
                f63573k0 = sSLContext.getSocketFactory();
            } catch (GeneralSecurityException unused) {
                throw new AssertionError();
            }
        }
        return f63573k0;
    }

    /* renamed from: e */
    public InternalCache m52565e() {
        return this.f63585n;
    }

    /* renamed from: f */
    public RouteDatabase m52566f() {
        return this.f63576e;
    }

    /* renamed from: g */
    public void m52567g(InternalCache internalCache) {
        this.f63585n = internalCache;
        this.f63586o = null;
    }

    public Authenticator getAuthenticator() {
        return this.f63591t;
    }

    public Cache getCache() {
        return this.f63586o;
    }

    public CertificatePinner getCertificatePinner() {
        return this.f63590s;
    }

    public int getConnectTimeout() {
        return this.f63597z;
    }

    public ConnectionPool getConnectionPool() {
        return this.f63592u;
    }

    public List<ConnectionSpec> getConnectionSpecs() {
        return this.f63580i;
    }

    public CookieHandler getCookieHandler() {
        return this.f63584m;
    }

    public Dispatcher getDispatcher() {
        return this.f63577f;
    }

    public boolean getFollowRedirects() {
        return this.f63595x;
    }

    public boolean getFollowSslRedirects() {
        return this.f63594w;
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.f63589r;
    }

    public List<Protocol> getProtocols() {
        return this.f63579h;
    }

    public Proxy getProxy() {
        return this.f63578g;
    }

    public ProxySelector getProxySelector() {
        return this.f63583l;
    }

    public int getReadTimeout() {
        return this.f63574J;
    }

    public boolean getRetryOnConnectionFailure() {
        return this.f63596y;
    }

    public SocketFactory getSocketFactory() {
        return this.f63587p;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.f63588q;
    }

    public int getWriteTimeout() {
        return this.f63575O;
    }

    public List<Interceptor> interceptors() {
        return this.f63581j;
    }

    public List<Interceptor> networkInterceptors() {
        return this.f63582k;
    }

    public Call newCall(Request request) {
        return new Call(this, request);
    }

    public OkHttpClient setAuthenticator(Authenticator authenticator) {
        this.f63591t = authenticator;
        return this;
    }

    public OkHttpClient setCache(Cache cache) {
        this.f63586o = cache;
        this.f63585n = null;
        return this;
    }

    public OkHttpClient setCertificatePinner(CertificatePinner certificatePinner) {
        this.f63590s = certificatePinner;
        return this;
    }

    public void setConnectTimeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("Timeout too large.");
        }
        if (millis == 0 && j > 0) {
            throw new IllegalArgumentException("Timeout too small.");
        }
        this.f63597z = (int) millis;
    }

    public OkHttpClient setConnectionPool(ConnectionPool connectionPool) {
        this.f63592u = connectionPool;
        return this;
    }

    public OkHttpClient setConnectionSpecs(List<ConnectionSpec> list) {
        this.f63580i = Util.immutableList(list);
        return this;
    }

    public OkHttpClient setCookieHandler(CookieHandler cookieHandler) {
        this.f63584m = cookieHandler;
        return this;
    }

    public OkHttpClient setDispatcher(Dispatcher dispatcher) {
        if (dispatcher == null) {
            throw new IllegalArgumentException("dispatcher == null");
        }
        this.f63577f = dispatcher;
        return this;
    }

    public void setFollowRedirects(boolean z) {
        this.f63595x = z;
    }

    public OkHttpClient setFollowSslRedirects(boolean z) {
        this.f63594w = z;
        return this;
    }

    public OkHttpClient setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f63589r = hostnameVerifier;
        return this;
    }

    public OkHttpClient setProtocols(List<Protocol> list) {
        List immutableList = Util.immutableList(list);
        if (!immutableList.contains(Protocol.HTTP_1_1)) {
            throw new IllegalArgumentException("protocols doesn't contain http/1.1: " + immutableList);
        }
        if (immutableList.contains(Protocol.HTTP_1_0)) {
            throw new IllegalArgumentException("protocols must not contain http/1.0: " + immutableList);
        }
        if (immutableList.contains(null)) {
            throw new IllegalArgumentException("protocols must not contain null");
        }
        this.f63579h = Util.immutableList(immutableList);
        return this;
    }

    public OkHttpClient setProxy(Proxy proxy) {
        this.f63578g = proxy;
        return this;
    }

    public OkHttpClient setProxySelector(ProxySelector proxySelector) {
        this.f63583l = proxySelector;
        return this;
    }

    public void setReadTimeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("Timeout too large.");
        }
        if (millis == 0 && j > 0) {
            throw new IllegalArgumentException("Timeout too small.");
        }
        this.f63574J = (int) millis;
    }

    public void setRetryOnConnectionFailure(boolean z) {
        this.f63596y = z;
    }

    public OkHttpClient setSocketFactory(SocketFactory socketFactory) {
        this.f63587p = socketFactory;
        return this;
    }

    public OkHttpClient setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f63588q = sSLSocketFactory;
        return this;
    }

    public void setWriteTimeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0");
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("Timeout too large.");
        }
        if (millis == 0 && j > 0) {
            throw new IllegalArgumentException("Timeout too small.");
        }
        this.f63575O = (int) millis;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public OkHttpClient m72425clone() {
        return new OkHttpClient(this);
    }

    public OkHttpClient(OkHttpClient okHttpClient) {
        ArrayList arrayList = new ArrayList();
        this.f63581j = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f63582k = arrayList2;
        this.f63594w = true;
        this.f63595x = true;
        this.f63596y = true;
        this.f63576e = okHttpClient.f63576e;
        this.f63577f = okHttpClient.f63577f;
        this.f63578g = okHttpClient.f63578g;
        this.f63579h = okHttpClient.f63579h;
        this.f63580i = okHttpClient.f63580i;
        arrayList.addAll(okHttpClient.f63581j);
        arrayList2.addAll(okHttpClient.f63582k);
        this.f63583l = okHttpClient.f63583l;
        this.f63584m = okHttpClient.f63584m;
        Cache cache = okHttpClient.f63586o;
        this.f63586o = cache;
        this.f63585n = cache != null ? cache.f63417a : okHttpClient.f63585n;
        this.f63587p = okHttpClient.f63587p;
        this.f63588q = okHttpClient.f63588q;
        this.f63589r = okHttpClient.f63589r;
        this.f63590s = okHttpClient.f63590s;
        this.f63591t = okHttpClient.f63591t;
        this.f63592u = okHttpClient.f63592u;
        this.f63593v = okHttpClient.f63593v;
        this.f63594w = okHttpClient.f63594w;
        this.f63595x = okHttpClient.f63595x;
        this.f63596y = okHttpClient.f63596y;
        this.f63597z = okHttpClient.f63597z;
        this.f63574J = okHttpClient.f63574J;
        this.f63575O = okHttpClient.f63575O;
    }
}
