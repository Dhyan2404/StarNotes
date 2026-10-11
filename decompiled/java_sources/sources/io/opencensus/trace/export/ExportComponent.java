package io.opencensus.trace.export;

/* loaded from: classes10.dex */
public abstract class ExportComponent {

    /* renamed from: io.opencensus.trace.export.ExportComponent$b */
    /* loaded from: classes10.dex */
    public static final class C17211b extends ExportComponent {

        /* renamed from: a */
        public final SampledSpanStore f94910a;

        public C17211b() {
            this.f94910a = SampledSpanStore.m61080a();
        }

        @Override // io.opencensus.trace.export.ExportComponent
        public RunningSpanStore getRunningSpanStore() {
            return RunningSpanStore.m61079a();
        }

        @Override // io.opencensus.trace.export.ExportComponent
        public SampledSpanStore getSampledSpanStore() {
            return this.f94910a;
        }

        @Override // io.opencensus.trace.export.ExportComponent
        public SpanExporter getSpanExporter() {
            return SpanExporter.getNoopSpanExporter();
        }
    }

    public static ExportComponent newNoopExportComponent() {
        return new C17211b();
    }

    public abstract RunningSpanStore getRunningSpanStore();

    public abstract SampledSpanStore getSampledSpanStore();

    public abstract SpanExporter getSpanExporter();

    public void shutdown() {
    }
}
