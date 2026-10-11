package io.opencensus.stats;

import io.opencensus.stats.AggregationData;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* renamed from: io.opencensus.stats.e */
/* loaded from: classes10.dex */
public final class C17168e extends AggregationData.MeanData {

    /* renamed from: a */
    public final double f94800a;

    /* renamed from: b */
    public final long f94801b;

    public C17168e(double d, long j) {
        this.f94800a = d;
        this.f94801b = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AggregationData.MeanData)) {
            return false;
        }
        AggregationData.MeanData meanData = (AggregationData.MeanData) obj;
        return Double.doubleToLongBits(this.f94800a) == Double.doubleToLongBits(meanData.getMean()) && this.f94801b == meanData.getCount();
    }

    @Override // io.opencensus.stats.AggregationData.MeanData
    public long getCount() {
        return this.f94801b;
    }

    @Override // io.opencensus.stats.AggregationData.MeanData
    public double getMean() {
        return this.f94800a;
    }

    public int hashCode() {
        long doubleToLongBits = ((int) (1000003 ^ ((Double.doubleToLongBits(this.f94800a) >>> 32) ^ Double.doubleToLongBits(this.f94800a)))) * 1000003;
        long j = this.f94801b;
        return (int) (doubleToLongBits ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "MeanData{mean=" + this.f94800a + ", count=" + this.f94801b + "}";
    }
}
