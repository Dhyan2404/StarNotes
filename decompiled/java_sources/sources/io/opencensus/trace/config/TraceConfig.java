package io.opencensus.trace.config;

/* loaded from: classes10.dex */
public abstract class TraceConfig {

    /* renamed from: a */
    public static final C17206b f94888a = new C17206b();

    /* renamed from: io.opencensus.trace.config.TraceConfig$b */
    /* loaded from: classes10.dex */
    public static final class C17206b extends TraceConfig {
        public C17206b() {
        }

        @Override // io.opencensus.trace.config.TraceConfig
        public TraceParams getActiveTraceParams() {
            return TraceParams.DEFAULT;
        }

        @Override // io.opencensus.trace.config.TraceConfig
        public void updateActiveTraceParams(TraceParams traceParams) {
        }
    }

    public static TraceConfig getNoopTraceConfig() {
        return f94888a;
    }

    public abstract TraceParams getActiveTraceParams();

    public abstract void updateActiveTraceParams(TraceParams traceParams);
}
