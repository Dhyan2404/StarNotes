package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.aof;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import java.time.Duration;
import java.util.concurrent.TimeUnit;

@GwtCompatible(emulated = true)
@aof
/* loaded from: classes6.dex */
public final class Stopwatch {

    /* renamed from: a */
    public final Ticker f33636a;

    /* renamed from: b */
    public boolean f33637b;

    /* renamed from: c */
    public long f33638c;

    /* renamed from: d */
    public long f33639d;

    /* renamed from: com.google.common.base.Stopwatch$a */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C5668a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33640a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f33640a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33640a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33640a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33640a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33640a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33640a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33640a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Stopwatch() {
        this.f33636a = Ticker.systemTicker();
    }

    /* renamed from: a */
    public static String m25839a(TimeUnit timeUnit) {
        switch (C5668a.f33640a[timeUnit.ordinal()]) {
            case 1:
                return Constants.ATTRNAME_NS;
            case 2:
                return "μs";
            case 3:
                return HttpMeasureConstants.f94668b;
            case 4:
                return "s";
            case 5:
                return "min";
            case 6:
                return C6999h.f39688c;
            case 7:
                return "d";
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: b */
    public static TimeUnit m25840b(long j) {
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(j, timeUnit2) > 0) {
            return timeUnit;
        }
        TimeUnit timeUnit3 = TimeUnit.HOURS;
        if (timeUnit3.convert(j, timeUnit2) > 0) {
            return timeUnit3;
        }
        TimeUnit timeUnit4 = TimeUnit.MINUTES;
        if (timeUnit4.convert(j, timeUnit2) > 0) {
            return timeUnit4;
        }
        TimeUnit timeUnit5 = TimeUnit.SECONDS;
        if (timeUnit5.convert(j, timeUnit2) > 0) {
            return timeUnit5;
        }
        TimeUnit timeUnit6 = TimeUnit.MILLISECONDS;
        if (timeUnit6.convert(j, timeUnit2) > 0) {
            return timeUnit6;
        }
        TimeUnit timeUnit7 = TimeUnit.MICROSECONDS;
        return timeUnit7.convert(j, timeUnit2) > 0 ? timeUnit7 : timeUnit2;
    }

    public static Stopwatch createStarted() {
        return new Stopwatch().start();
    }

    public static Stopwatch createUnstarted() {
        return new Stopwatch();
    }

    /* renamed from: c */
    public final long m25841c() {
        return this.f33637b ? (this.f33636a.read() - this.f33639d) + this.f33638c : this.f33638c;
    }

    public long elapsed(TimeUnit timeUnit) {
        return timeUnit.convert(m25841c(), TimeUnit.NANOSECONDS);
    }

    public boolean isRunning() {
        return this.f33637b;
    }

    @CanIgnoreReturnValue
    public Stopwatch reset() {
        this.f33638c = 0L;
        this.f33637b = false;
        return this;
    }

    @CanIgnoreReturnValue
    public Stopwatch start() {
        Preconditions.checkState(!this.f33637b, "This stopwatch is already running.");
        this.f33637b = true;
        this.f33639d = this.f33636a.read();
        return this;
    }

    @CanIgnoreReturnValue
    public Stopwatch stop() {
        long read = this.f33636a.read();
        Preconditions.checkState(this.f33637b, "This stopwatch is already stopped.");
        this.f33637b = false;
        this.f33638c += read - this.f33639d;
        return this;
    }

    public String toString() {
        long m25841c = m25841c();
        TimeUnit m25840b = m25840b(m25841c);
        String m25861d = C5673a.m25861d(m25841c / TimeUnit.NANOSECONDS.convert(1L, m25840b));
        String m25839a = m25839a(m25840b);
        StringBuilder sb = new StringBuilder(String.valueOf(m25861d).length() + 1 + String.valueOf(m25839a).length());
        sb.append(m25861d);
        sb.append(" ");
        sb.append(m25839a);
        return sb.toString();
    }

    public static Stopwatch createStarted(Ticker ticker) {
        return new Stopwatch(ticker).start();
    }

    public static Stopwatch createUnstarted(Ticker ticker) {
        return new Stopwatch(ticker);
    }

    @GwtIncompatible
    public Duration elapsed() {
        return Duration.ofNanos(m25841c());
    }

    public Stopwatch(Ticker ticker) {
        this.f33636a = (Ticker) Preconditions.checkNotNull(ticker, "ticker");
    }
}
