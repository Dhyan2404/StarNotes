package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* renamed from: io.opencensus.stats.d */
/* loaded from: classes10.dex */
public final class C17167d extends AggregationData.LastValueDataLong {

    /* renamed from: a */
    public final long f94799a;

    public C17167d(long j) {
        this.f94799a = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AggregationData.LastValueDataLong) && this.f94799a == ((AggregationData.LastValueDataLong) obj).getLastValue();
    }

    @Override // io.opencensus.stats.AggregationData.LastValueDataLong
    public long getLastValue() {
        return this.f94799a;
    }

    public int hashCode() {
        long j = this.f94799a;
        return (int) (1000003 ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LastValueDataLong{lastValue=" + this.f94799a + "}";
    }
}
