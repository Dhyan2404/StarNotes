package org.apache.http.impl.conn;

import com.sunia.HTREnginev2.a0i;
import com.sunia.HTREnginev2.d8j;
import com.sunia.HTREnginev2.j0i;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.pool.ConnPoolControl;
import org.apache.http.pool.PoolStats;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
@Deprecated
/* loaded from: classes12.dex */
public class PoolingClientConnectionManager implements ClientConnectionManager, ConnPoolControl<HttpRoute> {

    /* renamed from: e */
    public final Log f110777e;

    /* renamed from: f */
    public final SchemeRegistry f110778f;

    /* renamed from: g */
    public final a0i f110779g;

    /* renamed from: h */
    public final ClientConnectionOperator f110780h;

    /* renamed from: i */
    public final DnsResolver f110781i;

    /* renamed from: org.apache.http.impl.conn.PoolingClientConnectionManager$a */
    /* loaded from: classes12.dex */
    public class C19368a implements ClientConnectionRequest {

        /* renamed from: a */
        public final /* synthetic */ Future f110782a;

        public C19368a(Future future) {
            this.f110782a = future;
        }

        @Override // org.apache.http.conn.ClientConnectionRequest
        public void abortRequest() {
            this.f110782a.cancel(true);
        }

        @Override // org.apache.http.conn.ClientConnectionRequest
        public ManagedClientConnection getConnection(long j, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
            return PoolingClientConnectionManager.this.m68521d(this.f110782a, j, timeUnit);
        }
    }

    public PoolingClientConnectionManager(SchemeRegistry schemeRegistry) {
        this(schemeRegistry, -1L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public final String m68518a(j0i j0iVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("[id: ");
        sb.append(j0iVar.getId());
        sb.append(IteratorUtils.f104924b);
        sb.append("[route: ");
        sb.append(j0iVar.getRoute());
        sb.append(IteratorUtils.f104924b);
        Object state = j0iVar.getState();
        if (state != null) {
            sb.append("[state: ");
            sb.append(state);
            sb.append(IteratorUtils.f104924b);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public final String m68519b(HttpRoute httpRoute, Object obj) {
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

    /* renamed from: c */
    public final String m68520c(HttpRoute httpRoute) {
        StringBuilder sb = new StringBuilder();
        PoolStats totalStats = this.f110779g.getTotalStats();
        PoolStats stats = this.f110779g.getStats(httpRoute);
        sb.append("[total kept alive: ");
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

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        this.f110777e.debug("Closing expired connections");
        this.f110779g.closeExpired();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        if (this.f110777e.isDebugEnabled()) {
            this.f110777e.debug("Closing connections idle longer than " + j + " " + timeUnit);
        }
        this.f110779g.closeIdle(j, timeUnit);
    }

    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        return new DefaultClientConnectionOperator(schemeRegistry, this.f110781i);
    }

    /* renamed from: d */
    public ManagedClientConnection m68521d(Future<j0i> future, long j, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
        try {
            j0i j0iVar = future.get(j, timeUnit);
            if (j0iVar == null || future.isCancelled()) {
                throw new InterruptedException();
            }
            Asserts.check(j0iVar.getConnection() != null, "Pool entry with no connection");
            if (this.f110777e.isDebugEnabled()) {
                this.f110777e.debug("Connection leased: " + m68518a(j0iVar) + m68520c(j0iVar.getRoute()));
            }
            return new d8j(this, this.f110780h, j0iVar);
        } catch (ExecutionException e) {
            e = e;
            Throwable cause = e.getCause();
            if (cause != null) {
                e = cause;
            }
            this.f110777e.error("Unexpected exception leasing connection from pool", e);
            throw new InterruptedException();
        } catch (TimeoutException unused) {
            throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
        }
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getDefaultMaxPerRoute() {
        return this.f110779g.getDefaultMaxPerRoute();
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxTotal() {
        return this.f110779g.getMaxTotal();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.f110778f;
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getTotalStats() {
        return this.f110779g.getTotalStats();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        String str;
        Args.check(managedClientConnection instanceof d8j, "Connection class mismatch, connection not obtained from this manager");
        d8j d8jVar = (d8j) managedClientConnection;
        Asserts.check(d8jVar.m53599M() == this, "Connection not obtained from this manager");
        synchronized (d8jVar) {
            j0i m53601f = d8jVar.m53601f();
            if (m53601f == null) {
                return;
            }
            try {
                if (d8jVar.isOpen() && !d8jVar.isMarkedReusable()) {
                    try {
                        d8jVar.shutdown();
                    } catch (IOException e) {
                        if (this.f110777e.isDebugEnabled()) {
                            this.f110777e.debug("I/O exception shutting down released connection", e);
                        }
                    }
                }
                if (d8jVar.isMarkedReusable()) {
                    m53601f.updateExpiry(j, timeUnit != null ? timeUnit : TimeUnit.MILLISECONDS);
                    if (this.f110777e.isDebugEnabled()) {
                        if (j > 0) {
                            str = "for " + j + " " + timeUnit;
                        } else {
                            str = "indefinitely";
                        }
                        this.f110777e.debug("Connection " + m68518a(m53601f) + " can be kept alive " + str);
                    }
                }
                this.f110779g.release((a0i) m53601f, d8jVar.isMarkedReusable());
                if (this.f110777e.isDebugEnabled()) {
                    this.f110777e.debug("Connection released: " + m68518a(m53601f) + m68520c(m53601f.getRoute()));
                }
            } catch (Throwable th) {
                this.f110779g.release((a0i) m53601f, d8jVar.isMarkedReusable());
                throw th;
            }
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        Args.notNull(httpRoute, "HTTP route");
        if (this.f110777e.isDebugEnabled()) {
            this.f110777e.debug("Connection request: " + m68519b(httpRoute, obj) + m68520c(httpRoute));
        }
        return new C19368a(this.f110779g.lease(httpRoute, obj));
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setDefaultMaxPerRoute(int i) {
        this.f110779g.setDefaultMaxPerRoute(i);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxTotal(int i) {
        this.f110779g.setMaxTotal(i);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        this.f110777e.debug("Connection manager is shutting down");
        try {
            this.f110779g.shutdown();
        } catch (IOException e) {
            this.f110777e.debug("I/O exception shutting down connection manager", e);
        }
        this.f110777e.debug("Connection manager shut down");
    }

    public PoolingClientConnectionManager(SchemeRegistry schemeRegistry, DnsResolver dnsResolver) {
        this(schemeRegistry, -1L, TimeUnit.MILLISECONDS, dnsResolver);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public int getMaxPerRoute(HttpRoute httpRoute) {
        return this.f110779g.getMaxPerRoute(httpRoute);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public PoolStats getStats(HttpRoute httpRoute) {
        return this.f110779g.getStats(httpRoute);
    }

    @Override // org.apache.http.pool.ConnPoolControl
    public void setMaxPerRoute(HttpRoute httpRoute, int i) {
        this.f110779g.setMaxPerRoute(httpRoute, i);
    }

    public PoolingClientConnectionManager() {
        this(SchemeRegistryFactory.createDefault());
    }

    public PoolingClientConnectionManager(SchemeRegistry schemeRegistry, long j, TimeUnit timeUnit) {
        this(schemeRegistry, j, timeUnit, new SystemDefaultDnsResolver());
    }

    public PoolingClientConnectionManager(SchemeRegistry schemeRegistry, long j, TimeUnit timeUnit, DnsResolver dnsResolver) {
        Log log = LogFactory.getLog(getClass());
        this.f110777e = log;
        Args.notNull(schemeRegistry, "Scheme registry");
        Args.notNull(dnsResolver, "DNS resolver");
        this.f110778f = schemeRegistry;
        this.f110781i = dnsResolver;
        ClientConnectionOperator createConnectionOperator = createConnectionOperator(schemeRegistry);
        this.f110780h = createConnectionOperator;
        this.f110779g = new a0i(log, createConnectionOperator, 2, 20, j, timeUnit);
    }
}
