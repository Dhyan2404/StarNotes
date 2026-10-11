package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* renamed from: io.opencensus.stats.g */
/* loaded from: classes10.dex */
public final class C17170g extends AggregationData.SumDataLong {

    /* renamed from: a */
    public final long f94803a;

    public C17170g(long j) {
        this.f94803a = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AggregationData.SumDataLong) && this.f94803a == ((AggregationData.SumDataLong) obj).getSum();
    }

    @Override // io.opencensus.stats.AggregationData.SumDataLong
    public long getSum() {
        return this.f94803a;
    }

    public int hashCode() {
        long j = this.f94803a;
        return (int) (1000003 ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "SumDataLong{sum=" + this.f94803a + "}";
    }
}
