package org.apache.http.impl.client;

import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes12.dex */
public final class FutureRequestExecutionMetrics {

    /* renamed from: a */
    public final AtomicLong f110589a = new AtomicLong();

    /* renamed from: b */
    public final AtomicLong f110590b = new AtomicLong();

    /* renamed from: c */
    public final C19359a f110591c = new C19359a();

    /* renamed from: d */
    public final C19359a f110592d = new C19359a();

    /* renamed from: e */
    public final C19359a f110593e = new C19359a();

    /* renamed from: f */
    public final C19359a f110594f = new C19359a();

    /* renamed from: org.apache.http.impl.client.FutureRequestExecutionMetrics$a */
    /* loaded from: classes12.dex */
    public static class C19359a {

        /* renamed from: a */
        public final AtomicLong f110595a = new AtomicLong(0);

        /* renamed from: b */
        public final AtomicLong f110596b = new AtomicLong(0);

        /* renamed from: a */
        public long m68493a() {
            long j = this.f110595a.get();
            if (j > 0) {
                return this.f110596b.get() / j;
            }
            return 0L;
        }

        /* renamed from: b */
        public long m68494b() {
            return this.f110595a.get();
        }

        /* renamed from: c */
        public void m68495c(long j) {
            this.f110595a.incrementAndGet();
            this.f110596b.addAndGet(System.currentTimeMillis() - j);
        }

        public String toString() {
            return "[count=" + m68494b() + ", averageDuration=" + m68493a() + IteratorUtils.f104924b;
        }
    }

    /* renamed from: a */
    public AtomicLong m68487a() {
        return this.f110589a;
    }

    /* renamed from: b */
    public C19359a m68488b() {
        return this.f110592d;
    }

    /* renamed from: c */
    public C19359a m68489c() {
        return this.f110593e;
    }

    /* renamed from: d */
    public AtomicLong m68490d() {
        return this.f110590b;
    }

    /* renamed from: e */
    public C19359a m68491e() {
        return this.f110591c;
    }

    /* renamed from: f */
    public C19359a m68492f() {
        return this.f110594f;
    }

    public long getActiveConnectionCount() {
        return this.f110589a.get();
    }

    public long getFailedConnectionAverageDuration() {
        return this.f110592d.m68493a();
    }

    public long getFailedConnectionCount() {
        return this.f110592d.m68494b();
    }

    public long getRequestAverageDuration() {
        return this.f110593e.m68493a();
    }

    public long getRequestCount() {
        return this.f110593e.m68494b();
    }

    public long getScheduledConnectionCount() {
        return this.f110590b.get();
    }

    public long getSuccessfulConnectionAverageDuration() {
        return this.f110591c.m68493a();
    }

    public long getSuccessfulConnectionCount() {
        return this.f110591c.m68494b();
    }

    public long getTaskAverageDuration() {
        return this.f110594f.m68493a();
    }

    public long getTaskCount() {
        return this.f110594f.m68494b();
    }

    public String toString() {
        return "[activeConnections=" + this.f110589a + ", scheduledConnections=" + this.f110590b + ", successfulConnections=" + this.f110591c + ", failedConnections=" + this.f110592d + ", requests=" + this.f110593e + ", tasks=" + this.f110594f + IteratorUtils.f104924b;
    }
}
