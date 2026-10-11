package com.sunia.HTREnginev2;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.eventbus.AllowConcurrentEvents;
import com.google.common.eventbus.EventBus;
import com.google.common.eventbus.SubscriberExceptionContext;
import com.google.j2objc.annotations.Weak;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.CheckForNull;

@unf
/* loaded from: classes6.dex */
public class h5n {

    /* renamed from: a */
    @Weak
    public EventBus f71844a;

    /* renamed from: b */
    @VisibleForTesting
    public final Object f71845b;

    /* renamed from: c */
    public final Method f71846c;

    /* renamed from: d */
    public final Executor f71847d;

    @VisibleForTesting
    /* renamed from: com.sunia.HTREnginev2.h5n$b */
    /* loaded from: classes6.dex */
    public static final class C13813b extends h5n {
        @Override // com.sunia.HTREnginev2.h5n
        /* renamed from: e */
        public void mo54407e(Object obj) throws InvocationTargetException {
            synchronized (this) {
                super.mo54407e(obj);
            }
        }

        public C13813b(EventBus eventBus, Object obj, Method method) {
            super(eventBus, obj, method);
        }
    }

    /* renamed from: c */
    public static h5n m54402c(EventBus eventBus, Object obj, Method method) {
        return m54403f(method) ? new h5n(eventBus, obj, method) : new C13813b(eventBus, obj, method);
    }

    /* renamed from: f */
    public static boolean m54403f(Method method) {
        return method.getAnnotation(AllowConcurrentEvents.class) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m54404g(Object obj) {
        try {
            mo54407e(obj);
        } catch (InvocationTargetException e) {
            this.f71844a.m27033b(e.getCause(), m54405b(obj));
        }
    }

    /* renamed from: b */
    public final SubscriberExceptionContext m54405b(Object obj) {
        return new SubscriberExceptionContext(this.f71844a, obj, this.f71845b, this.f71846c);
    }

    /* renamed from: d */
    public final void m54406d(final Object obj) {
        this.f71847d.execute(new Runnable() { // from class: com.sunia.HTREnginev2.g5n
            @Override // java.lang.Runnable
            public final void run() {
                h5n.this.m54404g(obj);
            }
        });
    }

    @VisibleForTesting
    /* renamed from: e */
    public void mo54407e(Object obj) throws InvocationTargetException {
        try {
            this.f71846c.invoke(this.f71845b, Preconditions.checkNotNull(obj));
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("Method became inaccessible: ");
            sb.append(valueOf);
            throw new Error(sb.toString(), e);
        } catch (IllegalArgumentException e2) {
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 33);
            sb2.append("Method rejected target/argument: ");
            sb2.append(valueOf2);
            throw new Error(sb2.toString(), e2);
        } catch (InvocationTargetException e3) {
            if (!(e3.getCause() instanceof Error)) {
                throw e3;
            }
            throw ((Error) e3.getCause());
        }
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof h5n)) {
            return false;
        }
        h5n h5nVar = (h5n) obj;
        return this.f71845b == h5nVar.f71845b && this.f71846c.equals(h5nVar.f71846c);
    }

    public final int hashCode() {
        return ((this.f71846c.hashCode() + 31) * 31) + System.identityHashCode(this.f71845b);
    }

    public h5n(EventBus eventBus, Object obj, Method method) {
        this.f71844a = eventBus;
        this.f71845b = Preconditions.checkNotNull(obj);
        this.f71846c = method;
        method.setAccessible(true);
        this.f71847d = eventBus.m27032a();
    }
}
