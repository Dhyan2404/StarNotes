package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.util.concurrent.AbstractC6418j;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.ipi;
import com.sunia.HTREnginev2.pnf;
import java.time.Duration;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public abstract class RateLimiter {

    /* renamed from: a */
    public final AbstractC6387a f35386a;

    /* renamed from: b */
    @CheckForNull
    public volatile Object f35387b;

    /* renamed from: com.google.common.util.concurrent.RateLimiter$a */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6387a {

        /* renamed from: com.google.common.util.concurrent.RateLimiter$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC6387a {

            /* renamed from: a */
            public final Stopwatch f35388a = Stopwatch.createStarted();

            @Override // com.google.common.util.concurrent.RateLimiter.AbstractC6387a
            /* renamed from: b */
            public long mo27781b() {
                return this.f35388a.elapsed(TimeUnit.MICROSECONDS);
            }

            @Override // com.google.common.util.concurrent.RateLimiter.AbstractC6387a
            /* renamed from: c */
            public void mo27782c(long j) {
                if (j > 0) {
                    Uninterruptibles.sleepUninterruptibly(j, TimeUnit.MICROSECONDS);
                }
            }
        }

        /* renamed from: a */
        public static AbstractC6387a m27780a() {
            return new a();
        }

        /* renamed from: b */
        public abstract long mo27781b();

        /* renamed from: c */
        public abstract void mo27782c(long j);
    }

    public RateLimiter(AbstractC6387a abstractC6387a) {
        this.f35386a = (AbstractC6387a) Preconditions.checkNotNull(abstractC6387a);
    }

    /* renamed from: b */
    public static void m27769b(int i) {
        Preconditions.checkArgument(i > 0, "Requested permits (%s) must be positive", i);
    }

    @VisibleForTesting
    /* renamed from: c */
    public static RateLimiter m27770c(double d, long j, TimeUnit timeUnit, double d2, AbstractC6387a abstractC6387a) {
        AbstractC6418j.c cVar = new AbstractC6418j.c(abstractC6387a, j, timeUnit, d2);
        cVar.setRate(d);
        return cVar;
    }

    public static RateLimiter create(double d) {
        return m27771d(d, AbstractC6387a.m27780a());
    }

    @VisibleForTesting
    /* renamed from: d */
    public static RateLimiter m27771d(double d, AbstractC6387a abstractC6387a) {
        AbstractC6418j.b bVar = new AbstractC6418j.b(abstractC6387a, 1.0d);
        bVar.setRate(d);
        return bVar;
    }

    /* renamed from: a */
    public final boolean m27772a(long j, long j2) {
        return mo27776h(j) - j2 <= j;
    }

    @CanIgnoreReturnValue
    public double acquire() {
        return acquire(1);
    }

    /* renamed from: e */
    public abstract double mo27773e();

    /* renamed from: f */
    public abstract void mo27774f(double d, long j);

    /* renamed from: g */
    public final Object m27775g() {
        Object obj = this.f35387b;
        if (obj == null) {
            synchronized (this) {
                obj = this.f35387b;
                if (obj == null) {
                    obj = new Object();
                    this.f35387b = obj;
                }
            }
        }
        return obj;
    }

    public final double getRate() {
        double mo27773e;
        synchronized (m27775g()) {
            mo27773e = mo27773e();
        }
        return mo27773e;
    }

    /* renamed from: h */
    public abstract long mo27776h(long j);

    /* renamed from: i */
    public final long m27777i(int i) {
        long m27778j;
        m27769b(i);
        synchronized (m27775g()) {
            m27778j = m27778j(i, this.f35386a.mo27781b());
        }
        return m27778j;
    }

    /* renamed from: j */
    public final long m27778j(int i, long j) {
        return Math.max(mo27779k(i, j) - j, 0L);
    }

    /* renamed from: k */
    public abstract long mo27779k(int i, long j);

    public final void setRate(double d) {
        Preconditions.checkArgument(d > 0.0d && !Double.isNaN(d), "rate must be positive");
        synchronized (m27775g()) {
            mo27774f(d, this.f35386a.mo27781b());
        }
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(getRate()));
    }

    public boolean tryAcquire(Duration duration) {
        return tryAcquire(1, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public static RateLimiter create(double d, Duration duration) {
        return create(d, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    @CanIgnoreReturnValue
    public double acquire(int i) {
        long m27777i = m27777i(i);
        this.f35386a.mo27782c(m27777i);
        return (m27777i * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }

    public boolean tryAcquire(long j, TimeUnit timeUnit) {
        return tryAcquire(1, j, timeUnit);
    }

    public static RateLimiter create(double d, long j, TimeUnit timeUnit) {
        Preconditions.checkArgument(j >= 0, "warmupPeriod must not be negative: %s", j);
        return m27770c(d, j, timeUnit, 3.0d, AbstractC6387a.m27780a());
    }

    public boolean tryAcquire(int i) {
        return tryAcquire(i, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire() {
        return tryAcquire(1, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire(int i, Duration duration) {
        return tryAcquire(i, ipi.m54767a(duration), TimeUnit.NANOSECONDS);
    }

    public boolean tryAcquire(int i, long j, TimeUnit timeUnit) {
        long max = Math.max(timeUnit.toMicros(j), 0L);
        m27769b(i);
        synchronized (m27775g()) {
            long mo27781b = this.f35386a.mo27781b();
            if (!m27772a(mo27781b, max)) {
                return false;
            }
            this.f35386a.mo27782c(m27778j(i, mo27781b));
            return true;
        }
    }
}
