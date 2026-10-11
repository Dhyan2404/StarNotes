package io.opencensus.metrics.export;

/* loaded from: classes10.dex */
public abstract class ExportComponent {

    /* renamed from: io.opencensus.metrics.export.ExportComponent$b */
    /* loaded from: classes10.dex */
    public static final class C17131b extends ExportComponent {

        /* renamed from: a */
        public static final MetricProducerManager f94721a = MetricProducerManager.m60997a();

        public C17131b() {
        }

        @Override // io.opencensus.metrics.export.ExportComponent
        public MetricProducerManager getMetricProducerManager() {
            return f94721a;
        }
    }

    public static ExportComponent newNoopExportComponent() {
        return new C17131b();
    }

    public abstract MetricProducerManager getMetricProducerManager();
}
