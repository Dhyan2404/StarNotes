package org.apache.http.impl.conn.tsccm;

import java.lang.ref.ReferenceQueue;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.util.Args;

@Deprecated
/* loaded from: classes12.dex */
public class BasicPoolEntry extends AbstractPoolEntry {

    /* renamed from: a */
    public final long f110811a;

    /* renamed from: b */
    public long f110812b;

    /* renamed from: c */
    public final long f110813c;

    /* renamed from: d */
    public long f110814d;

    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute, ReferenceQueue<Object> referenceQueue) {
        super(clientConnectionOperator, httpRoute);
        Args.notNull(httpRoute, "HTTP route");
        this.f110811a = System.currentTimeMillis();
        this.f110813c = Long.MAX_VALUE;
        this.f110814d = Long.MAX_VALUE;
    }

    public final OperatedClientConnection getConnection() {
        return this.connection;
    }

    public long getCreated() {
        return this.f110811a;
    }

    public long getExpiry() {
        return this.f110814d;
    }

    public final HttpRoute getPlannedRoute() {
        return this.route;
    }

    public long getUpdated() {
        return this.f110812b;
    }

    public long getValidUntil() {
        return this.f110813c;
    }

    public final BasicPoolEntryRef getWeakRef() {
        return null;
    }

    public boolean isExpired(long j) {
        return j >= this.f110814d;
    }

    @Override // org.apache.http.impl.conn.AbstractPoolEntry
    public void shutdownEntry() {
        super.shutdownEntry();
    }

    public void updateExpiry(long j, TimeUnit timeUnit) {
        long currentTimeMillis = System.currentTimeMillis();
        this.f110812b = currentTimeMillis;
        this.f110814d = Math.min(this.f110813c, j > 0 ? currentTimeMillis + timeUnit.toMillis(j) : Long.MAX_VALUE);
    }

    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute) {
        this(clientConnectionOperator, httpRoute, -1L, TimeUnit.MILLISECONDS);
    }

    public BasicPoolEntry(ClientConnectionOperator clientConnectionOperator, HttpRoute httpRoute, long j, TimeUnit timeUnit) {
        super(clientConnectionOperator, httpRoute);
        Args.notNull(httpRoute, "HTTP route");
        long currentTimeMillis = System.currentTimeMillis();
        this.f110811a = currentTimeMillis;
        if (j > 0) {
            this.f110813c = currentTimeMillis + timeUnit.toMillis(j);
        } else {
            this.f110813c = Long.MAX_VALUE;
        }
        this.f110814d = this.f110813c;
    }
}
