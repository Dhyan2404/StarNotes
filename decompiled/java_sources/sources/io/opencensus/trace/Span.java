package io.opencensus.trace;

import io.opencensus.internal.Utils;
import io.opencensus.trace.internal.BaseMessageEventUtils;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public abstract class Span {

    /* renamed from: c */
    public static final Map<String, AttributeValue> f94849c = Collections.emptyMap();

    /* renamed from: d */
    public static final Set<Options> f94850d = Collections.unmodifiableSet(EnumSet.noneOf(Options.class));

    /* renamed from: a */
    public final SpanContext f94851a;

    /* renamed from: b */
    public final Set<Options> f94852b;

    /* loaded from: classes10.dex */
    public enum Kind {
        SERVER,
        CLIENT
    }

    /* loaded from: classes10.dex */
    public enum Options {
        RECORD_EVENTS
    }

    public Span(SpanContext spanContext, @Nullable EnumSet<Options> enumSet) {
        this.f94851a = (SpanContext) Utils.checkNotNull(spanContext, "context");
        Set<Options> unmodifiableSet = enumSet == null ? f94850d : Collections.unmodifiableSet(EnumSet.copyOf((EnumSet) enumSet));
        this.f94852b = unmodifiableSet;
        Utils.checkArgument(!spanContext.getTraceOptions().isSampled() || unmodifiableSet.contains(Options.RECORD_EVENTS), "Span is sampled, but does not have RECORD_EVENTS set.");
    }

    public abstract void addAnnotation(Annotation annotation);

    public final void addAnnotation(String str) {
        Utils.checkNotNull(str, "description");
        addAnnotation(str, f94849c);
    }

    public abstract void addAnnotation(String str, Map<String, AttributeValue> map);

    @Deprecated
    public void addAttributes(Map<String, AttributeValue> map) {
        putAttributes(map);
    }

    public abstract void addLink(Link link);

    public void addMessageEvent(MessageEvent messageEvent) {
        Utils.checkNotNull(messageEvent, "messageEvent");
        addNetworkEvent(BaseMessageEventUtils.asNetworkEvent(messageEvent));
    }

    @Deprecated
    public void addNetworkEvent(NetworkEvent networkEvent) {
        addMessageEvent(BaseMessageEventUtils.asMessageEvent(networkEvent));
    }

    public final void end() {
        end(EndSpanOptions.DEFAULT);
    }

    public abstract void end(EndSpanOptions endSpanOptions);

    public final SpanContext getContext() {
        return this.f94851a;
    }

    public final Set<Options> getOptions() {
        return this.f94852b;
    }

    public void putAttribute(String str, AttributeValue attributeValue) {
        Utils.checkNotNull(str, "key");
        Utils.checkNotNull(attributeValue, "value");
        putAttributes(Collections.singletonMap(str, attributeValue));
    }

    public void putAttributes(Map<String, AttributeValue> map) {
        Utils.checkNotNull(map, "attributes");
        addAttributes(map);
    }

    public void setStatus(Status status) {
        Utils.checkNotNull(status, "status");
    }
}
