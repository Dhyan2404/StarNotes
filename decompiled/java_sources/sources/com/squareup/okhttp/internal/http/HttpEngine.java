package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.Version;
import com.squareup.okhttp.internal.http.CacheStrategy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* loaded from: classes9.dex */
public final class HttpEngine {
    public static final int MAX_FOLLOW_UPS = 20;

    /* renamed from: t */
    public static final ResponseBody f63778t = new C13183a();

    /* renamed from: a */
    public final OkHttpClient f63779a;

    /* renamed from: b */
    public Connection f63780b;
    public final boolean bufferRequestBody;

    /* renamed from: c */
    public Address f63781c;

    /* renamed from: d */
    public RouteSelector f63782d;

    /* renamed from: e */
    public Route f63783e;

    /* renamed from: f */
    public final Response f63784f;

    /* renamed from: g */
    public Transport f63785g;

    /* renamed from: h */
    public long f63786h = -1;

    /* renamed from: i */
    public boolean f63787i;

    /* renamed from: j */
    public final Request f63788j;

    /* renamed from: k */
    public Request f63789k;

    /* renamed from: l */
    public Response f63790l;

    /* renamed from: m */
    public Response f63791m;

    /* renamed from: n */
    public Sink f63792n;

    /* renamed from: o */
    public BufferedSink f63793o;

    /* renamed from: p */
    public final boolean f63794p;

    /* renamed from: q */
    public final boolean f63795q;

    /* renamed from: r */
    public CacheRequest f63796r;

    /* renamed from: s */
    public CacheStrategy f63797s;

    /* renamed from: com.squareup.okhttp.internal.http.HttpEngine$a */
    /* loaded from: classes9.dex */
    public static class C13183a extends ResponseBody {
        @Override // com.squareup.okhttp.ResponseBody
        public long contentLength() {
            return 0L;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public MediaType contentType() {
            return null;
        }

        @Override // com.squareup.okhttp.ResponseBody
        public BufferedSource source() {
            return new Buffer();
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpEngine$b */
    /* loaded from: classes9.dex */
    public class C13184b implements Source {

        /* renamed from: e */
        public boolean f63798e;

        /* renamed from: f */
        public final /* synthetic */ BufferedSource f63799f;

        /* renamed from: g */
        public final /* synthetic */ CacheRequest f63800g;

        /* renamed from: h */
        public final /* synthetic */ BufferedSink f63801h;

        public C13184b(BufferedSource bufferedSource, CacheRequest cacheRequest, BufferedSink bufferedSink) {
            this.f63799f = bufferedSource;
            this.f63800g = cacheRequest;
            this.f63801h = bufferedSink;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f63798e && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.f63798e = true;
                this.f63800g.abort();
            }
            this.f63799f.close();
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) throws IOException {
            try {
                long read = this.f63799f.read(buffer, j);
                if (read != -1) {
                    buffer.copyTo(this.f63801h.getBufferField(), buffer.size() - read, read);
                    this.f63801h.emitCompleteSegments();
                    return read;
                }
                if (!this.f63798e) {
                    this.f63798e = true;
                    this.f63801h.close();
                }
                return -1L;
            } catch (IOException e) {
                if (!this.f63798e) {
                    this.f63798e = true;
                    this.f63800g.abort();
                }
                throw e;
            }
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public Timeout getTimeout() {
            return this.f63799f.getTimeout();
        }
    }

    /* renamed from: com.squareup.okhttp.internal.http.HttpEngine$c */
    /* loaded from: classes9.dex */
    public class C13185c implements Interceptor.Chain {

        /* renamed from: a */
        public final int f63803a;

        /* renamed from: b */
        public final Request f63804b;

        /* renamed from: c */
        public int f63805c;

        public C13185c(int i, Request request) {
            this.f63803a = i;
            this.f63804b = request;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Connection connection() {
            return HttpEngine.this.f63780b;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Response proceed(Request request) throws IOException {
            this.f63805c++;
            if (this.f63803a > 0) {
                Interceptor interceptor = HttpEngine.this.f63779a.networkInterceptors().get(this.f63803a - 1);
                Address address = connection().getRoute().getAddress();
                if (!request.url().getHost().equals(address.getUriHost()) || Util.getEffectivePort(request.url()) != address.getUriPort()) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must retain the same host and port");
                }
                if (this.f63805c > 1) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must call proceed() exactly once");
                }
            }
            if (this.f63803a < HttpEngine.this.f63779a.networkInterceptors().size()) {
                C13185c c13185c = new C13185c(this.f63803a + 1, request);
                Interceptor interceptor2 = HttpEngine.this.f63779a.networkInterceptors().get(this.f63803a);
                Response intercept = interceptor2.intercept(c13185c);
                if (c13185c.f63805c == 1) {
                    return intercept;
                }
                throw new IllegalStateException("network interceptor " + interceptor2 + " must call proceed() exactly once");
            }
            HttpEngine.this.f63785g.writeRequestHeaders(request);
            HttpEngine.this.f63789k = request;
            if (HttpEngine.this.m52695p() && request.body() != null) {
                BufferedSink buffer = Okio.buffer(HttpEngine.this.f63785g.createRequestBody(request, request.body().contentLength()));
                request.body().writeTo(buffer);
                buffer.close();
            }
            Response m52696q = HttpEngine.this.m52696q();
            int code = m52696q.code();
            if ((code != 204 && code != 205) || m52696q.body().contentLength() <= 0) {
                return m52696q;
            }
            throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + m52696q.body().contentLength());
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Request request() {
            return this.f63804b;
        }
    }

    public HttpEngine(OkHttpClient okHttpClient, Request request, boolean z, boolean z2, boolean z3, Connection connection, RouteSelector routeSelector, RetryableSink retryableSink, Response response) {
        this.f63779a = okHttpClient;
        this.f63788j = request;
        this.bufferRequestBody = z;
        this.f63794p = z2;
        this.f63795q = z3;
        this.f63780b = connection;
        this.f63782d = routeSelector;
        this.f63792n = retryableSink;
        this.f63784f = response;
        if (connection == null) {
            this.f63783e = null;
        } else {
            Internal.instance.setOwner(connection, this);
            this.f63783e = connection.getRoute();
        }
    }

    /* renamed from: f */
    public static Headers m52682f(Headers headers, Headers headers2) throws IOException {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            if ((!"Warning".equalsIgnoreCase(name) || !value.startsWith("1")) && (!OkHeaders.m52700b(name) || headers2.get(name) == null)) {
                builder.add(name, value);
            }
        }
        int size2 = headers2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            String name2 = headers2.name(i2);
            if (!"Content-Length".equalsIgnoreCase(name2) && OkHeaders.m52700b(name2)) {
                builder.add(name2, headers2.value(i2));
            }
        }
        return builder.build();
    }

    public static boolean hasBody(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && OkHeaders.contentLength(response) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    public static String hostHeader(URL url) {
        if (Util.getEffectivePort(url) == Util.getDefaultPort(url.getProtocol())) {
            return url.getHost();
        }
        return url.getHost() + ":" + url.getPort();
    }

    /* renamed from: i */
    public static Address m52683i(OkHttpClient okHttpClient, Request request) throws RequestException {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        String host = request.url().getHost();
        if (host == null || host.length() == 0) {
            throw new RequestException(new UnknownHostException(request.url().toString()));
        }
        if (request.isHttps()) {
            sSLSocketFactory = okHttpClient.getSslSocketFactory();
            hostnameVerifier = okHttpClient.getHostnameVerifier();
            certificatePinner = okHttpClient.getCertificatePinner();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(host, Util.getEffectivePort(request.url()), okHttpClient.getSocketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, okHttpClient.getAuthenticator(), okHttpClient.getProxy(), okHttpClient.getProtocols(), okHttpClient.getConnectionSpecs(), okHttpClient.getProxySelector());
    }

    /* renamed from: r */
    public static Response m52684r(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    /* renamed from: t */
    public static boolean m52685t(Response response, Response response2) {
        Date date;
        if (response2.code() == 304) {
            return true;
        }
        Date date2 = response.headers().getDate("Last-Modified");
        return (date2 == null || (date = response2.headers().getDate("Last-Modified")) == null || date.getTime() >= date2.getTime()) ? false : true;
    }

    public Connection close() {
        BufferedSink bufferedSink = this.f63793o;
        if (bufferedSink != null) {
            Util.closeQuietly(bufferedSink);
        } else {
            Sink sink = this.f63792n;
            if (sink != null) {
                Util.closeQuietly(sink);
            }
        }
        Response response = this.f63791m;
        if (response == null) {
            Connection connection = this.f63780b;
            if (connection != null) {
                Util.closeQuietly(connection.getSocket());
            }
            this.f63780b = null;
            return null;
        }
        Util.closeQuietly(response.body());
        Transport transport = this.f63785g;
        if (transport != null && this.f63780b != null && !transport.canReuseConnection()) {
            Util.closeQuietly(this.f63780b.getSocket());
            this.f63780b = null;
            return null;
        }
        Connection connection2 = this.f63780b;
        if (connection2 != null && !Internal.instance.clearOwner(connection2)) {
            this.f63780b = null;
        }
        Connection connection3 = this.f63780b;
        this.f63780b = null;
        return connection3;
    }

    public void disconnect() {
        Transport transport = this.f63785g;
        if (transport != null) {
            try {
                transport.disconnect(this);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: e */
    public final Response m52686e(CacheRequest cacheRequest, Response response) throws IOException {
        Sink body;
        return (cacheRequest == null || (body = cacheRequest.body()) == null) ? response : response.newBuilder().body(new RealResponseBody(response.headers(), Okio.buffer(new C13184b(response.body().source(), cacheRequest, Okio.buffer(body))))).build();
    }

    public Request followUpRequest() throws IOException {
        String header;
        if (this.f63791m == null) {
            throw new IllegalStateException();
        }
        Proxy proxy = getRoute() != null ? getRoute().getProxy() : this.f63779a.getProxy();
        int code = this.f63791m.code();
        if (code != 307 && code != 308) {
            if (code != 401) {
                if (code != 407) {
                    switch (code) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                } else if (proxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
            }
            return OkHeaders.processAuthHeader(this.f63779a.getAuthenticator(), this.f63791m, proxy);
        }
        if (!this.f63788j.method().equals("GET") && !this.f63788j.method().equals("HEAD")) {
            return null;
        }
        if (!this.f63779a.getFollowRedirects() || (header = this.f63791m.header("Location")) == null) {
            return null;
        }
        URL url = new URL(this.f63788j.url(), header);
        if (!url.getProtocol().equals("https") && !url.getProtocol().equals("http")) {
            return null;
        }
        if (!url.getProtocol().equals(this.f63788j.url().getProtocol()) && !this.f63779a.getFollowSslRedirects()) {
            return null;
        }
        Request.Builder newBuilder = this.f63788j.newBuilder();
        if (HttpMethod.permitsRequestBody(this.f63788j.method())) {
            newBuilder.method("GET", null);
            newBuilder.removeHeader("Transfer-Encoding");
            newBuilder.removeHeader("Content-Length");
            newBuilder.removeHeader("Content-Type");
        }
        if (!sameConnection(url)) {
            newBuilder.removeHeader("Authorization");
        }
        return newBuilder.url(url).build();
    }

    /* renamed from: g */
    public final void m52687g() throws RequestException, RouteException {
        if (this.f63780b != null) {
            throw new IllegalStateException();
        }
        if (this.f63782d == null) {
            Address m52683i = m52683i(this.f63779a, this.f63789k);
            this.f63781c = m52683i;
            try {
                this.f63782d = RouteSelector.get(m52683i, this.f63789k, this.f63779a);
            } catch (IOException e) {
                throw new RequestException(e);
            }
        }
        Connection m52694o = m52694o();
        this.f63780b = m52694o;
        this.f63783e = m52694o.getRoute();
    }

    public BufferedSink getBufferedRequestBody() {
        BufferedSink bufferedSink = this.f63793o;
        if (bufferedSink != null) {
            return bufferedSink;
        }
        Sink requestBody = getRequestBody();
        if (requestBody == null) {
            return null;
        }
        BufferedSink buffer = Okio.buffer(requestBody);
        this.f63793o = buffer;
        return buffer;
    }

    public Connection getConnection() {
        return this.f63780b;
    }

    public Request getRequest() {
        return this.f63788j;
    }

    public Sink getRequestBody() {
        if (this.f63797s != null) {
            return this.f63792n;
        }
        throw new IllegalStateException();
    }

    public Response getResponse() {
        Response response = this.f63791m;
        if (response != null) {
            return response;
        }
        throw new IllegalStateException();
    }

    public Route getRoute() {
        return this.f63783e;
    }

    /* renamed from: h */
    public final void m52688h(RouteSelector routeSelector, IOException iOException) {
        if (Internal.instance.recycleCount(this.f63780b) > 0) {
            return;
        }
        routeSelector.connectFailed(this.f63780b.getRoute(), iOException);
    }

    public boolean hasResponse() {
        return this.f63791m != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        return r1;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.squareup.okhttp.Connection m52689j() throws com.squareup.okhttp.internal.http.RouteException {
        /*
            r4 = this;
            com.squareup.okhttp.OkHttpClient r0 = r4.f63779a
            com.squareup.okhttp.ConnectionPool r0 = r0.getConnectionPool()
        L6:
            com.squareup.okhttp.Address r1 = r4.f63781c
            com.squareup.okhttp.Connection r1 = r0.get(r1)
            if (r1 == 0) goto L2e
            com.squareup.okhttp.Request r2 = r4.f63789k
            java.lang.String r2 = r2.method()
            java.lang.String r3 = "GET"
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L2d
            com.squareup.okhttp.internal.Internal r2 = com.squareup.okhttp.internal.Internal.instance
            boolean r2 = r2.isReadable(r1)
            if (r2 == 0) goto L25
            goto L2d
        L25:
            java.net.Socket r1 = r1.getSocket()
            com.squareup.okhttp.internal.Util.closeQuietly(r1)
            goto L6
        L2d:
            return r1
        L2e:
            com.squareup.okhttp.internal.http.RouteSelector r4 = r4.f63782d     // Catch: java.io.IOException -> L3a
            com.squareup.okhttp.Route r4 = r4.next()     // Catch: java.io.IOException -> L3a
            com.squareup.okhttp.Connection r1 = new com.squareup.okhttp.Connection     // Catch: java.io.IOException -> L3a
            r1.<init>(r0, r4)     // Catch: java.io.IOException -> L3a
            return r1
        L3a:
            r4 = move-exception
            com.squareup.okhttp.internal.http.RouteException r0 = new com.squareup.okhttp.internal.http.RouteException
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.http.HttpEngine.m52689j():com.squareup.okhttp.Connection");
    }

    /* renamed from: k */
    public final boolean m52690k(RouteException routeException) {
        if (!this.f63779a.getRetryOnConnectionFailure()) {
            return false;
        }
        IOException lastConnectException = routeException.getLastConnectException();
        if ((lastConnectException instanceof ProtocolException) || (lastConnectException instanceof InterruptedIOException)) {
            return false;
        }
        return (((lastConnectException instanceof SSLHandshakeException) && (lastConnectException.getCause() instanceof CertificateException)) || (lastConnectException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    /* renamed from: l */
    public final boolean m52691l(IOException iOException) {
        return (!this.f63779a.getRetryOnConnectionFailure() || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) ? false : true;
    }

    /* renamed from: m */
    public final void m52692m() throws IOException {
        InternalCache internalCache = Internal.instance.internalCache(this.f63779a);
        if (internalCache == null) {
            return;
        }
        if (CacheStrategy.isCacheable(this.f63791m, this.f63789k)) {
            this.f63796r = internalCache.put(m52684r(this.f63791m));
        } else if (HttpMethod.invalidatesCache(this.f63789k.method())) {
            try {
                internalCache.remove(this.f63789k);
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: n */
    public final Request m52693n(Request request) throws IOException {
        Request.Builder newBuilder = request.newBuilder();
        if (request.header("Host") == null) {
            newBuilder.header("Host", hostHeader(request.url()));
        }
        Connection connection = this.f63780b;
        if ((connection == null || connection.getProtocol() != Protocol.HTTP_1_0) && request.header("Connection") == null) {
            newBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null) {
            this.f63787i = true;
            newBuilder.header("Accept-Encoding", "gzip");
        }
        CookieHandler cookieHandler = this.f63779a.getCookieHandler();
        if (cookieHandler != null) {
            OkHeaders.addCookies(newBuilder, cookieHandler.get(request.uri(), OkHeaders.toMultimap(newBuilder.build().headers(), null)));
        }
        if (request.header("User-Agent") == null) {
            newBuilder.header("User-Agent", Version.userAgent());
        }
        return newBuilder.build();
    }

    /* renamed from: o */
    public final Connection m52694o() throws RouteException {
        Connection m52689j = m52689j();
        Internal.instance.connectAndSetOwner(this.f63779a, m52689j, this, this.f63789k);
        return m52689j;
    }

    /* renamed from: p */
    public boolean m52695p() {
        return HttpMethod.permitsRequestBody(this.f63788j.method());
    }

    /* renamed from: q */
    public final Response m52696q() throws IOException {
        this.f63785g.finishRequest();
        Response build = this.f63785g.readResponseHeaders().request(this.f63789k).handshake(this.f63780b.getHandshake()).header(OkHeaders.SENT_MILLIS, Long.toString(this.f63786h)).header(OkHeaders.RECEIVED_MILLIS, Long.toString(System.currentTimeMillis())).build();
        if (!this.f63795q) {
            build = build.newBuilder().body(this.f63785g.openResponseBody(build)).build();
        }
        Internal.instance.setProtocol(this.f63780b, build.protocol());
        return build;
    }

    public void readResponse() throws IOException {
        Response m52696q;
        if (this.f63791m != null) {
            return;
        }
        Request request = this.f63789k;
        if (request == null && this.f63790l == null) {
            throw new IllegalStateException("call sendRequest() first!");
        }
        if (request == null) {
            return;
        }
        if (this.f63795q) {
            this.f63785g.writeRequestHeaders(request);
            m52696q = m52696q();
        } else if (this.f63794p) {
            BufferedSink bufferedSink = this.f63793o;
            if (bufferedSink != null && bufferedSink.getBufferField().size() > 0) {
                this.f63793o.emit();
            }
            if (this.f63786h == -1) {
                if (OkHeaders.contentLength(this.f63789k) == -1) {
                    Sink sink = this.f63792n;
                    if (sink instanceof RetryableSink) {
                        this.f63789k = this.f63789k.newBuilder().header("Content-Length", Long.toString(((RetryableSink) sink).contentLength())).build();
                    }
                }
                this.f63785g.writeRequestHeaders(this.f63789k);
            }
            Sink sink2 = this.f63792n;
            if (sink2 != null) {
                BufferedSink bufferedSink2 = this.f63793o;
                if (bufferedSink2 != null) {
                    bufferedSink2.close();
                } else {
                    sink2.close();
                }
                Sink sink3 = this.f63792n;
                if (sink3 instanceof RetryableSink) {
                    this.f63785g.writeRequestBody((RetryableSink) sink3);
                }
            }
            m52696q = m52696q();
        } else {
            m52696q = new C13185c(0, request).proceed(this.f63789k);
        }
        receiveHeaders(m52696q.headers());
        Response response = this.f63790l;
        if (response != null) {
            if (m52685t(response, m52696q)) {
                this.f63791m = this.f63790l.newBuilder().request(this.f63788j).priorResponse(m52684r(this.f63784f)).headers(m52682f(this.f63790l.headers(), m52696q.headers())).cacheResponse(m52684r(this.f63790l)).networkResponse(m52684r(m52696q)).build();
                m52696q.body().close();
                releaseConnection();
                InternalCache internalCache = Internal.instance.internalCache(this.f63779a);
                internalCache.trackConditionalCacheHit();
                internalCache.update(this.f63790l, m52684r(this.f63791m));
                this.f63791m = m52697s(this.f63791m);
                return;
            }
            Util.closeQuietly(this.f63790l.body());
        }
        Response build = m52696q.newBuilder().request(this.f63788j).priorResponse(m52684r(this.f63784f)).cacheResponse(m52684r(this.f63790l)).networkResponse(m52684r(m52696q)).build();
        this.f63791m = build;
        if (hasBody(build)) {
            m52692m();
            this.f63791m = m52697s(m52686e(this.f63796r, this.f63791m));
        }
    }

    public void receiveHeaders(Headers headers) throws IOException {
        CookieHandler cookieHandler = this.f63779a.getCookieHandler();
        if (cookieHandler != null) {
            cookieHandler.put(this.f63788j.uri(), OkHeaders.toMultimap(headers, null));
        }
    }

    public HttpEngine recover(RouteException routeException) {
        RouteSelector routeSelector = this.f63782d;
        if (routeSelector != null && this.f63780b != null) {
            m52688h(routeSelector, routeException.getLastConnectException());
        }
        RouteSelector routeSelector2 = this.f63782d;
        if (routeSelector2 == null && this.f63780b == null) {
            return null;
        }
        if ((routeSelector2 != null && !routeSelector2.hasNext()) || !m52690k(routeException)) {
            return null;
        }
        return new HttpEngine(this.f63779a, this.f63788j, this.bufferRequestBody, this.f63794p, this.f63795q, close(), this.f63782d, (RetryableSink) this.f63792n, this.f63784f);
    }

    public void releaseConnection() throws IOException {
        Transport transport = this.f63785g;
        if (transport != null && this.f63780b != null) {
            transport.releaseConnectionOnIdle();
        }
        this.f63780b = null;
    }

    /* renamed from: s */
    public final Response m52697s(Response response) throws IOException {
        if (!this.f63787i || !"gzip".equalsIgnoreCase(this.f63791m.header("Content-Encoding")) || response.body() == null) {
            return response;
        }
        GzipSource gzipSource = new GzipSource(response.body().source());
        Headers build = response.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build();
        return response.newBuilder().headers(build).body(new RealResponseBody(build, Okio.buffer(gzipSource))).build();
    }

    public boolean sameConnection(URL url) {
        URL url2 = this.f63788j.url();
        return url2.getHost().equals(url.getHost()) && Util.getEffectivePort(url2) == Util.getEffectivePort(url) && url2.getProtocol().equals(url.getProtocol());
    }

    public void sendRequest() throws RequestException, RouteException, IOException {
        if (this.f63797s != null) {
            return;
        }
        if (this.f63785g != null) {
            throw new IllegalStateException();
        }
        Request m52693n = m52693n(this.f63788j);
        InternalCache internalCache = Internal.instance.internalCache(this.f63779a);
        Response response = internalCache != null ? internalCache.get(m52693n) : null;
        CacheStrategy cacheStrategy = new CacheStrategy.Factory(System.currentTimeMillis(), m52693n, response).get();
        this.f63797s = cacheStrategy;
        this.f63789k = cacheStrategy.networkRequest;
        this.f63790l = cacheStrategy.cacheResponse;
        if (internalCache != null) {
            internalCache.trackResponse(cacheStrategy);
        }
        if (response != null && this.f63790l == null) {
            Util.closeQuietly(response.body());
        }
        if (this.f63789k == null) {
            if (this.f63780b != null) {
                Internal.instance.recycle(this.f63779a.getConnectionPool(), this.f63780b);
                this.f63780b = null;
            }
            Response response2 = this.f63790l;
            if (response2 != null) {
                this.f63791m = response2.newBuilder().request(this.f63788j).priorResponse(m52684r(this.f63784f)).cacheResponse(m52684r(this.f63790l)).build();
            } else {
                this.f63791m = new Response.Builder().request(this.f63788j).priorResponse(m52684r(this.f63784f)).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(f63778t).build();
            }
            this.f63791m = m52697s(this.f63791m);
            return;
        }
        if (this.f63780b == null) {
            m52687g();
        }
        this.f63785g = Internal.instance.newTransport(this.f63780b, this);
        if (this.f63794p && m52695p() && this.f63792n == null) {
            long contentLength = OkHeaders.contentLength(m52693n);
            if (!this.bufferRequestBody) {
                this.f63785g.writeRequestHeaders(this.f63789k);
                this.f63792n = this.f63785g.createRequestBody(this.f63789k, contentLength);
            } else {
                if (contentLength > 2147483647L) {
                    throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                }
                if (contentLength == -1) {
                    this.f63792n = new RetryableSink();
                } else {
                    this.f63785g.writeRequestHeaders(this.f63789k);
                    this.f63792n = new RetryableSink((int) contentLength);
                }
            }
        }
    }

    public void writingRequestHeaders() {
        if (this.f63786h != -1) {
            throw new IllegalStateException();
        }
        this.f63786h = System.currentTimeMillis();
    }

    public HttpEngine recover(IOException iOException, Sink sink) {
        RouteSelector routeSelector = this.f63782d;
        if (routeSelector != null && this.f63780b != null) {
            m52688h(routeSelector, iOException);
        }
        boolean z = sink == null || (sink instanceof RetryableSink);
        RouteSelector routeSelector2 = this.f63782d;
        if (routeSelector2 == null && this.f63780b == null) {
            return null;
        }
        if ((routeSelector2 == null || routeSelector2.hasNext()) && m52691l(iOException) && z) {
            return new HttpEngine(this.f63779a, this.f63788j, this.bufferRequestBody, this.f63794p, this.f63795q, close(), this.f63782d, (RetryableSink) sink, this.f63784f);
        }
        return null;
    }

    public HttpEngine recover(IOException iOException) {
        return recover(iOException, this.f63792n);
    }
}
