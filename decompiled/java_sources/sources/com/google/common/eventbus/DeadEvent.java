package com.google.common.eventbus;

import androidx.core.app.NotificationCompat;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.unf;

@unf
/* loaded from: classes6.dex */
public class DeadEvent {

    /* renamed from: a */
    public final Object f34664a;

    /* renamed from: b */
    public final Object f34665b;

    public DeadEvent(Object obj, Object obj2) {
        this.f34664a = Preconditions.checkNotNull(obj);
        this.f34665b = Preconditions.checkNotNull(obj2);
    }

    public Object getEvent() {
        return this.f34665b;
    }

    public Object getSource() {
        return this.f34664a;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("source", this.f34664a).add(NotificationCompat.CATEGORY_EVENT, this.f34665b).toString();
    }
}
