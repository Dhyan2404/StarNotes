package io.opencensus.metrics.export;

import io.opencensus.metrics.LabelKey;
import io.opencensus.metrics.export.MetricDescriptor;
import java.util.List;

/* renamed from: io.opencensus.metrics.export.d */
/* loaded from: classes10.dex */
public final class C17142d extends MetricDescriptor {

    /* renamed from: a */
    public final String f94731a;

    /* renamed from: b */
    public final String f94732b;

    /* renamed from: c */
    public final String f94733c;

    /* renamed from: d */
    public final MetricDescriptor.Type f94734d;

    /* renamed from: e */
    public final List<LabelKey> f94735e;

    public C17142d(String str, String str2, String str3, MetricDescriptor.Type type, List<LabelKey> list) {
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.f94731a = str;
        if (str2 == null) {
            throw new NullPointerException("Null description");
        }
        this.f94732b = str2;
        if (str3 == null) {
            throw new NullPointerException("Null unit");
        }
        this.f94733c = str3;
        if (type == null) {
            throw new NullPointerException("Null type");
        }
        this.f94734d = type;
        if (list == null) {
            throw new NullPointerException("Null labelKeys");
        }
        this.f94735e = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetricDescriptor)) {
            return false;
        }
        MetricDescriptor metricDescriptor = (MetricDescriptor) obj;
        return this.f94731a.equals(metricDescriptor.getName()) && this.f94732b.equals(metricDescriptor.getDescription()) && this.f94733c.equals(metricDescriptor.getUnit()) && this.f94734d.equals(metricDescriptor.getType()) && this.f94735e.equals(metricDescriptor.getLabelKeys());
    }

    @Override // io.opencensus.metrics.export.MetricDescriptor
    public String getDescription() {
        return this.f94732b;
    }

    @Override // io.opencensus.metrics.export.MetricDescriptor
    public List<LabelKey> getLabelKeys() {
        return this.f94735e;
    }

    @Override // io.opencensus.metrics.export.MetricDescriptor
    public String getName() {
        return this.f94731a;
    }

    @Override // io.opencensus.metrics.export.MetricDescriptor
    public MetricDescriptor.Type getType() {
        return this.f94734d;
    }

    @Override // io.opencensus.metrics.export.MetricDescriptor
    public String getUnit() {
        return this.f94733c;
    }

    public int hashCode() {
        return this.f94735e.hashCode() ^ ((((((((this.f94731a.hashCode() ^ 1000003) * 1000003) ^ this.f94732b.hashCode()) * 1000003) ^ this.f94733c.hashCode()) * 1000003) ^ this.f94734d.hashCode()) * 1000003);
    }

    public String toString() {
        return "MetricDescriptor{name=" + this.f94731a + ", description=" + this.f94732b + ", unit=" + this.f94733c + ", type=" + this.f94734d + ", labelKeys=" + this.f94735e + "}";
    }
}
