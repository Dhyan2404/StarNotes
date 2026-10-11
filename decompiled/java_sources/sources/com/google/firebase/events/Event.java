package com.google.firebase.events;

import com.google.firebase.components.Preconditions;

/* loaded from: classes6.dex */
public class Event<T> {

    /* renamed from: a */
    public final Class<T> f35886a;

    /* renamed from: b */
    public final T f35887b;

    public Event(Class<T> cls, T t) {
        this.f35886a = (Class) Preconditions.checkNotNull(cls);
        this.f35887b = (T) Preconditions.checkNotNull(t);
    }

    public T getPayload() {
        return this.f35887b;
    }

    public Class<T> getType() {
        return this.f35886a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f35886a, this.f35887b);
    }
}
