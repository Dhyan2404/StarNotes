package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;
import com.google.android.exoplayer2.C4649C;
import com.sunia.HTREnginev2.ntl;

/* loaded from: classes5.dex */
public final class TimestampAdjuster {
    public static final long MODE_NO_OFFSET = Long.MAX_VALUE;
    public static final long MODE_SHARED = 9223372036854775806L;

    /* renamed from: e */
    public static final long f28462e = 8589934592L;

    /* renamed from: a */
    @GuardedBy("this")
    public long f28463a;

    /* renamed from: b */
    @GuardedBy("this")
    public long f28464b;

    /* renamed from: c */
    @GuardedBy("this")
    public long f28465c;

    /* renamed from: d */
    public final ThreadLocal<Long> f28466d = new ThreadLocal<>();

    public TimestampAdjuster(long j) {
        reset(j);
    }

    public static long ptsToUs(long j) {
        return (j * 1000000) / ntl.f79010k;
    }

    public static long usToNonWrappedPts(long j) {
        return (j * ntl.f79010k) / 1000000;
    }

    public static long usToWrappedPts(long j) {
        return usToNonWrappedPts(j) % 8589934592L;
    }

    public synchronized long adjustSampleTimestamp(long j) {
        if (j == C4649C.TIME_UNSET) {
            return C4649C.TIME_UNSET;
        }
        if (this.f28464b == C4649C.TIME_UNSET) {
            long j2 = this.f28463a;
            if (j2 == 9223372036854775806L) {
                j2 = ((Long) Assertions.checkNotNull(this.f28466d.get())).longValue();
            }
            this.f28464b = j2 - j;
            notifyAll();
        }
        this.f28465c = j;
        return j + this.f28464b;
    }

    public synchronized long adjustTsTimestamp(long j) {
        if (j == C4649C.TIME_UNSET) {
            return C4649C.TIME_UNSET;
        }
        long j2 = this.f28465c;
        if (j2 != C4649C.TIME_UNSET) {
            long usToNonWrappedPts = usToNonWrappedPts(j2);
            long j3 = (4294967296L + usToNonWrappedPts) / 8589934592L;
            long j4 = ((j3 - 1) * 8589934592L) + j;
            j += j3 * 8589934592L;
            if (Math.abs(j4 - usToNonWrappedPts) < Math.abs(j - usToNonWrappedPts)) {
                j = j4;
            }
        }
        return adjustSampleTimestamp(ptsToUs(j));
    }

    public synchronized long getFirstSampleTimestampUs() {
        long j;
        j = this.f28463a;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            j = C4649C.TIME_UNSET;
        }
        return j;
    }

    public synchronized long getLastAdjustedTimestampUs() {
        long j;
        j = this.f28465c;
        return j != C4649C.TIME_UNSET ? j + this.f28464b : getFirstSampleTimestampUs();
    }

    public synchronized long getTimestampOffsetUs() {
        return this.f28464b;
    }

    public synchronized void reset(long j) {
        this.f28463a = j;
        this.f28464b = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f28465c = C4649C.TIME_UNSET;
    }

    public synchronized void sharedInitializeOrWait(boolean z, long j) throws InterruptedException {
        Assertions.checkState(this.f28463a == 9223372036854775806L);
        if (this.f28464b != C4649C.TIME_UNSET) {
            return;
        }
        if (z) {
            this.f28466d.set(Long.valueOf(j));
        } else {
            while (this.f28464b == C4649C.TIME_UNSET) {
                wait();
            }
        }
    }
}
