package io.opencensus.trace;

import io.opencensus.common.Clock;
import io.opencensus.internal.ZeroTimeClock;
import io.opencensus.trace.config.TraceConfig;
import io.opencensus.trace.export.ExportComponent;
import io.opencensus.trace.propagation.PropagationComponent;

/* loaded from: classes10.dex */
public abstract class TraceComponent {

    /* renamed from: io.opencensus.trace.TraceComponent$b */
    /* loaded from: classes10.dex */
    public static final class C17197b extends TraceComponent {

        /* renamed from: a */
        public final ExportComponent f94866a;

        @Override // io.opencensus.trace.TraceComponent
        public Clock getClock() {
            return ZeroTimeClock.getInstance();
        }

        @Override // io.opencensus.trace.TraceComponent
        public ExportComponent getExportComponent() {
            return this.f94866a;
        }

        @Override // io.opencensus.trace.TraceComponent
        public PropagationComponent getPropagationComponent() {
            return PropagationComponent.getNoopPropagationComponent();
        }

        @Override // io.opencensus.trace.TraceComponent
        public TraceConfig getTraceConfig() {
            return TraceConfig.getNoopTraceConfig();
        }

        @Override // io.opencensus.trace.TraceComponent
        public Tracer getTracer() {
            return Tracer.m61068a();
        }

        public C17197b() {
            this.f94866a = ExportComponent.newNoopExportComponent();
        }
    }

    /* renamed from: a */
    public static TraceComponent m61065a() {
        return new C17197b();
    }

    public abstract Clock getClock();

    public abstract ExportComponent getExportComponent();

    public abstract PropagationComponent getPropagationComponent();

    public abstract TraceConfig getTraceConfig();

    public abstract Tracer getTracer();
}
