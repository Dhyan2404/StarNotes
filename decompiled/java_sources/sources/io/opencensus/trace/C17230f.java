package io.opencensus.trace;

import io.opencensus.trace.Link;
import java.util.Map;

/* renamed from: io.opencensus.trace.f */
/* loaded from: classes10.dex */
public final class C17230f extends Link {

    /* renamed from: b */
    public final TraceId f94951b;

    /* renamed from: c */
    public final SpanId f94952c;

    /* renamed from: d */
    public final Link.Type f94953d;

    /* renamed from: e */
    public final Map<String, AttributeValue> f94954e;

    public C17230f(TraceId traceId, SpanId spanId, Link.Type type, Map<String, AttributeValue> map) {
        if (traceId == null) {
            throw new NullPointerException("Null traceId");
        }
        this.f94951b = traceId;
        if (spanId == null) {
            throw new NullPointerException("Null spanId");
        }
        this.f94952c = spanId;
        if (type == null) {
            throw new NullPointerException("Null type");
        }
        this.f94953d = type;
        if (map == null) {
            throw new NullPointerException("Null attributes");
        }
        this.f94954e = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Link)) {
            return false;
        }
        Link link = (Link) obj;
        return this.f94951b.equals(link.getTraceId()) && this.f94952c.equals(link.getSpanId()) && this.f94953d.equals(link.getType()) && this.f94954e.equals(link.getAttributes());
    }

    @Override // io.opencensus.trace.Link
    public Map<String, AttributeValue> getAttributes() {
        return this.f94954e;
    }

    @Override // io.opencensus.trace.Link
    public SpanId getSpanId() {
        return this.f94952c;
    }

    @Override // io.opencensus.trace.Link
    public TraceId getTraceId() {
        return this.f94951b;
    }

    @Override // io.opencensus.trace.Link
    public Link.Type getType() {
        return this.f94953d;
    }

    public int hashCode() {
        return this.f94954e.hashCode() ^ ((((((this.f94951b.hashCode() ^ 1000003) * 1000003) ^ this.f94952c.hashCode()) * 1000003) ^ this.f94953d.hashCode()) * 1000003);
    }

    public String toString() {
        return "Link{traceId=" + this.f94951b + ", spanId=" + this.f94952c + ", type=" + this.f94953d + ", attributes=" + this.f94954e + "}";
    }
}
