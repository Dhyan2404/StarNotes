package org.apache.http.impl.conn;

import com.sunia.HTREnginev2.i20;
import com.sunia.HTREnginev2.j20;
import com.sunia.HTREnginev2.k20;
import java.io.Closeable;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.config.ConnectionConfig;
import org.apache.http.config.Lookup;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.HttpClientConnectionOperator;
import org.apache.http.conn.HttpConnectionFactory;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.pool.ConnFactory;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.pool.PoolEntry;
import org.apache.http.pool.PoolEntryCallback;
import org.apache.http.pool.PoolStats;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public class PoolingHttpClientConnectionManager implements HttpClientConnectionManager, ConnPoolControl<HttpRoute>, Closeable {

    /* renamed from: e */
    public final Log f110784e;

    /* renamed from: f */
    public final C19371c f110785f;

    /* renamed from: g */
    public final i20 f110786g;

    /* renamed from: h */
    public final HttpClientConnectionOperator f110787h;

    /* renamed from: i */
    public final AtomicBoolean f110788i;

    /* renamed from: org.apache.http.impl.conn.PoolingHttpClientConnectionManager$a */
    /* loaded from: classes12.dex */
    public class C19369a implements ConnectionRequest {

        /* renamed from: e */
        public final /* synthetic */ Future f110789e;

        /* renamed from: f */
        public final /* synthetic */ HttpRoute f110790f;

        public C19369a(Future future, HttpRoute httpRoute) {
            this.f110789e = future;
            this.f110790f = httpRoute;
        }

        @Override // org.apache.http.concurrent.Cancellable
        public boolean cancel() {
            return this.f110789e.cancel(true);
        }

        @Override // org.apache.http.conn.ConnectionRequest
        public HttpClientConnection get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, ConnectionPoolTimeoutException {
            HttpClientConnection leaseConnection = PoolingHttpClientConnectionManager.this.leaseConnection(this.f110789e, j, timeUnit);
            if (leaseConnection.isOpen()) {
                leaseConnection.setSocketTimeout(PoolingHttpClientConnectionManager.this.m68527e0(this.f110790f.getProxyHost() != null ? this.f110790f.getProxyHost() : this.f110790f.getTargetHost()).getSoTimeout());
            }
            return leaseConnection;
        }
    }

    /* renamed from: org.apache.http.impl.conn.PoolingHttpClientConnectionManager$b */
    /* loaded from: classes12.dex */
    public class C19370b implements PoolEntryCallback<HttpRoute, ManagedHttpClientConnection> {
        public C19370b() {
        }

        @Override // org.apache.http.pool.PoolEntryCallback
        public void process(PoolEntry<HttpRoute, ManagedHttpClientConnection> poolEntry) {
            ManagedHttpClientConnection connection = poolEntry.getConnection();
            if (connection != null) {
                try {
                    connection.shutdown();
                } catch (IOException e) {
                    if (PoolingHttpClientConnectionManager.this.f110784e.isDebugEnabled()) {
                        PoolingHttpClientConnectionManager.this.f110784e.debug("I/O exception shutting down connection", e);
                    }
                }
            }
        }
    }

    /* renamed from: org.apache.http.impl.conn.PoolingHttpClientConnectionManager$c */
    /* loaded from: classes12.dex */
    public static class C19371c {

        /* renamed from: a */
        public final Map<HttpHost, SocketConfig> f110793a = new ConcurrentHashMap();

        /* renamed from: b */
        public final Map<HttpHost, ConnectionConfig> f110794b = new ConcurrentHashMap();

        /* renamed from: c */
        public volatile SocketConfig f110795c;

        /* renamed from: d */
        public volatile ConnectionConfig f110796d;

        /* renamed from: a */
        public ConnectionConfig m68529a(HttpHost httpHost) {
            return this.f110794b.get(httpHost);
        }

        /* renamed from: b */
        public ConnectionConfig m68530b() {
            return this.f110796d;
        }

        /* renamed from: c */
        public SocketConfig m68531c() {
            return this.f110795c;
        }

        /* renamed from: d */
        public SocketConfig m68532d(HttpHost httpHost) {
            return this.f110793a.get(httpHost);
        }

        /* renamed from: e */
        public void m68533e(HttpHost httpHost, ConnectionConfig connectionConfig) {
            this.f110794b.put(httpHost, connectionConfig);
        }

        /* renamed from: f */
        public void m68534f(ConnectionConfig connectionConfig) {
            this.f110796d = connectionConfig;
        }

        /* renamed from: g */
        public void m68535g(SocketConfig socketConfig) {
            this.f110795c = socketConfig;
        }

        /* renamed from: h */
        public void m68536h(HttpHost httpHost, SocketConfig socketConfig) {
            this.f110793a.put(httpHost, socketConfig);
        }
    }

    /* renamed from: org.apache.http.impl.conn.PoolingHttpClientConnectionManager$d */
    /* loaded from: classes12.dex */
    public static class C19372d implements ConnFactory<HttpRoute, ManagedHttpClientConnection> {

        /* renamed from: a */
        public final C19371c f110797a;

        /* renamed from: b */
        public final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> f110798b;

        public C19372d(C19371c c19371c, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
            this.f110797a = c19371c == null ? new C19371c() : c19371c;
            this.f110798b = httpConnectionFactory == null ? ManagedHttpClientConnectionFactory.INSTANCE : httpConnectionFactory;
        }

        @Override // org.apache.http.pool.ConnFactory
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ManagedHttpClientConnection create(HttpRoute httpRoute) throws IOException {
            ConnectionConfig m68529a = httpRoute.getProxyHost() != null ? this.f110797a.m68529a(httpRoute.getProxyHost()) : null;
            if (m68529a == null) {
                m68529a = this.f110797a.m68529a(httpRoute.getTargetHost());
            }
            if (m68529a == null) {
                m68529a = this.f110797a.m68530b();
            }
            if (m68529a == null) {
                m68529a = ConnectionConfig.DEFAULT;
            }
            return this.f110798b.create(httpRoute, m68529a);
        }
    }

    public PoolingHttpClientConnectionManager() {
        this(m68522M());
    }

    /* renamed from: M */
    public static Registry<ConnectionSocketFactory> m68522M() {
        return RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", SSLConnectionSocketFactory.getSocketFactory()).build();
    }

    /* renamed from: H */
    public final String m68525H(HttpRoute httpRoute, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("[route: ");
        sb.append(httpRoute);
        sb.append(IteratorUtils.f104924b);
        if (obj != null) {
            sb.append("[state: ");
            sb.append(obj);
            sb.append(IteratorUtils.f104924b);
        }
        return sb.toString();
    }

    /* renamed from: I */
    public final String m68526I(HttpRoute httpRoute) {
        StringBuilder sb = new StringBuilder();
        PoolStats totalStats = this.f110786g.getTotalStats();
        PoolStats stats = this.f110786g.getStats(httpRoute);
        sb.append("[total available: ");
        sb.append(totalStats.getAvailable());
        sb.append("; ");
        sb.append("route allocated: ");
        sb.append(stats.getLeased() + stats.getAvailable());
        sb.append(" of ");
        sb.append(stats.getMax());
        sb.append("; ");
        sb.append("total allocated: ");
        sb.append(totalStats.getLeased() + totalStats.getAvailable());
        sb.append(" of ");
        sb.append(totalStats.getMax());
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown();
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void closeExpiredConnections() {
        this.f110784e.debug("Closing expired connections");
        this.f110786g.closeExpired();
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        if (this.f110784e.isDebugEnabled()) {
            this.f110784e.debug("Closing connections idle longer than " + j + " " + timeUnit);
        }
        this.f110786g.closeIdle(j, timeUnit);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void connect(HttpClientConnection httpClientConnection, HttpRoute httpRoute, int i, HttpContext httpContext) throws IOException {
        ManagedHttpClientConnection connection;
        Args.notNull(httpClientConnection, "Managed Connection");
        Args.notNull(httpRoute, "HTTP route");
        synchronized (httpClientConnection) {
            connection = k20.m55114I(httpClientConnection).getConnection();
        }
        HttpHost proxyHost = httpRoute.getProxyHost() != null ? httpRoute.getProxyHost() : httpRoute.getTargetHost();
        this.f110787h.connect(connection, proxyHost, httpRoute.getLocalSocketAddress(), i, m68527e0(proxyHost), httpContext);
    }

    /* renamed from: e0 */
    public final SocketConfig m68527e0(HttpHost httpHost) {
        SocketConfig m68532d = this.f110785f.m68532d(httpHost);
        if (m68532d == null) {
            m68532d = this.f110785f.m68531c();
        }
        return m68532d == null ? SocketConfig.DEFAULT : m68532d;
    }

    public void enumAvailable(PoolEntryCallback<HttpRoute, ManagedHttpClientConnection> poolEntryCallback) {
        this.f110786g.enumAvailable(poolEntryCallback);
    }

    public void enumLeased(PoolEntryCallback<HttpRoute, ManagedHttpClientConnection> poolEntryCallback) {
        this.f110786g.enumLeased(poolEntryCallback);
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public ConnectionConfig getConnectionConfig(HttpHost httpHost) {
        return this.f110785f.m68529a(httpHost);
    }

    public ConnectionConfig getDefaultConnectionConfig() {
        return this.f110785f.m68530b();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        return this.f110786g.getDefaultMaxPerRoute();
    }

    public SocketConfig getDefaultSocketConfig() {
        return this.f110785f.m68531c();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxTotal() {
        return this.f110786g.getMaxTotal();
    }

    public Set<HttpRoute> getRoutes() {
        return this.f110786g.getRoutes();
    }

    public SocketConfig getSocketConfig(HttpHost httpHost) {
        return this.f110785f.m68532d(httpHost);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        return this.f110786g.getTotalStats();
    }

    public int getValidateAfterInactivity() {
        return this.f110786g.getValidateAfterInactivity();
    }

    public HttpClientConnection leaseConnection(Future<j20> future, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, ConnectionPoolTimeoutException {
        try {
            j20 j20Var = future.get(j, timeUnit);
            if (j20Var == null || future.isCancelled()) {
                throw new ExecutionException(new CancellationException("Operation cancelled"));
            }
            Asserts.check(j20Var.getConnection() != null, "Pool entry with no connection");
            if (this.f110784e.isDebugEnabled()) {
                this.f110784e.debug("Connection leased: " + m68528w(j20Var) + m68526I(j20Var.getRoute()));
            }
            return k20.m55116f0(j20Var);
        } catch (TimeoutException unused) {
            throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0099 A[Catch: all -> 0x0106, DONT_GENERATE, TryCatch #1 {, blocks: (B:4:0x0006, B:6:0x000c, B:9:0x000e, B:26:0x007e, B:28:0x0086, B:31:0x008e, B:33:0x0099, B:34:0x00c0, B:38:0x00c3, B:40:0x00cb, B:43:0x00d3, B:45:0x00de, B:46:0x0105, B:12:0x0016, B:16:0x0021, B:20:0x0035, B:21:0x0059, B:23:0x007b, B:25:0x001f), top: B:3:0x0006, inners: #0 }] */
    @Override // org.apache.http.conn.HttpClientConnectionManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void releaseConnection(org.apache.http.HttpClientConnection r7, java.lang.Object r8, long r9, java.util.concurrent.TimeUnit r11) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.conn.PoolingHttpClientConnectionManager.releaseConnection(org.apache.http.HttpClientConnection, java.lang.Object, long, java.util.concurrent.TimeUnit):void");
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public ConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        Args.notNull(httpRoute, "HTTP route");
        if (this.f110784e.isDebugEnabled()) {
            this.f110784e.debug("Connection request: " + m68525H(httpRoute, obj) + m68526I(httpRoute));
        }
        Asserts.check(!this.f110788i.get(), "Connection pool shut down");
        return new C19369a(this.f110786g.lease(httpRoute, obj, null), httpRoute);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void routeComplete(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
        Args.notNull(httpClientConnection, "Managed Connection");
        Args.notNull(httpRoute, "HTTP route");
        synchronized (httpClientConnection) {
            k20.m55114I(httpClientConnection).m54864c();
        }
    }

    public void setConnectionConfig(HttpHost httpHost, ConnectionConfig connectionConfig) {
        this.f110785f.m68533e(httpHost, connectionConfig);
    }

    public void setDefaultConnectionConfig(ConnectionConfig connectionConfig) {
        this.f110785f.m68534f(connectionConfig);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i) {
        this.f110786g.setDefaultMaxPerRoute(i);
    }

    public void setDefaultSocketConfig(SocketConfig socketConfig) {
        this.f110785f.m68535g(socketConfig);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxTotal(int i) {
        this.f110786g.setMaxTotal(i);
    }

    public void setSocketConfig(HttpHost httpHost, SocketConfig socketConfig) {
        this.f110785f.m68536h(httpHost, socketConfig);
    }

    public void setValidateAfterInactivity(int i) {
        this.f110786g.setValidateAfterInactivity(i);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void shutdown() {
        if (this.f110788i.compareAndSet(false, true)) {
            this.f110784e.debug("Connection manager is shutting down");
            try {
                this.f110786g.enumLeased(new C19370b());
                this.f110786g.shutdown();
            } catch (IOException e) {
                this.f110784e.debug("I/O exception shutting down connection manager", e);
            }
            this.f110784e.debug("Connection manager shut down");
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void upgrade(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
        ManagedHttpClientConnection connection;
        Args.notNull(httpClientConnection, "Managed Connection");
        Args.notNull(httpRoute, "HTTP route");
        synchronized (httpClientConnection) {
            connection = k20.m55114I(httpClientConnection).getConnection();
        }
        this.f110787h.upgrade(connection, httpRoute.getTargetHost(), httpContext);
    }

    /* renamed from: w */
    public final String m68528w(j20 j20Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("[id: ");
        sb.append(j20Var.getId());
        sb.append(IteratorUtils.f104924b);
        sb.append("[route: ");
        sb.append(j20Var.getRoute());
        sb.append(IteratorUtils.f104924b);
        Object state = j20Var.getState();
        if (state != null) {
            sb.append("[state: ");
            sb.append(state);
            sb.append(IteratorUtils.f104924b);
        }
        return sb.toString();
    }

    public PoolingHttpClientConnectionManager(long j, TimeUnit timeUnit) {
        this(m68522M(), null, null, null, j, timeUnit);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxPerRoute(HttpRoute httpRoute) {
        return this.f110786g.getMaxPerRoute(httpRoute);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getStats(HttpRoute httpRoute) {
        return this.f110786g.getStats(httpRoute);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxPerRoute(HttpRoute httpRoute, int i) {
        this.f110786g.setMaxPerRoute(httpRoute, i);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry) {
        this(registry, null, null);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, DnsResolver dnsResolver) {
        this(registry, null, dnsResolver);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this(registry, httpConnectionFactory, null);
    }

    public PoolingHttpClientConnectionManager(HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this(m68522M(), httpConnectionFactory, null);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, DnsResolver dnsResolver) {
        this(registry, httpConnectionFactory, null, dnsResolver, -1L, TimeUnit.MILLISECONDS);
    }

    public PoolingHttpClientConnectionManager(Registry<ConnectionSocketFactory> registry, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, SchemePortResolver schemePortResolver, DnsResolver dnsResolver, long j, TimeUnit timeUnit) {
        this(new DefaultHttpClientConnectionOperator(registry, schemePortResolver, dnsResolver), httpConnectionFactory, j, timeUnit);
    }

    public PoolingHttpClientConnectionManager(HttpClientConnectionOperator httpClientConnectionOperator, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, long j, TimeUnit timeUnit) {
        this.f110784e = LogFactory.getLog(getClass());
        C19371c c19371c = new C19371c();
        this.f110785f = c19371c;
        i20 i20Var = new i20(new C19372d(c19371c, httpConnectionFactory), 2, 20, j, timeUnit);
        this.f110786g = i20Var;
        i20Var.setValidateAfterInactivity(2000);
        this.f110787h = (HttpClientConnectionOperator) Args.notNull(httpClientConnectionOperator, "HttpClientConnectionOperator");
        this.f110788i = new AtomicBoolean(false);
    }

    public PoolingHttpClientConnectionManager(i20 i20Var, Lookup<ConnectionSocketFactory> lookup, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        this.f110784e = LogFactory.getLog(getClass());
        this.f110785f = new C19371c();
        this.f110786g = i20Var;
        this.f110787h = new DefaultHttpClientConnectionOperator(lookup, schemePortResolver, dnsResolver);
        this.f110788i = new AtomicBoolean(false);
    }
}
