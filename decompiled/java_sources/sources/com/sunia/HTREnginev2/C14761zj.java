package com.sunia.HTREnginev2;

import io.opencensus.metrics.export.Metric;
import io.opencensus.metrics.export.MetricDescriptor;
import io.opencensus.metrics.export.TimeSeries;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.zj */
/* loaded from: classes10.dex */
public final class C14761zj extends Metric {

    /* renamed from: a */
    public final MetricDescriptor f91782a;

    /* renamed from: b */
    public final List<TimeSeries> f91783b;

    public C14761zj(MetricDescriptor metricDescriptor, List<TimeSeries> list) {
        if (metricDescriptor == null) {
            throw new NullPointerException("Null metricDescriptor");
        }
        this.f91782a = metricDescriptor;
        if (list == null) {
            throw new NullPointerException("Null timeSeriesList");
        }
        this.f91783b = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Metric)) {
            return false;
        }
        Metric metric = (Metric) obj;
        return this.f91782a.equals(metric.getMetricDescriptor()) && this.f91783b.equals(metric.getTimeSeriesList());
    }

    @Override // io.opencensus.metrics.export.Metric
    public MetricDescriptor getMetricDescriptor() {
        return this.f91782a;
    }

    @Override // io.opencensus.metrics.export.Metric
    public List<TimeSeries> getTimeSeriesList() {
        return this.f91783b;
    }

    public int hashCode() {
        return this.f91783b.hashCode() ^ ((this.f91782a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "Metric{metricDescriptor=" + this.f91782a + ", timeSeriesList=" + this.f91783b + "}";
    }
}
