package io.opencensus.stats;

import io.opencensus.stats.Measure;

/* renamed from: io.opencensus.stats.n */
/* loaded from: classes10.dex */
public final class C17177n extends Measure.MeasureLong {

    /* renamed from: c */
    public final String f94808c;

    /* renamed from: d */
    public final String f94809d;

    /* renamed from: e */
    public final String f94810e;

    public C17177n(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.f94808c = str;
        if (str2 == null) {
            throw new NullPointerException("Null description");
        }
        this.f94809d = str2;
        if (str3 == null) {
            throw new NullPointerException("Null unit");
        }
        this.f94810e = str3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Measure.MeasureLong)) {
            return false;
        }
        Measure.MeasureLong measureLong = (Measure.MeasureLong) obj;
        return this.f94808c.equals(measureLong.getName()) && this.f94809d.equals(measureLong.getDescription()) && this.f94810e.equals(measureLong.getUnit());
    }

    @Override // io.opencensus.stats.Measure.MeasureLong, io.opencensus.stats.Measure
    public String getDescription() {
        return this.f94809d;
    }

    @Override // io.opencensus.stats.Measure.MeasureLong, io.opencensus.stats.Measure
    public String getName() {
        return this.f94808c;
    }

    @Override // io.opencensus.stats.Measure.MeasureLong, io.opencensus.stats.Measure
    public String getUnit() {
        return this.f94810e;
    }

    public int hashCode() {
        return this.f94810e.hashCode() ^ ((((this.f94808c.hashCode() ^ 1000003) * 1000003) ^ this.f94809d.hashCode()) * 1000003);
    }

    public String toString() {
        return "MeasureLong{name=" + this.f94808c + ", description=" + this.f94809d + ", unit=" + this.f94810e + "}";
    }
}
