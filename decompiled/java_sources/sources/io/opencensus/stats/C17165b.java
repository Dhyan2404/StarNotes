package io.opencensus.stats;

import io.opencensus.metrics.data.Exemplar;
import io.opencensus.stats.AggregationData;
import java.util.List;

/* renamed from: io.opencensus.stats.b */
/* loaded from: classes10.dex */
public final class C17165b extends AggregationData.DistributionData {

    /* renamed from: a */
    public final double f94793a;

    /* renamed from: b */
    public final long f94794b;

    /* renamed from: c */
    public final double f94795c;

    /* renamed from: d */
    public final List<Long> f94796d;

    /* renamed from: e */
    public final List<Exemplar> f94797e;

    public C17165b(double d, long j, double d2, List<Long> list, List<Exemplar> list2) {
        this.f94793a = d;
        this.f94794b = j;
        this.f94795c = d2;
        if (list == null) {
            throw new NullPointerException("Null bucketCounts");
        }
        this.f94796d = list;
        if (list2 == null) {
            throw new NullPointerException("Null exemplars");
        }
        this.f94797e = list2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AggregationData.DistributionData)) {
            return false;
        }
        AggregationData.DistributionData distributionData = (AggregationData.DistributionData) obj;
        return Double.doubleToLongBits(this.f94793a) == Double.doubleToLongBits(distributionData.getMean()) && this.f94794b == distributionData.getCount() && Double.doubleToLongBits(this.f94795c) == Double.doubleToLongBits(distributionData.getSumOfSquaredDeviations()) && this.f94796d.equals(distributionData.getBucketCounts()) && this.f94797e.equals(distributionData.getExemplars());
    }

    @Override // io.opencensus.stats.AggregationData.DistributionData
    public List<Long> getBucketCounts() {
        return this.f94796d;
    }

    @Override // io.opencensus.stats.AggregationData.DistributionData
    public long getCount() {
        return this.f94794b;
    }

    @Override // io.opencensus.stats.AggregationData.DistributionData
    public List<Exemplar> getExemplars() {
        return this.f94797e;
    }

    @Override // io.opencensus.stats.AggregationData.DistributionData
    public double getMean() {
        return this.f94793a;
    }

    @Override // io.opencensus.stats.AggregationData.DistributionData
    public double getSumOfSquaredDeviations() {
        return this.f94795c;
    }

    public int hashCode() {
        long doubleToLongBits = ((int) (1000003 ^ ((Double.doubleToLongBits(this.f94793a) >>> 32) ^ Double.doubleToLongBits(this.f94793a)))) * 1000003;
        long j = this.f94794b;
        return this.f94797e.hashCode() ^ (((((int) ((((int) (doubleToLongBits ^ (j ^ (j >>> 32)))) * 1000003) ^ ((Double.doubleToLongBits(this.f94795c) >>> 32) ^ Double.doubleToLongBits(this.f94795c)))) * 1000003) ^ this.f94796d.hashCode()) * 1000003);
    }

    public String toString() {
        return "DistributionData{mean=" + this.f94793a + ", count=" + this.f94794b + ", sumOfSquaredDeviations=" + this.f94795c + ", bucketCounts=" + this.f94796d + ", exemplars=" + this.f94797e + "}";
    }
}
