package com.google.common.eventbus;

import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.unf;
import java.lang.reflect.Method;

@unf
/* loaded from: classes6.dex */
public class SubscriberExceptionContext {

    /* renamed from: a */
    public final EventBus f34673a;

    /* renamed from: b */
    public final Object f34674b;

    /* renamed from: c */
    public final Object f34675c;

    /* renamed from: d */
    public final Method f34676d;

    public SubscriberExceptionContext(EventBus eventBus, Object obj, Object obj2, Method method) {
        this.f34673a = (EventBus) Preconditions.checkNotNull(eventBus);
        this.f34674b = Preconditions.checkNotNull(obj);
        this.f34675c = Preconditions.checkNotNull(obj2);
        this.f34676d = (Method) Preconditions.checkNotNull(method);
    }

    public Object getEvent() {
        return this.f34674b;
    }

    public EventBus getEventBus() {
        return this.f34673a;
    }

    public Object getSubscriber() {
        return this.f34675c;
    }

    public Method getSubscriberMethod() {
        return this.f34676d;
    }
}
