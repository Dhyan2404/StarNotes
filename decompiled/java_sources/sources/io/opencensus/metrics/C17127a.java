package io.opencensus.metrics;

import io.opencensus.metrics.MetricOptions;
import java.util.List;
import java.util.Map;

/* renamed from: io.opencensus.metrics.a */
/* loaded from: classes10.dex */
public final class C17127a extends MetricOptions {

    /* renamed from: a */
    public final String f94712a;

    /* renamed from: b */
    public final String f94713b;

    /* renamed from: c */
    public final List<LabelKey> f94714c;

    /* renamed from: d */
    public final Map<LabelKey, LabelValue> f94715d;

    /* renamed from: io.opencensus.metrics.a$b */
    /* loaded from: classes10.dex */
    public static final class b extends MetricOptions.Builder {

        /* renamed from: a */
        public String f94716a;

        /* renamed from: b */
        public String f94717b;

        /* renamed from: c */
        public List<LabelKey> f94718c;

        /* renamed from: d */
        public Map<LabelKey, LabelValue> f94719d;

        @Override // io.opencensus.metrics.MetricOptions.Builder
        /* renamed from: a */
        public MetricOptions mo60986a() {
            String str = "";
            if (this.f94716a == null) {
                str = " description";
            }
            if (this.f94717b == null) {
                str = str + " unit";
            }
            if (this.f94718c == null) {
                str = str + " labelKeys";
            }
            if (this.f94719d == null) {
                str = str + " constantLabels";
            }
            if (str.isEmpty()) {
                return new C17127a(this.f94716a, this.f94717b, this.f94718c, this.f94719d);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // io.opencensus.metrics.MetricOptions.Builder
        /* renamed from: b */
        public Map<LabelKey, LabelValue> mo60987b() {
            Map<LabelKey, LabelValue> map = this.f94719d;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"constantLabels\" has not been set");
        }

        @Override // io.opencensus.metrics.MetricOptions.Builder
        /* renamed from: c */
        public List<LabelKey> mo60988c() {
            List<LabelKey> list = this.f94718c;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"labelKeys\" has not been set");
        }

        @Override // io.opencensus.metrics.MetricOptions.Builder
        public MetricOptions.Builder setConstantLabels(Map<LabelKey, LabelValue> map) {
            if (map == null) {
                throw new NullPointerException("Null constantLabels");
            }
            this.f94719d = map;
            return this;
        }

        @Override // io.opencensus.metrics.MetricOptions.Builder
        public MetricOptions.Builder setDescription(String str) {
            if (str == null) {
                throw new NullPointerException("Null description");
            }
            this.f94716a = str;
            return this;
        }

        @Override // io.opencensus.metrics.MetricOptions.Builder
        public MetricOptions.Builder setLabelKeys(List<LabelKey> list) {
            if (list == null) {
                throw new NullPointerException("Null labelKeys");
            }
            this.f94718c = list;
            return this;
        }

        @Override // io.opencensus.metrics.MetricOptions.Builder
        public MetricOptions.Builder setUnit(String str) {
            if (str == null) {
                throw new NullPointerException("Null unit");
            }
            this.f94717b = str;
            return this;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MetricOptions)) {
            return false;
        }
        MetricOptions metricOptions = (MetricOptions) obj;
        return this.f94712a.equals(metricOptions.getDescription()) && this.f94713b.equals(metricOptions.getUnit()) && this.f94714c.equals(metricOptions.getLabelKeys()) && this.f94715d.equals(metricOptions.getConstantLabels());
    }

    @Override // io.opencensus.metrics.MetricOptions
    public Map<LabelKey, LabelValue> getConstantLabels() {
        return this.f94715d;
    }

    @Override // io.opencensus.metrics.MetricOptions
    public String getDescription() {
        return this.f94712a;
    }

    @Override // io.opencensus.metrics.MetricOptions
    public List<LabelKey> getLabelKeys() {
        return this.f94714c;
    }

    @Override // io.opencensus.metrics.MetricOptions
    public String getUnit() {
        return this.f94713b;
    }

    public int hashCode() {
        return this.f94715d.hashCode() ^ ((((((this.f94712a.hashCode() ^ 1000003) * 1000003) ^ this.f94713b.hashCode()) * 1000003) ^ this.f94714c.hashCode()) * 1000003);
    }

    public String toString() {
        return "MetricOptions{description=" + this.f94712a + ", unit=" + this.f94713b + ", labelKeys=" + this.f94714c + ", constantLabels=" + this.f94715d + "}";
    }

    public C17127a(String str, String str2, List<LabelKey> list, Map<LabelKey, LabelValue> map) {
        this.f94712a = str;
        this.f94713b = str2;
        this.f94714c = list;
        this.f94715d = map;
    }
}
