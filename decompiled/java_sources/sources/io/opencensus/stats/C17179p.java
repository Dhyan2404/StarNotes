package io.opencensus.stats;

import io.opencensus.stats.Measure;
import io.opencensus.stats.Measurement;

/* renamed from: io.opencensus.stats.p */
/* loaded from: classes10.dex */
public final class C17179p extends Measurement.MeasurementLong {

    /* renamed from: a */
    public final Measure.MeasureLong f94813a;

    /* renamed from: b */
    public final long f94814b;

    public C17179p(Measure.MeasureLong measureLong, long j) {
        if (measureLong == null) {
            throw new NullPointerException("Null measure");
        }
        this.f94813a = measureLong;
        this.f94814b = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Measurement.MeasurementLong)) {
            return false;
        }
        Measurement.MeasurementLong measurementLong = (Measurement.MeasurementLong) obj;
        return this.f94813a.equals(measurementLong.getMeasure()) && this.f94814b == measurementLong.getValue();
    }

    @Override // io.opencensus.stats.Measurement.MeasurementLong
    public long getValue() {
        return this.f94814b;
    }

    public int hashCode() {
        long hashCode = (this.f94813a.hashCode() ^ 1000003) * 1000003;
        long j = this.f94814b;
        return (int) (hashCode ^ (j ^ (j >>> 32)));
    }

    public String toString() {
        return "MeasurementLong{measure=" + this.f94813a + ", value=" + this.f94814b + "}";
    }

    @Override // io.opencensus.stats.Measurement.MeasurementLong, io.opencensus.stats.Measurement
    public Measure.MeasureLong getMeasure() {
        return this.f94813a;
    }
}
