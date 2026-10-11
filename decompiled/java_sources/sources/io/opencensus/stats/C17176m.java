package io.opencensus.stats;

import io.opencensus.stats.Measure;

/* renamed from: io.opencensus.stats.m */
/* loaded from: classes10.dex */
public final class C17176m extends Measure.MeasureDouble {

    /* renamed from: c */
    public final String f94805c;

    /* renamed from: d */
    public final String f94806d;

    /* renamed from: e */
    public final String f94807e;

    public C17176m(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.f94805c = str;
        if (str2 == null) {
            throw new NullPointerException("Null description");
        }
        this.f94806d = str2;
        if (str3 == null) {
            throw new NullPointerException("Null unit");
        }
        this.f94807e = str3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Measure.MeasureDouble)) {
            return false;
        }
        Measure.MeasureDouble measureDouble = (Measure.MeasureDouble) obj;
        return this.f94805c.equals(measureDouble.getName()) && this.f94806d.equals(measureDouble.getDescription()) && this.f94807e.equals(measureDouble.getUnit());
    }

    @Override // io.opencensus.stats.Measure.MeasureDouble, io.opencensus.stats.Measure
    public String getDescription() {
        return this.f94806d;
    }

    @Override // io.opencensus.stats.Measure.MeasureDouble, io.opencensus.stats.Measure
    public String getName() {
        return this.f94805c;
    }

    @Override // io.opencensus.stats.Measure.MeasureDouble, io.opencensus.stats.Measure
    public String getUnit() {
        return this.f94807e;
    }

    public int hashCode() {
        return this.f94807e.hashCode() ^ ((((this.f94805c.hashCode() ^ 1000003) * 1000003) ^ this.f94806d.hashCode()) * 1000003);
    }

    public String toString() {
        return "MeasureDouble{name=" + this.f94805c + ", description=" + this.f94806d + ", unit=" + this.f94807e + "}";
    }
}
