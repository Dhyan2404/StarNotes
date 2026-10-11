package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Priority;

/* renamed from: com.sunia.HTREnginev2.rj */
/* loaded from: classes4.dex */
public final class C14352rj<T> extends Event<T> {

    /* renamed from: a */
    public final Integer f83137a;

    /* renamed from: b */
    public final T f83138b;

    /* renamed from: c */
    public final Priority f83139c;

    public C14352rj(@Nullable Integer num, T t, Priority priority) {
        this.f83137a = num;
        if (t == null) {
            throw new NullPointerException("Null payload");
        }
        this.f83138b = t;
        if (priority == null) {
            throw new NullPointerException("Null priority");
        }
        this.f83139c = priority;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Event)) {
            return false;
        }
        Event event = (Event) obj;
        Integer num = this.f83137a;
        if (num != null ? num.equals(event.getCode()) : event.getCode() == null) {
            if (this.f83138b.equals(event.getPayload()) && this.f83139c.equals(event.getPriority())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.Event
    @Nullable
    public Integer getCode() {
        return this.f83137a;
    }

    @Override // com.google.android.datatransport.Event
    public T getPayload() {
        return this.f83138b;
    }

    @Override // com.google.android.datatransport.Event
    public Priority getPriority() {
        return this.f83139c;
    }

    public int hashCode() {
        Integer num = this.f83137a;
        return this.f83139c.hashCode() ^ (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f83138b.hashCode()) * 1000003);
    }

    public String toString() {
        return "Event{code=" + this.f83137a + ", payload=" + this.f83138b + ", priority=" + this.f83139c + "}";
    }
}
