package com.sunia.HTREnginev2;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;

/* renamed from: com.sunia.HTREnginev2.ak */
/* loaded from: classes4.dex */
public final class C13487ak extends PersistedEvent {

    /* renamed from: a */
    public final long f64762a;

    /* renamed from: b */
    public final TransportContext f64763b;

    /* renamed from: c */
    public final EventInternal f64764c;

    public C13487ak(long j, TransportContext transportContext, EventInternal eventInternal) {
        this.f64762a = j;
        if (transportContext == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f64763b = transportContext;
        if (eventInternal == null) {
            throw new NullPointerException("Null event");
        }
        this.f64764c = eventInternal;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersistedEvent)) {
            return false;
        }
        PersistedEvent persistedEvent = (PersistedEvent) obj;
        return this.f64762a == persistedEvent.getId() && this.f64763b.equals(persistedEvent.getTransportContext()) && this.f64764c.equals(persistedEvent.getEvent());
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public EventInternal getEvent() {
        return this.f64764c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public long getId() {
        return this.f64762a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public TransportContext getTransportContext() {
        return this.f64763b;
    }

    public int hashCode() {
        long j = this.f64762a;
        return this.f64764c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f64763b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f64762a + ", transportContext=" + this.f64763b + ", event=" + this.f64764c + "}";
    }
}
