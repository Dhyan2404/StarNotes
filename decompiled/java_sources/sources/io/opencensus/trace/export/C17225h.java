package io.opencensus.trace.export;

import io.opencensus.common.Timestamp;
import io.opencensus.trace.Annotation;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.Span;
import io.opencensus.trace.SpanContext;
import io.opencensus.trace.SpanId;
import io.opencensus.trace.Status;
import io.opencensus.trace.export.SpanData;
import javax.annotation.Nullable;

/* renamed from: io.opencensus.trace.export.h */
/* loaded from: classes10.dex */
public final class C17225h extends SpanData {

    /* renamed from: a */
    public final SpanContext f94930a;

    /* renamed from: b */
    public final SpanId f94931b;

    /* renamed from: c */
    public final Boolean f94932c;

    /* renamed from: d */
    public final String f94933d;

    /* renamed from: e */
    public final Span.Kind f94934e;

    /* renamed from: f */
    public final Timestamp f94935f;

    /* renamed from: g */
    public final SpanData.Attributes f94936g;

    /* renamed from: h */
    public final SpanData.TimedEvents<Annotation> f94937h;

    /* renamed from: i */
    public final SpanData.TimedEvents<MessageEvent> f94938i;

    /* renamed from: j */
    public final SpanData.Links f94939j;

    /* renamed from: k */
    public final Integer f94940k;

    /* renamed from: l */
    public final Status f94941l;

    /* renamed from: m */
    public final Timestamp f94942m;

    public C17225h(SpanContext spanContext, @Nullable SpanId spanId, @Nullable Boolean bool, String str, @Nullable Span.Kind kind, Timestamp timestamp, SpanData.Attributes attributes, SpanData.TimedEvents<Annotation> timedEvents, SpanData.TimedEvents<MessageEvent> timedEvents2, SpanData.Links links, @Nullable Integer num, @Nullable Status status, @Nullable Timestamp timestamp2) {
        if (spanContext == null) {
            throw new NullPointerException("Null context");
        }
        this.f94930a = spanContext;
        this.f94931b = spanId;
        this.f94932c = bool;
        if (str == null) {
            throw new NullPointerException("Null name");
        }
        this.f94933d = str;
        this.f94934e = kind;
        if (timestamp == null) {
            throw new NullPointerException("Null startTimestamp");
        }
        this.f94935f = timestamp;
        if (attributes == null) {
            throw new NullPointerException("Null attributes");
        }
        this.f94936g = attributes;
        if (timedEvents == null) {
            throw new NullPointerException("Null annotations");
        }
        this.f94937h = timedEvents;
        if (timedEvents2 == null) {
            throw new NullPointerException("Null messageEvents");
        }
        this.f94938i = timedEvents2;
        if (links == null) {
            throw new NullPointerException("Null links");
        }
        this.f94939j = links;
        this.f94940k = num;
        this.f94941l = status;
        this.f94942m = timestamp2;
    }

    public boolean equals(Object obj) {
        SpanId spanId;
        Boolean bool;
        Span.Kind kind;
        Integer num;
        Status status;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData)) {
            return false;
        }
        SpanData spanData = (SpanData) obj;
        if (this.f94930a.equals(spanData.getContext()) && ((spanId = this.f94931b) != null ? spanId.equals(spanData.getParentSpanId()) : spanData.getParentSpanId() == null) && ((bool = this.f94932c) != null ? bool.equals(spanData.getHasRemoteParent()) : spanData.getHasRemoteParent() == null) && this.f94933d.equals(spanData.getName()) && ((kind = this.f94934e) != null ? kind.equals(spanData.getKind()) : spanData.getKind() == null) && this.f94935f.equals(spanData.getStartTimestamp()) && this.f94936g.equals(spanData.getAttributes()) && this.f94937h.equals(spanData.getAnnotations()) && this.f94938i.equals(spanData.getMessageEvents()) && this.f94939j.equals(spanData.getLinks()) && ((num = this.f94940k) != null ? num.equals(spanData.getChildSpanCount()) : spanData.getChildSpanCount() == null) && ((status = this.f94941l) != null ? status.equals(spanData.getStatus()) : spanData.getStatus() == null)) {
            Timestamp timestamp = this.f94942m;
            if (timestamp == null) {
                if (spanData.getEndTimestamp() == null) {
                    return true;
                }
            } else if (timestamp.equals(spanData.getEndTimestamp())) {
                return true;
            }
        }
        return false;
    }

    @Override // io.opencensus.trace.export.SpanData
    public SpanData.TimedEvents<Annotation> getAnnotations() {
        return this.f94937h;
    }

    @Override // io.opencensus.trace.export.SpanData
    public SpanData.Attributes getAttributes() {
        return this.f94936g;
    }

    @Override // io.opencensus.trace.export.SpanData
    @Nullable
    public Integer getChildSpanCount() {
        return this.f94940k;
    }

    @Override // io.opencensus.trace.export.SpanData
    public SpanContext getContext() {
        return this.f94930a;
    }

    @Override // io.opencensus.trace.export.SpanData
    @Nullable
    public Timestamp getEndTimestamp() {
        return this.f94942m;
    }

    @Override // io.opencensus.trace.export.SpanData
    @Nullable
    public Boolean getHasRemoteParent() {
        return this.f94932c;
    }

    @Override // io.opencensus.trace.export.SpanData
    @Nullable
    public Span.Kind getKind() {
        return this.f94934e;
    }

    @Override // io.opencensus.trace.export.SpanData
    public SpanData.Links getLinks() {
        return this.f94939j;
    }

    @Override // io.opencensus.trace.export.SpanData
    public SpanData.TimedEvents<MessageEvent> getMessageEvents() {
        return this.f94938i;
    }

    @Override // io.opencensus.trace.export.SpanData
    public String getName() {
        return this.f94933d;
    }

    @Override // io.opencensus.trace.export.SpanData
    @Nullable
    public SpanId getParentSpanId() {
        return this.f94931b;
    }

    @Override // io.opencensus.trace.export.SpanData
    public Timestamp getStartTimestamp() {
        return this.f94935f;
    }

    @Override // io.opencensus.trace.export.SpanData
    @Nullable
    public Status getStatus() {
        return this.f94941l;
    }

    public int hashCode() {
        int hashCode = (this.f94930a.hashCode() ^ 1000003) * 1000003;
        SpanId spanId = this.f94931b;
        int hashCode2 = (hashCode ^ (spanId == null ? 0 : spanId.hashCode())) * 1000003;
        Boolean bool = this.f94932c;
        int hashCode3 = (((hashCode2 ^ (bool == null ? 0 : bool.hashCode())) * 1000003) ^ this.f94933d.hashCode()) * 1000003;
        Span.Kind kind = this.f94934e;
        int hashCode4 = (((((((((((hashCode3 ^ (kind == null ? 0 : kind.hashCode())) * 1000003) ^ this.f94935f.hashCode()) * 1000003) ^ this.f94936g.hashCode()) * 1000003) ^ this.f94937h.hashCode()) * 1000003) ^ this.f94938i.hashCode()) * 1000003) ^ this.f94939j.hashCode()) * 1000003;
        Integer num = this.f94940k;
        int hashCode5 = (hashCode4 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        Status status = this.f94941l;
        int hashCode6 = (hashCode5 ^ (status == null ? 0 : status.hashCode())) * 1000003;
        Timestamp timestamp = this.f94942m;
        return hashCode6 ^ (timestamp != null ? timestamp.hashCode() : 0);
    }

    public String toString() {
        return "SpanData{context=" + this.f94930a + ", parentSpanId=" + this.f94931b + ", hasRemoteParent=" + this.f94932c + ", name=" + this.f94933d + ", kind=" + this.f94934e + ", startTimestamp=" + this.f94935f + ", attributes=" + this.f94936g + ", annotations=" + this.f94937h + ", messageEvents=" + this.f94938i + ", links=" + this.f94939j + ", childSpanCount=" + this.f94940k + ", status=" + this.f94941l + ", endTimestamp=" + this.f94942m + "}";
    }
}
