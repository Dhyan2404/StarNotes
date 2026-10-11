package com.sunia.HTREnginev2;

import org.greenrobot.eventbus.SubscriberMethod;

/* loaded from: classes13.dex */
public final class k5n {

    /* renamed from: a */
    public final Object f75113a;

    /* renamed from: b */
    public final SubscriberMethod f75114b;

    /* renamed from: c */
    public volatile boolean f75115c = true;

    public k5n(Object obj, SubscriberMethod subscriberMethod) {
        this.f75113a = obj;
        this.f75114b = subscriberMethod;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k5n)) {
            return false;
        }
        k5n k5nVar = (k5n) obj;
        return this.f75113a == k5nVar.f75113a && this.f75114b.equals(k5nVar.f75114b);
    }

    public int hashCode() {
        return this.f75113a.hashCode() + this.f75114b.f113925f.hashCode();
    }
}
