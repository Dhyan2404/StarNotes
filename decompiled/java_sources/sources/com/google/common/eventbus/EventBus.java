package com.google.common.eventbus;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.MoreExecutors;
import com.sunia.HTREnginev2.h5n;
import com.sunia.HTREnginev2.j5n;
import com.sunia.HTREnginev2.q5f;
import com.sunia.HTREnginev2.unf;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@unf
/* loaded from: classes6.dex */
public class EventBus {

    /* renamed from: f */
    public static final Logger f34666f = Logger.getLogger(EventBus.class.getName());

    /* renamed from: a */
    public final String f34667a;

    /* renamed from: b */
    public final Executor f34668b;

    /* renamed from: c */
    public final SubscriberExceptionHandler f34669c;

    /* renamed from: d */
    public final j5n f34670d;

    /* renamed from: e */
    public final q5f f34671e;

    /* renamed from: com.google.common.eventbus.EventBus$a */
    /* loaded from: classes6.dex */
    public static final class C6136a implements SubscriberExceptionHandler {

        /* renamed from: a */
        public static final C6136a f34672a = new C6136a();

        /* renamed from: a */
        public static Logger m27034a(SubscriberExceptionContext subscriberExceptionContext) {
            String name = EventBus.class.getName();
            String identifier = subscriberExceptionContext.getEventBus().identifier();
            StringBuilder sb = new StringBuilder(name.length() + 1 + String.valueOf(identifier).length());
            sb.append(name);
            sb.append(".");
            sb.append(identifier);
            return Logger.getLogger(sb.toString());
        }

        /* renamed from: b */
        public static String m27035b(SubscriberExceptionContext subscriberExceptionContext) {
            Method subscriberMethod = subscriberExceptionContext.getSubscriberMethod();
            String name = subscriberMethod.getName();
            String name2 = subscriberMethod.getParameterTypes()[0].getName();
            String valueOf = String.valueOf(subscriberExceptionContext.getSubscriber());
            String valueOf2 = String.valueOf(subscriberExceptionContext.getEvent());
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 80 + name2.length() + valueOf.length() + valueOf2.length());
            sb.append("Exception thrown by subscriber method ");
            sb.append(name);
            sb.append('(');
            sb.append(name2);
            sb.append(')');
            sb.append(" on subscriber ");
            sb.append(valueOf);
            sb.append(" when dispatching event: ");
            sb.append(valueOf2);
            return sb.toString();
        }

        @Override // com.google.common.eventbus.SubscriberExceptionHandler
        public void handleException(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
            Logger m27034a = m27034a(subscriberExceptionContext);
            Level level = Level.SEVERE;
            if (m27034a.isLoggable(level)) {
                m27034a.log(level, m27035b(subscriberExceptionContext), th);
            }
        }
    }

    public EventBus() {
        this("default");
    }

    /* renamed from: a */
    public final Executor m27032a() {
        return this.f34668b;
    }

    /* renamed from: b */
    public void m27033b(Throwable th, SubscriberExceptionContext subscriberExceptionContext) {
        Preconditions.checkNotNull(th);
        Preconditions.checkNotNull(subscriberExceptionContext);
        try {
            this.f34669c.handleException(th, subscriberExceptionContext);
        } catch (Throwable th2) {
            f34666f.log(Level.SEVERE, String.format(Locale.ROOT, "Exception %s thrown while handling exception: %s", th2, th), th2);
        }
    }

    public final String identifier() {
        return this.f34667a;
    }

    public void post(Object obj) {
        Iterator<h5n> m54888f = this.f34670d.m54888f(obj);
        if (m54888f.hasNext()) {
            this.f34671e.mo56629a(obj, m54888f);
        } else {
            if (obj instanceof DeadEvent) {
                return;
            }
            post(new DeadEvent(this, obj));
        }
    }

    public void register(Object obj) {
        this.f34670d.m54890h(obj);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(this.f34667a).toString();
    }

    public void unregister(Object obj) {
        this.f34670d.m54891i(obj);
    }

    public EventBus(String str) {
        this(str, MoreExecutors.directExecutor(), q5f.m56628d(), C6136a.f34672a);
    }

    public EventBus(SubscriberExceptionHandler subscriberExceptionHandler) {
        this("default", MoreExecutors.directExecutor(), q5f.m56628d(), subscriberExceptionHandler);
    }

    public EventBus(String str, Executor executor, q5f q5fVar, SubscriberExceptionHandler subscriberExceptionHandler) {
        this.f34670d = new j5n(this);
        this.f34667a = (String) Preconditions.checkNotNull(str);
        this.f34668b = (Executor) Preconditions.checkNotNull(executor);
        this.f34671e = (q5f) Preconditions.checkNotNull(q5fVar);
        this.f34669c = (SubscriberExceptionHandler) Preconditions.checkNotNull(subscriberExceptionHandler);
    }
}
