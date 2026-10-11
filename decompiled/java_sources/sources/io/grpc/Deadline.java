package io.grpc;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Arrays;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class Deadline implements Comparable<Deadline> {

    /* renamed from: h */
    public static final C17105b f94617h = new C17105b();

    /* renamed from: i */
    public static final long f94618i;

    /* renamed from: j */
    public static final long f94619j;

    /* renamed from: k */
    public static final long f94620k;

    /* renamed from: e */
    public final Ticker f94621e;

    /* renamed from: f */
    public final long f94622f;

    /* renamed from: g */
    public volatile boolean f94623g;

    /* loaded from: classes10.dex */
    public static abstract class Ticker {
        public abstract long nanoTime();
    }

    /* renamed from: io.grpc.Deadline$b */
    /* loaded from: classes10.dex */
    public static class C17105b extends Ticker {
        public C17105b() {
        }

        @Override // io.grpc.Deadline.Ticker
        public long nanoTime() {
            return System.nanoTime();
        }
    }

    static {
        long nanos = TimeUnit.DAYS.toNanos(36500L);
        f94618i = nanos;
        f94619j = -nanos;
        f94620k = TimeUnit.SECONDS.toNanos(1L);
    }

    public Deadline(Ticker ticker, long j, boolean z) {
        this(ticker, ticker.nanoTime(), j, z);
    }

    /* renamed from: a */
    public static <T> T m60931a(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static Deadline after(long j, TimeUnit timeUnit) {
        return after(j, timeUnit, f94617h);
    }

    public static Ticker getSystemTicker() {
        return f94617h;
    }

    /* renamed from: b */
    public final void m60932b(Deadline deadline) {
        if (this.f94621e == deadline.f94621e) {
            return;
        }
        throw new AssertionError("Tickers (" + this.f94621e + CloudStorageConstants.OPERATION_AND + deadline.f94621e + ") don't match. Custom Ticker should only be used in tests!");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Deadline)) {
            return false;
        }
        Deadline deadline = (Deadline) obj;
        Ticker ticker = this.f94621e;
        if (ticker != null ? ticker == deadline.f94621e : deadline.f94621e == null) {
            return this.f94622f == deadline.f94622f;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.asList(this.f94621e, Long.valueOf(this.f94622f)).hashCode();
    }

    public boolean isBefore(Deadline deadline) {
        m60932b(deadline);
        return this.f94622f - deadline.f94622f < 0;
    }

    public boolean isExpired() {
        if (!this.f94623g) {
            if (this.f94622f - this.f94621e.nanoTime() > 0) {
                return false;
            }
            this.f94623g = true;
        }
        return true;
    }

    public Deadline minimum(Deadline deadline) {
        m60932b(deadline);
        return isBefore(deadline) ? this : deadline;
    }

    public Deadline offset(long j, TimeUnit timeUnit) {
        return j == 0 ? this : new Deadline(this.f94621e, this.f94622f, timeUnit.toNanos(j), isExpired());
    }

    public ScheduledFuture<?> runOnExpiration(Runnable runnable, ScheduledExecutorService scheduledExecutorService) {
        m60931a(runnable, "task");
        m60931a(scheduledExecutorService, "scheduler");
        return scheduledExecutorService.schedule(runnable, this.f94622f - this.f94621e.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public long timeRemaining(TimeUnit timeUnit) {
        long nanoTime = this.f94621e.nanoTime();
        if (!this.f94623g && this.f94622f - nanoTime <= 0) {
            this.f94623g = true;
        }
        return timeUnit.convert(this.f94622f - nanoTime, TimeUnit.NANOSECONDS);
    }

    public String toString() {
        long timeRemaining = timeRemaining(TimeUnit.NANOSECONDS);
        long abs = Math.abs(timeRemaining);
        long j = f94620k;
        long j2 = abs / j;
        long abs2 = Math.abs(timeRemaining) % j;
        StringBuilder sb = new StringBuilder();
        if (timeRemaining < 0) {
            sb.append('-');
        }
        sb.append(j2);
        if (abs2 > 0) {
            sb.append(String.format(".%09d", Long.valueOf(abs2)));
        }
        sb.append("s from now");
        if (this.f94621e != f94617h) {
            sb.append(" (ticker=" + this.f94621e + MotionUtils.f31762d);
        }
        return sb.toString();
    }

    public Deadline(Ticker ticker, long j, long j2, boolean z) {
        this.f94621e = ticker;
        long min = Math.min(f94618i, Math.max(f94619j, j2));
        this.f94622f = j + min;
        this.f94623g = z && min <= 0;
    }

    public static Deadline after(long j, TimeUnit timeUnit, Ticker ticker) {
        m60931a(timeUnit, "units");
        return new Deadline(ticker, timeUnit.toNanos(j), true);
    }

    @Override // java.lang.Comparable
    public int compareTo(Deadline deadline) {
        m60932b(deadline);
        long j = this.f94622f - deadline.f94622f;
        if (j < 0) {
            return -1;
        }
        return j > 0 ? 1 : 0;
    }
}
