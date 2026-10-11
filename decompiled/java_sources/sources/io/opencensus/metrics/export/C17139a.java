package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Distribution;
import java.util.List;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.metrics.export.a */
/* loaded from: classes10.dex */
public final class C17139a extends Distribution {

    /* renamed from: a */
    public final long f94723a;

    /* renamed from: b */
    public final double f94724b;

    /* renamed from: c */
    public final double f94725c;

    /* renamed from: d */
    public final Distribution.BucketOptions f94726d;

    /* renamed from: e */
    public final List<Distribution.Bucket> f94727e;

    public C17139a(long j, double d, double d2, @Nullable Distribution.BucketOptions bucketOptions, List<Distribution.Bucket> list) {
        this.f94723a = j;
        this.f94724b = d;
        this.f94725c = d2;
        this.f94726d = bucketOptions;
        if (list == null) {
            throw new NullPointerException("Null buckets");
        }
        this.f94727e = list;
    }

    public boolean equals(Object obj) {
        Distribution.BucketOptions bucketOptions;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Distribution)) {
            return false;
        }
        Distribution distribution = (Distribution) obj;
        return this.f94723a == distribution.getCount() && Double.doubleToLongBits(this.f94724b) == Double.doubleToLongBits(distribution.getSum()) && Double.doubleToLongBits(this.f94725c) == Double.doubleToLongBits(distribution.getSumOfSquaredDeviations()) && ((bucketOptions = this.f94726d) != null ? bucketOptions.equals(distribution.getBucketOptions()) : distribution.getBucketOptions() == null) && this.f94727e.equals(distribution.getBuckets());
    }

    @Override // io.opencensus.metrics.export.Distribution
    @Nullable
    public Distribution.BucketOptions getBucketOptions() {
        return this.f94726d;
    }

    @Override // io.opencensus.metrics.export.Distribution
    public List<Distribution.Bucket> getBuckets() {
        return this.f94727e;
    }

    @Override // io.opencensus.metrics.export.Distribution
    public long getCount() {
        return this.f94723a;
    }

    @Override // io.opencensus.metrics.export.Distribution
    public double getSum() {
        return this.f94724b;
    }

    @Override // io.opencensus.metrics.export.Distribution
    public double getSumOfSquaredDeviations() {
        return this.f94725c;
    }

    public int hashCode() {
        long j = this.f94723a;
        int doubleToLongBits = ((int) ((((int) ((((int) (1000003 ^ (j ^ (j >>> 32)))) * 1000003) ^ ((Double.doubleToLongBits(this.f94724b) >>> 32) ^ Double.doubleToLongBits(this.f94724b)))) * 1000003) ^ ((Double.doubleToLongBits(this.f94725c) >>> 32) ^ Double.doubleToLongBits(this.f94725c)))) * 1000003;
        Distribution.BucketOptions bucketOptions = this.f94726d;
        return this.f94727e.hashCode() ^ ((doubleToLongBits ^ (bucketOptions == null ? 0 : bucketOptions.hashCode())) * 1000003);
    }

    public String toString() {
        return "Distribution{count=" + this.f94723a + ", sum=" + this.f94724b + ", sumOfSquaredDeviations=" + this.f94725c + ", bucketOptions=" + this.f94726d + ", buckets=" + this.f94727e + "}";
    }
}
