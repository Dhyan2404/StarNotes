package com.sunia.HTREnginev2;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.AbstractConnPool;
import org.apache.http.pool.ConnFactory;
import org.apache.http.pool.PoolEntryCallback;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class i20 extends AbstractConnPool<HttpRoute, ManagedHttpClientConnection, j20> {

    /* renamed from: t */
    public static final AtomicLong f72793t = new AtomicLong();

    /* renamed from: q */
    public final Log f72794q;

    /* renamed from: r */
    public final long f72795r;

    /* renamed from: s */
    public final TimeUnit f72796s;

    public i20(ConnFactory<HttpRoute, ManagedHttpClientConnection> connFactory, int i, int i2, long j, TimeUnit timeUnit) {
        super(connFactory, i, i2);
        this.f72794q = LogFactory.getLog(i20.class);
        this.f72795r = j;
        this.f72796s = timeUnit;
    }

    @Override // org.apache.http.pool.AbstractConnPool
    public void enumAvailable(PoolEntryCallback<HttpRoute, ManagedHttpClientConnection> poolEntryCallback) {
        super.enumAvailable(poolEntryCallback);
    }

    @Override // org.apache.http.pool.AbstractConnPool
    public void enumLeased(PoolEntryCallback<HttpRoute, ManagedHttpClientConnection> poolEntryCallback) {
        super.enumLeased(poolEntryCallback);
    }

    @Override // org.apache.http.pool.AbstractConnPool
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public j20 createEntry(HttpRoute httpRoute, ManagedHttpClientConnection managedHttpClientConnection) {
        return new j20(this.f72794q, Long.toString(f72793t.getAndIncrement()), httpRoute, managedHttpClientConnection, this.f72795r, this.f72796s);
    }

    @Override // org.apache.http.pool.AbstractConnPool
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public boolean validate(j20 j20Var) {
        return !j20Var.getConnection().isStale();
    }
}
