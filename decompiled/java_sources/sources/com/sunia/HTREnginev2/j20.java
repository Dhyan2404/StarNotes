package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.PoolEntry;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class j20 extends PoolEntry<HttpRoute, ManagedHttpClientConnection> {

    /* renamed from: i */
    public final Log f73849i;

    /* renamed from: j */
    public volatile boolean f73850j;

    public j20(Log log, String str, HttpRoute httpRoute, ManagedHttpClientConnection managedHttpClientConnection, long j, TimeUnit timeUnit) {
        super(str, httpRoute, managedHttpClientConnection, j, timeUnit);
        this.f73849i = log;
    }

    /* renamed from: a */
    public void m54862a() throws IOException {
        getConnection().close();
    }

    /* renamed from: b */
    public boolean m54863b() {
        return this.f73850j;
    }

    /* renamed from: c */
    public void m54864c() {
        this.f73850j = true;
    }

    @Override // org.apache.http.pool.PoolEntry
    public void close() {
        try {
            m54862a();
        } catch (IOException e) {
            this.f73849i.debug("I/O error closing connection", e);
        }
    }

    /* renamed from: d */
    public void m54865d() throws IOException {
        getConnection().shutdown();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isClosed() {
        return !getConnection().isOpen();
    }

    @Override // org.apache.http.pool.PoolEntry
    public boolean isExpired(long j) {
        boolean isExpired = super.isExpired(j);
        if (isExpired && this.f73849i.isDebugEnabled()) {
            this.f73849i.debug("Connection " + this + " expired @ " + new Date(getExpiry()));
        }
        return isExpired;
    }
}
