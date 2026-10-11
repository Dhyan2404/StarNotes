package org.greenrobot.eventbus.util;

import java.lang.reflect.Constructor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.logging.Level;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.util.AsyncExecutor;

/* loaded from: classes13.dex */
public class AsyncExecutor {

    /* renamed from: a */
    public final Executor f113938a;

    /* renamed from: b */
    public final Constructor<?> f113939b;

    /* renamed from: c */
    public final EventBus f113940c;

    /* renamed from: d */
    public final Object f113941d;

    /* loaded from: classes13.dex */
    public static class Builder {

        /* renamed from: a */
        public Executor f113942a;

        /* renamed from: b */
        public Class<?> f113943b;

        /* renamed from: c */
        public EventBus f113944c;

        public AsyncExecutor build() {
            return buildForScope(null);
        }

        public AsyncExecutor buildForScope(Object obj) {
            if (this.f113944c == null) {
                this.f113944c = EventBus.getDefault();
            }
            if (this.f113942a == null) {
                this.f113942a = Executors.newCachedThreadPool();
            }
            if (this.f113943b == null) {
                this.f113943b = ThrowableFailureEvent.class;
            }
            return new AsyncExecutor(this.f113942a, this.f113944c, this.f113943b, obj);
        }

        public Builder eventBus(EventBus eventBus) {
            this.f113944c = eventBus;
            return this;
        }

        public Builder failureEventType(Class<?> cls) {
            this.f113943b = cls;
            return this;
        }

        public Builder threadPool(Executor executor) {
            this.f113942a = executor;
            return this;
        }

        public Builder() {
        }
    }

    /* loaded from: classes13.dex */
    public interface RunnableEx {
        void run() throws Exception;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m71041b(RunnableEx runnableEx) {
        try {
            runnableEx.run();
        } catch (Exception e) {
            try {
                Object newInstance = this.f113939b.newInstance(e);
                if (newInstance instanceof HasExecutionScope) {
                    ((HasExecutionScope) newInstance).setExecutionScope(this.f113941d);
                }
                this.f113940c.post(newInstance);
            } catch (Exception e2) {
                this.f113940c.getLogger().log(Level.SEVERE, "Original exception:", e);
                throw new RuntimeException("Could not create failure event", e2);
            }
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public static AsyncExecutor create() {
        return new Builder().build();
    }

    public void execute(final RunnableEx runnableEx) {
        this.f113938a.execute(new Runnable() { // from class: com.sunia.HTREnginev2.wf
            @Override // java.lang.Runnable
            public final void run() {
                AsyncExecutor.this.m71041b(runnableEx);
            }
        });
    }

    public AsyncExecutor(Executor executor, EventBus eventBus, Class<?> cls, Object obj) {
        this.f113938a = executor;
        this.f113940c = eventBus;
        this.f113941d = obj;
        try {
            this.f113939b = cls.getConstructor(Throwable.class);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Failure event class must have a constructor with one parameter of type Throwable", e);
        }
    }
}
