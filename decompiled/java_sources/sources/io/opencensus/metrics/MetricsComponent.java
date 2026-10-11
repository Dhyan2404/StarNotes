package io.opencensus.metrics;

import io.opencensus.metrics.export.ExportComponent;

/* loaded from: classes10.dex */
public abstract class MetricsComponent {

    /* renamed from: io.opencensus.metrics.MetricsComponent$b */
    /* loaded from: classes10.dex */
    public static final class C17126b extends MetricsComponent {

        /* renamed from: a */
        public static final ExportComponent f94710a = ExportComponent.newNoopExportComponent();

        /* renamed from: b */
        public static final MetricRegistry f94711b = MetricRegistry.m60989a();

        public C17126b() {
        }

        @Override // io.opencensus.metrics.MetricsComponent
        public ExportComponent getExportComponent() {
            return f94710a;
        }

        @Override // io.opencensus.metrics.MetricsComponent
        public MetricRegistry getMetricRegistry() {
            return f94711b;
        }
    }

    /* renamed from: a */
    public static MetricsComponent m60991a() {
        return new C17126b();
    }

    public abstract ExportComponent getExportComponent();

    public abstract MetricRegistry getMetricRegistry();
}
