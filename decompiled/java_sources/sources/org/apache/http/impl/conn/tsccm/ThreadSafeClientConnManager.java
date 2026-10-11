package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.DefaultClientConnectionOperator;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
@Deprecated
/* loaded from: classes12.dex */
public class ThreadSafeClientConnManager implements ClientConnectionManager {
    protected final ClientConnectionOperator connOperator;
    protected final ConnPerRouteBean connPerRoute;
    protected final AbstractConnPool connectionPool;

    /* renamed from: e */
    public final Log f110826e;
    protected final ConnPoolByRoute pool;
    protected final SchemeRegistry schemeRegistry;

    /* renamed from: org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager$a */
    /* loaded from: classes12.dex */
    public class C19378a implements ClientConnectionRequest {

        /* renamed from: a */
        public final /* synthetic */ PoolEntryRequest f110827a;

        /* renamed from: b */
        public final /* synthetic */ HttpRoute f110828b;

        public C19378a(PoolEntryRequest poolEntryRequest, HttpRoute httpRoute) {
            this.f110827a = poolEntryRequest;
            this.f110828b = httpRoute;
        }

        @Override // org.apache.http.conn.ClientConnectionRequest
        public void abortRequest() {
            this.f110827a.abortRequest();
        }

        @Override // org.apache.http.conn.ClientConnectionRequest
        public ManagedClientConnection getConnection(long j, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
            Args.notNull(this.f110828b, "Route");
            if (ThreadSafeClientConnManager.this.f110826e.isDebugEnabled()) {
                ThreadSafeClientConnManager.this.f110826e.debug("Get connection: " + this.f110828b + ", timeout = " + j);
            }
            return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, this.f110827a.getPoolEntry(j, timeUnit));
        }
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry) {
        this(schemeRegistry, -1L, TimeUnit.MILLISECONDS);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        this.f110826e.debug("Closing expired connections");
        this.pool.closeExpiredConnections();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        if (this.f110826e.isDebugEnabled()) {
            this.f110826e.debug("Closing connections idle longer than " + j + " " + timeUnit);
        }
        this.pool.closeIdleConnections(j, timeUnit);
    }

    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        return new DefaultClientConnectionOperator(schemeRegistry);
    }

    @Deprecated
    public AbstractConnPool createConnectionPool(HttpParams httpParams) {
        return new ConnPoolByRoute(this.connOperator, httpParams);
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        return this.pool.getConnectionsInPool(httpRoute);
    }

    public int getDefaultMaxPerRoute() {
        return this.connPerRoute.getDefaultMaxPerRoute();
    }

    public int getMaxForRoute(HttpRoute httpRoute) {
        return this.connPerRoute.getMaxForRoute(httpRoute);
    }

    public int getMaxTotal() {
        return this.pool.getMaxTotalConnections();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.schemeRegistry;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        boolean isMarkedReusable;
        ConnPoolByRoute connPoolByRoute;
        Args.check(managedClientConnection instanceof BasicPooledConnAdapter, "Connection class mismatch, connection not obtained from this manager");
        BasicPooledConnAdapter basicPooledConnAdapter = (BasicPooledConnAdapter) managedClientConnection;
        if (basicPooledConnAdapter.getPoolEntry() != null) {
            Asserts.check(basicPooledConnAdapter.getManager() == this, "Connection not obtained from this manager");
        }
        synchronized (basicPooledConnAdapter) {
            BasicPoolEntry basicPoolEntry = (BasicPoolEntry) basicPooledConnAdapter.getPoolEntry();
            try {
                if (basicPoolEntry == null) {
                    return;
                }
                try {
                    if (basicPooledConnAdapter.isOpen() && !basicPooledConnAdapter.isMarkedReusable()) {
                        basicPooledConnAdapter.shutdown();
                    }
                    isMarkedReusable = basicPooledConnAdapter.isMarkedReusable();
                    if (this.f110826e.isDebugEnabled()) {
                        if (isMarkedReusable) {
                            this.f110826e.debug("Released connection is reusable.");
                        } else {
                            this.f110826e.debug("Released connection is not reusable.");
                        }
                    }
                    basicPooledConnAdapter.detach();
                    connPoolByRoute = this.pool;
                } catch (IOException e) {
                    if (this.f110826e.isDebugEnabled()) {
                        this.f110826e.debug("Exception shutting down released connection.", e);
                    }
                    isMarkedReusable = basicPooledConnAdapter.isMarkedReusable();
                    if (this.f110826e.isDebugEnabled()) {
                        if (isMarkedReusable) {
                            this.f110826e.debug("Released connection is reusable.");
                        } else {
                            this.f110826e.debug("Released connection is not reusable.");
                        }
                    }
                    basicPooledConnAdapter.detach();
                    connPoolByRoute = this.pool;
                }
                connPoolByRoute.freeEntry(basicPoolEntry, isMarkedReusable, j, timeUnit);
            } catch (Throwable th) {
                boolean isMarkedReusable2 = basicPooledConnAdapter.isMarkedReusable();
                if (this.f110826e.isDebugEnabled()) {
                    if (isMarkedReusable2) {
                        this.f110826e.debug("Released connection is reusable.");
                    } else {
                        this.f110826e.debug("Released connection is not reusable.");
                    }
                }
                basicPooledConnAdapter.detach();
                this.pool.freeEntry(basicPoolEntry, isMarkedReusable2, j, timeUnit);
                throw th;
            }
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        return new C19378a(this.pool.requestPoolEntry(httpRoute, obj), httpRoute);
    }

    public void setDefaultMaxPerRoute(int i) {
        this.connPerRoute.setDefaultMaxPerRoute(i);
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i) {
        this.connPerRoute.setMaxForRoute(httpRoute, i);
    }

    public void setMaxTotal(int i) {
        this.pool.setMaxTotalConnections(i);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        this.f110826e.debug("Shutting down");
        this.pool.shutdown();
    }

    public ThreadSafeClientConnManager() {
        this(SchemeRegistryFactory.createDefault());
    }

    public ConnPoolByRoute createConnectionPool(long j, TimeUnit timeUnit) {
        return new ConnPoolByRoute(this.connOperator, this.connPerRoute, 20, j, timeUnit);
    }

    public int getConnectionsInPool() {
        return this.pool.getConnectionsInPool();
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry, long j, TimeUnit timeUnit) {
        this(schemeRegistry, j, timeUnit, new ConnPerRouteBean());
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry, long j, TimeUnit timeUnit, ConnPerRouteBean connPerRouteBean) {
        Args.notNull(schemeRegistry, "Scheme registry");
        this.f110826e = LogFactory.getLog(getClass());
        this.schemeRegistry = schemeRegistry;
        this.connPerRoute = connPerRouteBean;
        this.connOperator = createConnectionOperator(schemeRegistry);
        ConnPoolByRoute createConnectionPool = createConnectionPool(j, timeUnit);
        this.pool = createConnectionPool;
        this.connectionPool = createConnectionPool;
    }

    @Deprecated
    public ThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
        Args.notNull(schemeRegistry, "Scheme registry");
        this.f110826e = LogFactory.getLog(getClass());
        this.schemeRegistry = schemeRegistry;
        this.connPerRoute = new ConnPerRouteBean();
        this.connOperator = createConnectionOperator(schemeRegistry);
        ConnPoolByRoute connPoolByRoute = (ConnPoolByRoute) createConnectionPool(httpParams);
        this.pool = connPoolByRoute;
        this.connectionPool = connPoolByRoute;
    }
}
