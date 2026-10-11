package org.apache.http.pool;

import java.util.concurrent.TimeUnit;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.SAFE_CONDITIONAL)
/* loaded from: classes12.dex */
public abstract class PoolEntry<T, C> {

    /* renamed from: a */
    public final String f111106a;

    /* renamed from: b */
    public final T f111107b;

    /* renamed from: c */
    public final C f111108c;

    /* renamed from: d */
    public final long f111109d;

    /* renamed from: e */
    public final long f111110e;

    /* renamed from: f */
    public long f111111f;

    /* renamed from: g */
    public long f111112g;

    /* renamed from: h */
    public volatile Object f111113h;

    public PoolEntry(String str, T t, C c, long j, TimeUnit timeUnit) {
        Args.notNull(t, "Route");
        Args.notNull(c, "Connection");
        Args.notNull(timeUnit, "Time unit");
        this.f111106a = str;
        this.f111107b = t;
        this.f111108c = c;
        long currentTimeMillis = System.currentTimeMillis();
        this.f111109d = currentTimeMillis;
        this.f111111f = currentTimeMillis;
        if (j > 0) {
            long millis = currentTimeMillis + timeUnit.toMillis(j);
            this.f111110e = millis > 0 ? millis : Long.MAX_VALUE;
        } else {
            this.f111110e = Long.MAX_VALUE;
        }
        this.f111112g = this.f111110e;
    }

    public abstract void close();

    public C getConnection() {
        return this.f111108c;
    }

    public long getCreated() {
        return this.f111109d;
    }

    public synchronized long getExpiry() {
        return this.f111112g;
    }

    public String getId() {
        return this.f111106a;
    }

    public T getRoute() {
        return this.f111107b;
    }

    public Object getState() {
        return this.f111113h;
    }

    public synchronized long getUpdated() {
        return this.f111111f;
    }

    @Deprecated
    public long getValidUnit() {
        return this.f111110e;
    }

    public long getValidityDeadline() {
        return this.f111110e;
    }

    public abstract boolean isClosed();

    public synchronized boolean isExpired(long j) {
        return j >= this.f111112g;
    }

    public void setState(Object obj) {
        this.f111113h = obj;
    }

    public String toString() {
        return "[id:" + this.f111106a + "][route:" + this.f111107b + "][state:" + this.f111113h + IteratorUtils.f104924b;
    }

    public synchronized void updateExpiry(long j, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        long currentTimeMillis = System.currentTimeMillis();
        this.f111111f = currentTimeMillis;
        this.f111112g = Math.min(j > 0 ? currentTimeMillis + timeUnit.toMillis(j) : Long.MAX_VALUE, this.f111110e);
    }

    public PoolEntry(String str, T t, C c) {
        this(str, t, c, 0L, TimeUnit.MILLISECONDS);
    }
}
