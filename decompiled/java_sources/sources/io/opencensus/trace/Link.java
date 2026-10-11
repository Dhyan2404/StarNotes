package io.opencensus.trace;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Link {

    /* renamed from: a */
    public static final Map<String, AttributeValue> f94848a = Collections.emptyMap();

    /* loaded from: classes10.dex */
    public enum Type {
        CHILD_LINKED_SPAN,
        PARENT_LINKED_SPAN
    }

    public static Link fromSpanContext(SpanContext spanContext, Type type) {
        return new C17230f(spanContext.getTraceId(), spanContext.getSpanId(), type, f94848a);
    }

    public abstract Map<String, AttributeValue> getAttributes();

    public abstract SpanId getSpanId();

    public abstract TraceId getTraceId();

    public abstract Type getType();

    public static Link fromSpanContext(SpanContext spanContext, Type type, Map<String, AttributeValue> map) {
        return new C17230f(spanContext.getTraceId(), spanContext.getSpanId(), type, Collections.unmodifiableMap(new HashMap(map)));
    }
}
