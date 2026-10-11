package org.greenrobot.eventbus;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.Logger;
import org.greenrobot.eventbus.android.AndroidComponents;
import org.greenrobot.eventbus.meta.SubscriberInfoIndex;

/* loaded from: classes13.dex */
public class EventBusBuilder {

    /* renamed from: n */
    public static final ExecutorService f113902n = Executors.newCachedThreadPool();

    /* renamed from: e */
    public boolean f113907e;

    /* renamed from: g */
    public boolean f113909g;

    /* renamed from: h */
    public boolean f113910h;

    /* renamed from: j */
    public List<Class<?>> f113912j;

    /* renamed from: k */
    public List<SubscriberInfoIndex> f113913k;

    /* renamed from: l */
    public Logger f113914l;

    /* renamed from: m */
    public MainThreadSupport f113915m;

    /* renamed from: a */
    public boolean f113903a = true;

    /* renamed from: b */
    public boolean f113904b = true;

    /* renamed from: c */
    public boolean f113905c = true;

    /* renamed from: d */
    public boolean f113906d = true;

    /* renamed from: f */
    public boolean f113908f = true;

    /* renamed from: i */
    public ExecutorService f113911i = f113902n;

    /* renamed from: a */
    public Logger m71036a() {
        Logger logger = this.f113914l;
        return logger != null ? logger : Logger.Default.get();
    }

    public EventBusBuilder addIndex(SubscriberInfoIndex subscriberInfoIndex) {
        if (this.f113913k == null) {
            this.f113913k = new ArrayList();
        }
        this.f113913k.add(subscriberInfoIndex);
        return this;
    }

    /* renamed from: b */
    public MainThreadSupport m71037b() {
        MainThreadSupport mainThreadSupport = this.f113915m;
        if (mainThreadSupport != null) {
            return mainThreadSupport;
        }
        if (AndroidComponents.areAvailable()) {
            return AndroidComponents.get().defaultMainThreadSupport;
        }
        return null;
    }

    public EventBus build() {
        return new EventBus(this);
    }

    public EventBusBuilder eventInheritance(boolean z) {
        this.f113908f = z;
        return this;
    }

    public EventBusBuilder executorService(ExecutorService executorService) {
        this.f113911i = executorService;
        return this;
    }

    public EventBusBuilder ignoreGeneratedIndex(boolean z) {
        this.f113909g = z;
        return this;
    }

    public EventBus installDefaultEventBus() {
        EventBus eventBus;
        synchronized (EventBus.class) {
            if (EventBus.f113873s != null) {
                throw new EventBusException("Default instance already exists. It may be only set once before it's used the first time to ensure consistent behavior.");
            }
            EventBus.f113873s = build();
            eventBus = EventBus.f113873s;
        }
        return eventBus;
    }

    public EventBusBuilder logNoSubscriberMessages(boolean z) {
        this.f113904b = z;
        return this;
    }

    public EventBusBuilder logSubscriberExceptions(boolean z) {
        this.f113903a = z;
        return this;
    }

    public EventBusBuilder logger(Logger logger) {
        this.f113914l = logger;
        return this;
    }

    public EventBusBuilder sendNoSubscriberEvent(boolean z) {
        this.f113906d = z;
        return this;
    }

    public EventBusBuilder sendSubscriberExceptionEvent(boolean z) {
        this.f113905c = z;
        return this;
    }

    public EventBusBuilder skipMethodVerificationFor(Class<?> cls) {
        if (this.f113912j == null) {
            this.f113912j = new ArrayList();
        }
        this.f113912j.add(cls);
        return this;
    }

    public EventBusBuilder strictMethodVerification(boolean z) {
        this.f113910h = z;
        return this;
    }

    public EventBusBuilder throwSubscriberException(boolean z) {
        this.f113907e = z;
        return this;
    }
}
