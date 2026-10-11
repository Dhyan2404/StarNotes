package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.pool.PoolEntry;

@Deprecated
/* loaded from: classes12.dex */
public class j0i extends PoolEntry<HttpRoute, OperatedClientConnection> {

    /* renamed from: i */
    public final Log f73818i;

    /* renamed from: j */
    public final RouteTracker f73819j;

    public j0i(Log log, String str, HttpRoute httpRoute, OperatedClientConnection operatedClientConnection, long j, TimeUnit timeUnit) {
        super(str, httpRoute, operatedClientConnection, j, timeUnit);
        this.f73818i = log;
        this.f73819j = new RouteTracker(httpRoute);
    }

    /* renamed from: a */
    public HttpRoute m54847a() {
        return this.f73819j.toRoute();
    }

    /* renamed from: b */
    public HttpRoute m54848b() {
        return getRoute();
    }

    /* renamed from: c */
    public RouteTracker m54849c() {
        return this.f73819j;
    }

    @Override // org.apache.http.pool.PoolEntry
    public void close() {
        try {
            getConnection().close();
        } catch (IOException e) {
            this.f73818i.debug("I/O error closing connection", e);
        }
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isClosed() {
        return !getConnection().isOpen();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isExpired(long j) {
        boolean isExpired = super.isExpired(j);
        if (isExpired && this.f73818i.isDebugEnabled()) {
            this.f73818i.debug("Connection " + this + " expired @ " + new Date(getExpiry()));
        }
        return isExpired;
    }
}
