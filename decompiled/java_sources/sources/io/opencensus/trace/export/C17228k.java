package io.opencensus.trace.export;

import io.opencensus.common.Timestamp;
import io.opencensus.trace.export.SpanData;

/* renamed from: io.opencensus.trace.export.k */
/* loaded from: classes10.dex */
public final class C17228k<T> extends SpanData.TimedEvent<T> {

    /* renamed from: a */
    public final Timestamp f94947a;

    /* renamed from: b */
    public final T f94948b;

    public C17228k(Timestamp timestamp, T t) {
        if (timestamp == null) {
            throw new NullPointerException("Null timestamp");
        }
        this.f94947a = timestamp;
        if (t == null) {
            throw new NullPointerException("Null event");
        }
        this.f94948b = t;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData.TimedEvent)) {
            return false;
        }
        SpanData.TimedEvent timedEvent = (SpanData.TimedEvent) obj;
        return this.f94947a.equals(timedEvent.getTimestamp()) && this.f94948b.equals(timedEvent.getEvent());
    }

    @Override // io.opencensus.trace.export.SpanData.TimedEvent
    public T getEvent() {
        return this.f94948b;
    }

    @Override // io.opencensus.trace.export.SpanData.TimedEvent
    public Timestamp getTimestamp() {
        return this.f94947a;
    }

    public int hashCode() {
        return this.f94948b.hashCode() ^ ((this.f94947a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "TimedEvent{timestamp=" + this.f94947a + ", event=" + this.f94948b + "}";
    }
}
