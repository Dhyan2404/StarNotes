package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.LongMath;
import com.sunia.HTREnginev2.rnf;
import javax.annotation.CheckForNull;

@rnf
@GwtCompatible
/* loaded from: classes6.dex */
public final class CacheStats {

    /* renamed from: a */
    public final long f33724a;

    /* renamed from: b */
    public final long f33725b;

    /* renamed from: c */
    public final long f33726c;

    /* renamed from: d */
    public final long f33727d;

    /* renamed from: e */
    public final long f33728e;

    /* renamed from: f */
    public final long f33729f;

    public CacheStats(long j, long j2, long j3, long j4, long j5, long j6) {
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        Preconditions.checkArgument(j4 >= 0);
        Preconditions.checkArgument(j5 >= 0);
        Preconditions.checkArgument(j6 >= 0);
        this.f33724a = j;
        this.f33725b = j2;
        this.f33726c = j3;
        this.f33727d = j4;
        this.f33728e = j5;
        this.f33729f = j6;
    }

    public double averageLoadPenalty() {
        long saturatedAdd = LongMath.saturatedAdd(this.f33726c, this.f33727d);
        if (saturatedAdd == 0) {
            return 0.0d;
        }
        return this.f33728e / saturatedAdd;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof CacheStats)) {
            return false;
        }
        CacheStats cacheStats = (CacheStats) obj;
        return this.f33724a == cacheStats.f33724a && this.f33725b == cacheStats.f33725b && this.f33726c == cacheStats.f33726c && this.f33727d == cacheStats.f33727d && this.f33728e == cacheStats.f33728e && this.f33729f == cacheStats.f33729f;
    }

    public long evictionCount() {
        return this.f33729f;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f33724a), Long.valueOf(this.f33725b), Long.valueOf(this.f33726c), Long.valueOf(this.f33727d), Long.valueOf(this.f33728e), Long.valueOf(this.f33729f));
    }

    public long hitCount() {
        return this.f33724a;
    }

    public double hitRate() {
        long requestCount = requestCount();
        if (requestCount == 0) {
            return 1.0d;
        }
        return this.f33724a / requestCount;
    }

    public long loadCount() {
        return LongMath.saturatedAdd(this.f33726c, this.f33727d);
    }

    public long loadExceptionCount() {
        return this.f33727d;
    }

    public double loadExceptionRate() {
        long saturatedAdd = LongMath.saturatedAdd(this.f33726c, this.f33727d);
        if (saturatedAdd == 0) {
            return 0.0d;
        }
        return this.f33727d / saturatedAdd;
    }

    public long loadSuccessCount() {
        return this.f33726c;
    }

    public CacheStats minus(CacheStats cacheStats) {
        return new CacheStats(Math.max(0L, LongMath.saturatedSubtract(this.f33724a, cacheStats.f33724a)), Math.max(0L, LongMath.saturatedSubtract(this.f33725b, cacheStats.f33725b)), Math.max(0L, LongMath.saturatedSubtract(this.f33726c, cacheStats.f33726c)), Math.max(0L, LongMath.saturatedSubtract(this.f33727d, cacheStats.f33727d)), Math.max(0L, LongMath.saturatedSubtract(this.f33728e, cacheStats.f33728e)), Math.max(0L, LongMath.saturatedSubtract(this.f33729f, cacheStats.f33729f)));
    }

    public long missCount() {
        return this.f33725b;
    }

    public double missRate() {
        long requestCount = requestCount();
        if (requestCount == 0) {
            return 0.0d;
        }
        return this.f33725b / requestCount;
    }

    public CacheStats plus(CacheStats cacheStats) {
        return new CacheStats(LongMath.saturatedAdd(this.f33724a, cacheStats.f33724a), LongMath.saturatedAdd(this.f33725b, cacheStats.f33725b), LongMath.saturatedAdd(this.f33726c, cacheStats.f33726c), LongMath.saturatedAdd(this.f33727d, cacheStats.f33727d), LongMath.saturatedAdd(this.f33728e, cacheStats.f33728e), LongMath.saturatedAdd(this.f33729f, cacheStats.f33729f));
    }

    public long requestCount() {
        return LongMath.saturatedAdd(this.f33724a, this.f33725b);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("hitCount", this.f33724a).add("missCount", this.f33725b).add("loadSuccessCount", this.f33726c).add("loadExceptionCount", this.f33727d).add("totalLoadTime", this.f33728e).add("evictionCount", this.f33729f).toString();
    }

    public long totalLoadTime() {
        return this.f33728e;
    }
}
