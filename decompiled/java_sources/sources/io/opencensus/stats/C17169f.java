package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* renamed from: io.opencensus.stats.f */
/* loaded from: classes10.dex */
public final class C17169f extends AggregationData.SumDataDouble {

    /* renamed from: a */
    public final double f94802a;

    public C17169f(double d) {
        this.f94802a = d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AggregationData.SumDataDouble) && Double.doubleToLongBits(this.f94802a) == Double.doubleToLongBits(((AggregationData.SumDataDouble) obj).getSum());
    }

    @Override // io.opencensus.stats.AggregationData.SumDataDouble
    public double getSum() {
        return this.f94802a;
    }

    public int hashCode() {
        return (int) (1000003 ^ ((Double.doubleToLongBits(this.f94802a) >>> 32) ^ Double.doubleToLongBits(this.f94802a)));
    }

    public String toString() {
        return "SumDataDouble{sum=" + this.f94802a + "}";
    }
}
