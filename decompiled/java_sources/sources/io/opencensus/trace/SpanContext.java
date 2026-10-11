package io.opencensus.trace;

import java.util.Arrays;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public final class SpanContext {
    public static final SpanContext INVALID;

    /* renamed from: e */
    public static final Tracestate f94853e;

    /* renamed from: a */
    public final TraceId f94854a;

    /* renamed from: b */
    public final SpanId f94855b;

    /* renamed from: c */
    public final TraceOptions f94856c;

    /* renamed from: d */
    public final Tracestate f94857d;

    static {
        Tracestate build = Tracestate.builder().build();
        f94853e = build;
        INVALID = new SpanContext(TraceId.INVALID, SpanId.INVALID, TraceOptions.DEFAULT, build);
    }

    public SpanContext(TraceId traceId, SpanId spanId, TraceOptions traceOptions, Tracestate tracestate) {
        this.f94854a = traceId;
        this.f94855b = spanId;
        this.f94856c = traceOptions;
        this.f94857d = tracestate;
    }

    @Deprecated
    public static SpanContext create(TraceId traceId, SpanId spanId, TraceOptions traceOptions) {
        return create(traceId, spanId, traceOptions, f94853e);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanContext)) {
            return false;
        }
        SpanContext spanContext = (SpanContext) obj;
        return this.f94854a.equals(spanContext.f94854a) && this.f94855b.equals(spanContext.f94855b) && this.f94856c.equals(spanContext.f94856c);
    }

    public SpanId getSpanId() {
        return this.f94855b;
    }

    public TraceId getTraceId() {
        return this.f94854a;
    }

    public TraceOptions getTraceOptions() {
        return this.f94856c;
    }

    public Tracestate getTracestate() {
        return this.f94857d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f94854a, this.f94855b, this.f94856c});
    }

    public boolean isValid() {
        return this.f94854a.isValid() && this.f94855b.isValid();
    }

    public String toString() {
        return "SpanContext{traceId=" + this.f94854a + ", spanId=" + this.f94855b + ", traceOptions=" + this.f94856c + "}";
    }

    public static SpanContext create(TraceId traceId, SpanId spanId, TraceOptions traceOptions, Tracestate tracestate) {
        return new SpanContext(traceId, spanId, traceOptions, tracestate);
    }
}
