package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* renamed from: io.opencensus.stats.c */
/* loaded from: classes10.dex */
public final class C17166c extends AggregationData.LastValueDataDouble {

    /* renamed from: a */
    public final double f94798a;

    public C17166c(double d) {
        this.f94798a = d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AggregationData.LastValueDataDouble) && Double.doubleToLongBits(this.f94798a) == Double.doubleToLongBits(((AggregationData.LastValueDataDouble) obj).getLastValue());
    }

    @Override // io.opencensus.stats.AggregationData.LastValueDataDouble
    public double getLastValue() {
        return this.f94798a;
    }

    public int hashCode() {
        return (int) (1000003 ^ ((Double.doubleToLongBits(this.f94798a) >>> 32) ^ Double.doubleToLongBits(this.f94798a)));
    }

    public String toString() {
        return "LastValueDataDouble{lastValue=" + this.f94798a + "}";
    }
}
