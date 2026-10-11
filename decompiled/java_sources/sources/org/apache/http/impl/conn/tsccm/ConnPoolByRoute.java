package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
/* loaded from: classes12.dex */
public class ConnPoolByRoute extends AbstractConnPool {

    /* renamed from: b */
    public final Log f110816b;

    /* renamed from: c */
    public final Lock f110817c;
    protected final ConnPerRoute connPerRoute;

    /* renamed from: d */
    public final long f110818d;

    /* renamed from: e */
    public final TimeUnit f110819e;
    protected final Queue<BasicPoolEntry> freeConnections;
    protected final Set<BasicPoolEntry> leasedConnections;
    protected volatile int maxTotalConnections;
    protected volatile int numConnections;
    protected final ClientConnectionOperator operator;
    protected final Map<HttpRoute, RouteSpecificPool> routeToPool;
    protected volatile boolean shutdown;
    protected final Queue<WaitingThread> waitingThreads;

    /* renamed from: org.apache.http.impl.conn.tsccm.ConnPoolByRoute$a */
    /* loaded from: classes12.dex */
    public class C19376a implements PoolEntryRequest {

        /* renamed from: a */
        public final /* synthetic */ WaitingThreadAborter f110820a;

        /* renamed from: b */
        public final /* synthetic */ HttpRoute f110821b;

        /* renamed from: c */
        public final /* synthetic */ Object f110822c;

        public C19376a(WaitingThreadAborter waitingThreadAborter, HttpRoute httpRoute, Object obj) {
            this.f110820a = waitingThreadAborter;
            this.f110821b = httpRoute;
            this.f110822c = obj;
        }

        @Override // org.apache.http.impl.conn.tsccm.PoolEntryRequest
        public void abortRequest() {
            ConnPoolByRoute.this.f110817c.lock();
            try {
                this.f110820a.abort();
            } finally {
                ConnPoolByRoute.this.f110817c.unlock();
            }
        }

        @Override // org.apache.http.impl.conn.tsccm.PoolEntryRequest
        public BasicPoolEntry getPoolEntry(long j, TimeUnit timeUnit) throws InterruptedException, ConnectionPoolTimeoutException {
            return ConnPoolByRoute.this.getEntryBlocking(this.f110821b, this.f110822c, j, timeUnit, this.f110820a);
        }
    }

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, ConnPerRoute connPerRoute, int i) {
        this(clientConnectionOperator, connPerRoute, i, -1L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: b */
    public final void m68542b(BasicPoolEntry basicPoolEntry) {
        OperatedClientConnection connection = basicPoolEntry.getConnection();
        if (connection != null) {
            try {
                connection.close();
            } catch (IOException e) {
                this.f110816b.debug("I/O error closing connection", e);
            }
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void closeExpiredConnections() {
        this.f110816b.debug("Closing expired connections");
        long currentTimeMillis = System.currentTimeMillis();
        this.f110817c.lock();
        try {
            Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                if (next.isExpired(currentTimeMillis)) {
                    if (this.f110816b.isDebugEnabled()) {
                        this.f110816b.debug("Closing connection expired @ " + new Date(next.getExpiry()));
                    }
                    it2.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.f110817c.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        if (j <= 0) {
            j = 0;
        }
        if (this.f110816b.isDebugEnabled()) {
            this.f110816b.debug("Closing connections idle longer than " + j + " " + timeUnit);
        }
        long currentTimeMillis = System.currentTimeMillis() - timeUnit.toMillis(j);
        this.f110817c.lock();
        try {
            Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                if (next.getUpdated() <= currentTimeMillis) {
                    if (this.f110816b.isDebugEnabled()) {
                        this.f110816b.debug("Closing connection last used @ " + new Date(next.getUpdated()));
                    }
                    it2.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.f110817c.unlock();
        }
    }

    public BasicPoolEntry createEntry(RouteSpecificPool routeSpecificPool, ClientConnectionOperator clientConnectionOperator) {
        if (this.f110816b.isDebugEnabled()) {
            this.f110816b.debug("Creating new connection [" + routeSpecificPool.getRoute() + IteratorUtils.f104924b);
        }
        BasicPoolEntry basicPoolEntry = new BasicPoolEntry(clientConnectionOperator, routeSpecificPool.getRoute(), this.f110818d, this.f110819e);
        this.f110817c.lock();
        try {
            routeSpecificPool.createdEntry(basicPoolEntry);
            this.numConnections++;
            this.leasedConnections.add(basicPoolEntry);
            return basicPoolEntry;
        } finally {
            this.f110817c.unlock();
        }
    }

    public Queue<BasicPoolEntry> createFreeConnQueue() {
        return new LinkedList();
    }

    public Map<HttpRoute, RouteSpecificPool> createRouteToPoolMap() {
        return new HashMap();
    }

    public Queue<WaitingThread> createWaitingThreadQueue() {
        return new LinkedList();
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void deleteClosedConnections() {
        this.f110817c.lock();
        try {
            Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                if (!next.getConnection().isOpen()) {
                    it2.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.f110817c.unlock();
        }
    }

    public void deleteEntry(BasicPoolEntry basicPoolEntry) {
        HttpRoute plannedRoute = basicPoolEntry.getPlannedRoute();
        if (this.f110816b.isDebugEnabled()) {
            this.f110816b.debug("Deleting connection [" + plannedRoute + "][" + basicPoolEntry.getState() + IteratorUtils.f104924b);
        }
        this.f110817c.lock();
        try {
            m68542b(basicPoolEntry);
            RouteSpecificPool routePool = getRoutePool(plannedRoute, true);
            routePool.deleteEntry(basicPoolEntry);
            this.numConnections--;
            if (routePool.isUnused()) {
                this.routeToPool.remove(plannedRoute);
            }
        } finally {
            this.f110817c.unlock();
        }
    }

    public void deleteLeastUsedEntry() {
        this.f110817c.lock();
        try {
            BasicPoolEntry remove = this.freeConnections.remove();
            if (remove != null) {
                deleteEntry(remove);
            } else if (this.f110816b.isDebugEnabled()) {
                this.f110816b.debug("No free connection to delete");
            }
        } finally {
            this.f110817c.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void freeEntry(BasicPoolEntry basicPoolEntry, boolean z, long j, TimeUnit timeUnit) {
        String str;
        HttpRoute plannedRoute = basicPoolEntry.getPlannedRoute();
        if (this.f110816b.isDebugEnabled()) {
            this.f110816b.debug("Releasing connection [" + plannedRoute + "][" + basicPoolEntry.getState() + IteratorUtils.f104924b);
        }
        this.f110817c.lock();
        try {
            if (this.shutdown) {
                m68542b(basicPoolEntry);
                return;
            }
            this.leasedConnections.remove(basicPoolEntry);
            RouteSpecificPool routePool = getRoutePool(plannedRoute, true);
            if (!z || routePool.getCapacity() < 0) {
                m68542b(basicPoolEntry);
                routePool.dropEntry();
                this.numConnections--;
            } else {
                if (this.f110816b.isDebugEnabled()) {
                    if (j > 0) {
                        str = "for " + j + " " + timeUnit;
                    } else {
                        str = "indefinitely";
                    }
                    this.f110816b.debug("Pooling connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]; keep alive " + str);
                }
                routePool.freeEntry(basicPoolEntry);
                basicPoolEntry.updateExpiry(j, timeUnit);
                this.freeConnections.add(basicPoolEntry);
            }
            notifyWaitingThread(routePool);
        } finally {
            this.f110817c.unlock();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        this.f110817c.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, false);
            return routePool != null ? routePool.getEntryCount() : 0;
        } finally {
            this.f110817c.unlock();
        }
    }

    public BasicPoolEntry getEntryBlocking(HttpRoute httpRoute, Object obj, long j, TimeUnit timeUnit, WaitingThreadAborter waitingThreadAborter) throws ConnectionPoolTimeoutException, InterruptedException {
        BasicPoolEntry basicPoolEntry = null;
        Date date = j > 0 ? new Date(System.currentTimeMillis() + timeUnit.toMillis(j)) : null;
        this.f110817c.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, true);
            WaitingThread waitingThread = null;
            while (basicPoolEntry == null) {
                Asserts.check(!this.shutdown, "Connection pool shut down");
                if (this.f110816b.isDebugEnabled()) {
                    this.f110816b.debug(IteratorUtils.f104923a + httpRoute + "] total kept alive: " + this.freeConnections.size() + ", total issued: " + this.leasedConnections.size() + ", total allocated: " + this.numConnections + " out of " + this.maxTotalConnections);
                }
                basicPoolEntry = getFreeEntry(routePool, obj);
                if (basicPoolEntry != null) {
                    break;
                }
                boolean z = routePool.getCapacity() > 0;
                if (this.f110816b.isDebugEnabled()) {
                    this.f110816b.debug("Available capacity: " + routePool.getCapacity() + " out of " + routePool.getMaxEntries() + " [" + httpRoute + "][" + obj + IteratorUtils.f104924b);
                }
                if (z && this.numConnections < this.maxTotalConnections) {
                    basicPoolEntry = createEntry(routePool, this.operator);
                } else if (!z || this.freeConnections.isEmpty()) {
                    if (this.f110816b.isDebugEnabled()) {
                        this.f110816b.debug("Need to wait for connection [" + httpRoute + "][" + obj + IteratorUtils.f104924b);
                    }
                    if (waitingThread == null) {
                        waitingThread = newWaitingThread(this.f110817c.newCondition(), routePool);
                        waitingThreadAborter.setWaitingThread(waitingThread);
                    }
                    try {
                        routePool.queueThread(waitingThread);
                        this.waitingThreads.add(waitingThread);
                        if (!waitingThread.await(date) && date != null && date.getTime() <= System.currentTimeMillis()) {
                            throw new ConnectionPoolTimeoutException("Timeout waiting for connection from pool");
                        }
                    } finally {
                        routePool.removeThread(waitingThread);
                        this.waitingThreads.remove(waitingThread);
                    }
                } else {
                    deleteLeastUsedEntry();
                    routePool = getRoutePool(httpRoute, true);
                    basicPoolEntry = createEntry(routePool, this.operator);
                }
            }
            return basicPoolEntry;
        } finally {
            this.f110817c.unlock();
        }
    }

    public BasicPoolEntry getFreeEntry(RouteSpecificPool routeSpecificPool, Object obj) {
        this.f110817c.lock();
        BasicPoolEntry basicPoolEntry = null;
        boolean z = false;
        while (!z) {
            try {
                basicPoolEntry = routeSpecificPool.allocEntry(obj);
                if (basicPoolEntry != null) {
                    if (this.f110816b.isDebugEnabled()) {
                        this.f110816b.debug("Getting free connection [" + routeSpecificPool.getRoute() + "][" + obj + IteratorUtils.f104924b);
                    }
                    this.freeConnections.remove(basicPoolEntry);
                    if (basicPoolEntry.isExpired(System.currentTimeMillis())) {
                        if (this.f110816b.isDebugEnabled()) {
                            this.f110816b.debug("Closing expired free connection [" + routeSpecificPool.getRoute() + "][" + obj + IteratorUtils.f104924b);
                        }
                        m68542b(basicPoolEntry);
                        routeSpecificPool.dropEntry();
                        this.numConnections--;
                    } else {
                        this.leasedConnections.add(basicPoolEntry);
                    }
                } else if (this.f110816b.isDebugEnabled()) {
                    this.f110816b.debug("No free connections [" + routeSpecificPool.getRoute() + "][" + obj + IteratorUtils.f104924b);
                }
                z = true;
            } finally {
                this.f110817c.unlock();
            }
        }
        return basicPoolEntry;
    }

    public Lock getLock() {
        return this.f110817c;
    }

    public int getMaxTotalConnections() {
        return this.maxTotalConnections;
    }

    public RouteSpecificPool getRoutePool(HttpRoute httpRoute, boolean z) {
        this.f110817c.lock();
        try {
            RouteSpecificPool routeSpecificPool = this.routeToPool.get(httpRoute);
            if (routeSpecificPool == null && z) {
                routeSpecificPool = newRouteSpecificPool(httpRoute);
                this.routeToPool.put(httpRoute, routeSpecificPool);
            }
            return routeSpecificPool;
        } finally {
            this.f110817c.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void handleLostEntry(HttpRoute httpRoute) {
        this.f110817c.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, true);
            routePool.dropEntry();
            if (routePool.isUnused()) {
                this.routeToPool.remove(httpRoute);
            }
            this.numConnections--;
            notifyWaitingThread(routePool);
        } finally {
            this.f110817c.unlock();
        }
    }

    public RouteSpecificPool newRouteSpecificPool(HttpRoute httpRoute) {
        return new RouteSpecificPool(httpRoute, this.connPerRoute);
    }

    public WaitingThread newWaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        return new WaitingThread(condition, routeSpecificPool);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006b A[Catch: all -> 0x0074, TRY_LEAVE, TryCatch #0 {all -> 0x0074, blocks: (B:23:0x0007, B:25:0x000d, B:27:0x0015, B:28:0x0034, B:10:0x006b, B:3:0x0039, B:5:0x0041, B:7:0x0049, B:8:0x0050, B:18:0x0059, B:20:0x0061), top: B:22:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void notifyWaitingThread(org.apache.http.impl.conn.tsccm.RouteSpecificPool r4) {
        /*
            r3 = this;
            java.util.concurrent.locks.Lock r0 = r3.f110817c
            r0.lock()
            if (r4 == 0) goto L39
            boolean r0 = r4.hasThread()     // Catch: java.lang.Throwable -> L74
            if (r0 == 0) goto L39
            org.apache.commons.logging.Log r0 = r3.f110816b     // Catch: java.lang.Throwable -> L74
            boolean r0 = r0.isDebugEnabled()     // Catch: java.lang.Throwable -> L74
            if (r0 == 0) goto L34
            org.apache.commons.logging.Log r0 = r3.f110816b     // Catch: java.lang.Throwable -> L74
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r1.<init>()     // Catch: java.lang.Throwable -> L74
            java.lang.String r2 = "Notifying thread waiting on pool ["
            r1.append(r2)     // Catch: java.lang.Throwable -> L74
            org.apache.http.conn.routing.HttpRoute r2 = r4.getRoute()     // Catch: java.lang.Throwable -> L74
            r1.append(r2)     // Catch: java.lang.Throwable -> L74
            java.lang.String r2 = "]"
            r1.append(r2)     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L74
            r0.debug(r1)     // Catch: java.lang.Throwable -> L74
        L34:
            org.apache.http.impl.conn.tsccm.WaitingThread r4 = r4.nextThread()     // Catch: java.lang.Throwable -> L74
            goto L69
        L39:
            java.util.Queue<org.apache.http.impl.conn.tsccm.WaitingThread> r4 = r3.waitingThreads     // Catch: java.lang.Throwable -> L74
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L74
            if (r4 != 0) goto L59
            org.apache.commons.logging.Log r4 = r3.f110816b     // Catch: java.lang.Throwable -> L74
            boolean r4 = r4.isDebugEnabled()     // Catch: java.lang.Throwable -> L74
            if (r4 == 0) goto L50
            org.apache.commons.logging.Log r4 = r3.f110816b     // Catch: java.lang.Throwable -> L74
            java.lang.String r0 = "Notifying thread waiting on any pool"
            r4.debug(r0)     // Catch: java.lang.Throwable -> L74
        L50:
            java.util.Queue<org.apache.http.impl.conn.tsccm.WaitingThread> r4 = r3.waitingThreads     // Catch: java.lang.Throwable -> L74
            java.lang.Object r4 = r4.remove()     // Catch: java.lang.Throwable -> L74
            org.apache.http.impl.conn.tsccm.WaitingThread r4 = (org.apache.http.impl.conn.tsccm.WaitingThread) r4     // Catch: java.lang.Throwable -> L74
            goto L69
        L59:
            org.apache.commons.logging.Log r4 = r3.f110816b     // Catch: java.lang.Throwable -> L74
            boolean r4 = r4.isDebugEnabled()     // Catch: java.lang.Throwable -> L74
            if (r4 == 0) goto L68
            org.apache.commons.logging.Log r4 = r3.f110816b     // Catch: java.lang.Throwable -> L74
            java.lang.String r0 = "Notifying no-one, there are no waiting threads"
            r4.debug(r0)     // Catch: java.lang.Throwable -> L74
        L68:
            r4 = 0
        L69:
            if (r4 == 0) goto L6e
            r4.wakeup()     // Catch: java.lang.Throwable -> L74
        L6e:
            java.util.concurrent.locks.Lock r3 = r3.f110817c
            r3.unlock()
            return
        L74:
            r4 = move-exception
            java.util.concurrent.locks.Lock r3 = r3.f110817c
            r3.unlock()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.conn.tsccm.ConnPoolByRoute.notifyWaitingThread(org.apache.http.impl.conn.tsccm.RouteSpecificPool):void");
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public PoolEntryRequest requestPoolEntry(HttpRoute httpRoute, Object obj) {
        return new C19376a(new WaitingThreadAborter(), httpRoute, obj);
    }

    public void setMaxTotalConnections(int i) {
        this.f110817c.lock();
        try {
            this.maxTotalConnections = i;
        } finally {
            this.f110817c.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void shutdown() {
        this.f110817c.lock();
        try {
            if (this.shutdown) {
                return;
            }
            this.shutdown = true;
            Iterator<BasicPoolEntry> it2 = this.leasedConnections.iterator();
            while (it2.hasNext()) {
                BasicPoolEntry next = it2.next();
                it2.remove();
                m68542b(next);
            }
            Iterator<BasicPoolEntry> it3 = this.freeConnections.iterator();
            while (it3.hasNext()) {
                BasicPoolEntry next2 = it3.next();
                it3.remove();
                if (this.f110816b.isDebugEnabled()) {
                    this.f110816b.debug("Closing connection [" + next2.getPlannedRoute() + "][" + next2.getState() + IteratorUtils.f104924b);
                }
                m68542b(next2);
            }
            Iterator<WaitingThread> it4 = this.waitingThreads.iterator();
            while (it4.hasNext()) {
                WaitingThread next3 = it4.next();
                it4.remove();
                next3.wakeup();
            }
            this.routeToPool.clear();
        } finally {
            this.f110817c.unlock();
        }
    }

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, ConnPerRoute connPerRoute, int i, long j, TimeUnit timeUnit) {
        this.f110816b = LogFactory.getLog(getClass());
        Args.notNull(clientConnectionOperator, "Connection operator");
        Args.notNull(connPerRoute, "Connections per route");
        this.f110817c = this.poolLock;
        this.leasedConnections = super.leasedConnections;
        this.operator = clientConnectionOperator;
        this.connPerRoute = connPerRoute;
        this.maxTotalConnections = i;
        this.freeConnections = createFreeConnQueue();
        this.waitingThreads = createWaitingThreadQueue();
        this.routeToPool = createRouteToPoolMap();
        this.f110818d = j;
        this.f110819e = timeUnit;
    }

    public int getConnectionsInPool() {
        this.f110817c.lock();
        try {
            return this.numConnections;
        } finally {
            this.f110817c.unlock();
        }
    }

    @Deprecated
    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, HttpParams httpParams) {
        this(clientConnectionOperator, ConnManagerParams.getMaxConnectionsPerRoute(httpParams), ConnManagerParams.getMaxTotalConnections(httpParams));
    }
}
