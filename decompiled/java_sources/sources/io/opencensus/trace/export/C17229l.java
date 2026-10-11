package io.opencensus.trace.export;

import io.opencensus.trace.export.SpanData;
import java.util.List;

/* renamed from: io.opencensus.trace.export.l */
/* loaded from: classes10.dex */
public final class C17229l<T> extends SpanData.TimedEvents<T> {

    /* renamed from: a */
    public final List<SpanData.TimedEvent<T>> f94949a;

    /* renamed from: b */
    public final int f94950b;

    public C17229l(List<SpanData.TimedEvent<T>> list, int i) {
        if (list == null) {
            throw new NullPointerException("Null events");
        }
        this.f94949a = list;
        this.f94950b = i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData.TimedEvents)) {
            return false;
        }
        SpanData.TimedEvents timedEvents = (SpanData.TimedEvents) obj;
        return this.f94949a.equals(timedEvents.getEvents()) && this.f94950b == timedEvents.getDroppedEventsCount();
    }

    @Override // io.opencensus.trace.export.SpanData.TimedEvents
    public int getDroppedEventsCount() {
        return this.f94950b;
    }

    @Override // io.opencensus.trace.export.SpanData.TimedEvents
    public List<SpanData.TimedEvent<T>> getEvents() {
        return this.f94949a;
    }

    public int hashCode() {
        return this.f94950b ^ ((this.f94949a.hashCode() ^ 1000003) * 1000003);
    }

    public String toString() {
        return "TimedEvents{events=" + this.f94949a + ", droppedEventsCount=" + this.f94950b + "}";
    }
}
