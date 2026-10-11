package com.sunia.HTREnginev2;

import io.opencensus.trace.Sampler;
import io.opencensus.trace.Span;
import io.opencensus.trace.SpanContext;
import io.opencensus.trace.SpanId;
import io.opencensus.trace.TraceId;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* renamed from: com.sunia.HTREnginev2.ba */
/* loaded from: classes10.dex */
public final class C13518ba extends Sampler {
    @Override // io.opencensus.trace.Sampler
    public String getDescription() {
        return toString();
    }

    @Override // io.opencensus.trace.Sampler
    public boolean shouldSample(@Nullable SpanContext spanContext, @Nullable Boolean bool, TraceId traceId, SpanId spanId, String str, List<Span> list) {
        return true;
    }

    public String toString() {
        return "AlwaysSampleSampler";
    }
}
