package org.apache.http.impl.conn;

import java.io.Closeable;
import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
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
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.LangUtils;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public class BasicHttpClientConnectionManager implements HttpClientConnectionManager, Closeable {

    /* renamed from: e */
    public final Log f110713e;

    /* renamed from: f */
    public final HttpClientConnectionOperator f110714f;

    /* renamed from: g */
    public final HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> f110715g;

    /* renamed from: h */
    public ManagedHttpClientConnection f110716h;

    /* renamed from: i */
    public HttpRoute f110717i;

    /* renamed from: j */
    public Object f110718j;

    /* renamed from: k */
    public long f110719k;

    /* renamed from: l */
    public long f110720l;

    /* renamed from: m */
    public boolean f110721m;

    /* renamed from: n */
    public SocketConfig f110722n;

    /* renamed from: o */
    public ConnectionConfig f110723o;

    /* renamed from: p */
    public final AtomicBoolean f110724p;

    /* renamed from: org.apache.http.impl.conn.BasicHttpClientConnectionManager$a */
    /* loaded from: classes12.dex */
    public class C19366a implements ConnectionRequest {

        /* renamed from: e */
        public final /* synthetic */ HttpRoute f110725e;

        /* renamed from: f */
        public final /* synthetic */ Object f110726f;

        public C19366a(HttpRoute httpRoute, Object obj) {
            this.f110725e = httpRoute;
            this.f110726f = obj;
        }

        @Override // org.apache.http.concurrent.Cancellable
        public boolean cancel() {
            return false;
        }

        @Override // org.apache.http.conn.ConnectionRequest
        public HttpClientConnection get(long j, TimeUnit timeUnit) {
            return BasicHttpClientConnectionManager.this.m68513w(this.f110725e, this.f110726f);
        }
    }

    public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> lookup, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        this(new DefaultHttpClientConnectionOperator(lookup, schemePortResolver, dnsResolver), httpConnectionFactory);
    }

    /* renamed from: H */
    public static Registry<ConnectionSocketFactory> m68510H() {
        return RegistryBuilder.create().register("http", PlainConnectionSocketFactory.getSocketFactory()).register("https", SSLConnectionSocketFactory.getSocketFactory()).build();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f110724p.compareAndSet(false, true)) {
            m68512j();
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void closeExpiredConnections() {
        if (this.f110724p.get()) {
            return;
        }
        if (!this.f110721m) {
            m68511f();
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void closeIdleConnections(long j, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        if (this.f110724p.get()) {
            return;
        }
        if (!this.f110721m) {
            long millis = timeUnit.toMillis(j);
            if (millis < 0) {
                millis = 0;
            }
            if (this.f110719k <= System.currentTimeMillis() - millis) {
                m68512j();
            }
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void connect(HttpClientConnection httpClientConnection, HttpRoute httpRoute, int i, HttpContext httpContext) throws IOException {
        Args.notNull(httpClientConnection, "Connection");
        Args.notNull(httpRoute, "HTTP route");
        Asserts.check(httpClientConnection == this.f110716h, "Connection not obtained from this manager");
        HttpHost proxyHost = httpRoute.getProxyHost() != null ? httpRoute.getProxyHost() : httpRoute.getTargetHost();
        this.f110714f.connect(this.f110716h, proxyHost, httpRoute.getLocalSocketAddress(), i, this.f110722n, httpContext);
    }

    /* renamed from: f */
    public final void m68511f() {
        if (this.f110716h == null || System.currentTimeMillis() < this.f110720l) {
            return;
        }
        if (this.f110713e.isDebugEnabled()) {
            this.f110713e.debug("Connection expired @ " + new Date(this.f110720l));
        }
        m68512j();
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public synchronized ConnectionConfig getConnectionConfig() {
        return this.f110723o;
    }

    public HttpRoute getRoute() {
        return this.f110717i;
    }

    public synchronized SocketConfig getSocketConfig() {
        return this.f110722n;
    }

    public Object getState() {
        return this.f110718j;
    }

    /* renamed from: j */
    public final synchronized void m68512j() {
        if (this.f110716h != null) {
            this.f110713e.debug("Closing connection");
            try {
                this.f110716h.close();
            } catch (IOException e) {
                if (this.f110713e.isDebugEnabled()) {
                    this.f110713e.debug("I/O exception closing connection", e);
                }
            }
            this.f110716h = null;
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public synchronized void releaseConnection(HttpClientConnection httpClientConnection, Object obj, long j, TimeUnit timeUnit) {
        String str;
        Args.notNull(httpClientConnection, "Connection");
        Asserts.check(httpClientConnection == this.f110716h, "Connection not obtained from this manager");
        if (this.f110713e.isDebugEnabled()) {
            this.f110713e.debug("Releasing connection " + httpClientConnection);
        }
        if (this.f110724p.get()) {
            return;
        }
        try {
            this.f110719k = System.currentTimeMillis();
            if (this.f110716h.isOpen()) {
                this.f110718j = obj;
                this.f110716h.setSocketTimeout(0);
                if (this.f110713e.isDebugEnabled()) {
                    if (j > 0) {
                        str = "for " + j + " " + timeUnit;
                    } else {
                        str = "indefinitely";
                    }
                    this.f110713e.debug("Connection can be kept alive " + str);
                }
                if (j > 0) {
                    this.f110720l = this.f110719k + timeUnit.toMillis(j);
                } else {
                    this.f110720l = Long.MAX_VALUE;
                }
            } else {
                this.f110717i = null;
                this.f110716h = null;
                this.f110720l = Long.MAX_VALUE;
            }
        } finally {
            this.f110721m = false;
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public final ConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        Args.notNull(httpRoute, "Route");
        return new C19366a(httpRoute, obj);
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void routeComplete(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
    }

    public synchronized void setConnectionConfig(ConnectionConfig connectionConfig) {
        if (connectionConfig == null) {
            connectionConfig = ConnectionConfig.DEFAULT;
        }
        this.f110723o = connectionConfig;
    }

    public synchronized void setSocketConfig(SocketConfig socketConfig) {
        if (socketConfig == null) {
            socketConfig = SocketConfig.DEFAULT;
        }
        this.f110722n = socketConfig;
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void shutdown() {
        if (!this.f110724p.compareAndSet(false, true) || this.f110716h == null) {
            return;
        }
        this.f110713e.debug("Shutting down connection");
        try {
            this.f110716h.shutdown();
        } catch (IOException e) {
            if (this.f110713e.isDebugEnabled()) {
                this.f110713e.debug("I/O exception shutting down connection", e);
            }
        }
        this.f110716h = null;
    }

    @Override // org.apache.http.conn.HttpClientConnectionManager
    public void upgrade(HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpContext httpContext) throws IOException {
        Args.notNull(httpClientConnection, "Connection");
        Args.notNull(httpRoute, "HTTP route");
        Asserts.check(httpClientConnection == this.f110716h, "Connection not obtained from this manager");
        this.f110714f.upgrade(this.f110716h, httpRoute.getTargetHost(), httpContext);
    }

    /* renamed from: w */
    public synchronized HttpClientConnection m68513w(HttpRoute httpRoute, Object obj) {
        Asserts.check(!this.f110724p.get(), "Connection manager has been shut down");
        if (this.f110713e.isDebugEnabled()) {
            this.f110713e.debug("Get connection for route " + httpRoute);
        }
        Asserts.check(this.f110721m ? false : true, "Connection is still allocated");
        if (!LangUtils.equals(this.f110717i, httpRoute) || !LangUtils.equals(this.f110718j, obj)) {
            m68512j();
        }
        this.f110717i = httpRoute;
        this.f110718j = obj;
        m68511f();
        if (this.f110716h == null) {
            this.f110716h = this.f110715g.create(httpRoute, this.f110723o);
        }
        this.f110716h.setSocketTimeout(this.f110722n.getSoTimeout());
        this.f110721m = true;
        return this.f110716h;
    }

    public BasicHttpClientConnectionManager(HttpClientConnectionOperator httpClientConnectionOperator, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this.f110713e = LogFactory.getLog(getClass());
        this.f110714f = (HttpClientConnectionOperator) Args.notNull(httpClientConnectionOperator, "Connection operator");
        this.f110715g = httpConnectionFactory == null ? ManagedHttpClientConnectionFactory.INSTANCE : httpConnectionFactory;
        this.f110720l = Long.MAX_VALUE;
        this.f110722n = SocketConfig.DEFAULT;
        this.f110723o = ConnectionConfig.DEFAULT;
        this.f110724p = new AtomicBoolean(false);
    }

    public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> lookup, HttpConnectionFactory<HttpRoute, ManagedHttpClientConnection> httpConnectionFactory) {
        this(lookup, httpConnectionFactory, null, null);
    }

    public BasicHttpClientConnectionManager(Lookup<ConnectionSocketFactory> lookup) {
        this(lookup, null, null, null);
    }

    public BasicHttpClientConnectionManager() {
        this(m68510H(), null, null, null);
    }
}
