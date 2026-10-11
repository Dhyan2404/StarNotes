package io.opencensus.stats;

import io.opencensus.stats.Measure;
import io.opencensus.stats.Measurement;

/* renamed from: io.opencensus.stats.o */
/* loaded from: classes10.dex */
public final class C17178o extends Measurement.MeasurementDouble {

    /* renamed from: a */
    public final Measure.MeasureDouble f94811a;

    /* renamed from: b */
    public final double f94812b;

    public C17178o(Measure.MeasureDouble measureDouble, double d) {
        if (measureDouble == null) {
            throw new NullPointerException("Null measure");
        }
        this.f94811a = measureDouble;
        this.f94812b = d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Measurement.MeasurementDouble)) {
            return false;
        }
        Measurement.MeasurementDouble measurementDouble = (Measurement.MeasurementDouble) obj;
        return this.f94811a.equals(measurementDouble.getMeasure()) && Double.doubleToLongBits(this.f94812b) == Double.doubleToLongBits(measurementDouble.getValue());
    }

    @Override // io.opencensus.stats.Measurement.MeasurementDouble
    public double getValue() {
        return this.f94812b;
    }

    public int hashCode() {
        return (int) (((this.f94811a.hashCode() ^ 1000003) * 1000003) ^ ((Double.doubleToLongBits(this.f94812b) >>> 32) ^ Double.doubleToLongBits(this.f94812b)));
    }

    public String toString() {
        return "MeasurementDouble{measure=" + this.f94811a + ", value=" + this.f94812b + "}";
    }

    @Override // io.opencensus.stats.Measurement.MeasurementDouble, io.opencensus.stats.Measurement
    public Measure.MeasureDouble getMeasure() {
        return this.f94811a;
    }
}
