package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Summary;

/* renamed from: io.opencensus.metrics.export.g */
/* loaded from: classes10.dex */
public final class C17145g extends Summary.Snapshot.ValueAtPercentile {

    /* renamed from: a */
    public final double f94742a;

    /* renamed from: b */
    public final double f94743b;

    public C17145g(double d, double d2) {
        this.f94742a = d;
        this.f94743b = d2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Summary.Snapshot.ValueAtPercentile)) {
            return false;
        }
        Summary.Snapshot.ValueAtPercentile valueAtPercentile = (Summary.Snapshot.ValueAtPercentile) obj;
        return Double.doubleToLongBits(this.f94742a) == Double.doubleToLongBits(valueAtPercentile.getPercentile()) && Double.doubleToLongBits(this.f94743b) == Double.doubleToLongBits(valueAtPercentile.getValue());
    }

    @Override // io.opencensus.metrics.export.Summary.Snapshot.ValueAtPercentile
    public double getPercentile() {
        return this.f94742a;
    }

    @Override // io.opencensus.metrics.export.Summary.Snapshot.ValueAtPercentile
    public double getValue() {
        return this.f94743b;
    }

    public int hashCode() {
        return (int) ((((int) (1000003 ^ ((Double.doubleToLongBits(this.f94742a) >>> 32) ^ Double.doubleToLongBits(this.f94742a)))) * 1000003) ^ ((Double.doubleToLongBits(this.f94743b) >>> 32) ^ Double.doubleToLongBits(this.f94743b)));
    }

    public String toString() {
        return "ValueAtPercentile{percentile=" + this.f94742a + ", value=" + this.f94743b + "}";
    }
}
