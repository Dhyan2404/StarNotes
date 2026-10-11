package com.google.firebase.concurrent;

import android.annotation.SuppressLint;
import android.os.StrictMode;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.annotations.concurrent.UiThread;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Lazy;
import com.google.firebase.components.Qualified;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.inject.Provider;
import com.sunia.HTREnginev2.bpe;
import com.sunia.HTREnginev2.e3f;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

@SuppressLint({"ThreadPoolCreation"})
/* loaded from: classes6.dex */
public class ExecutorsRegistrar implements ComponentRegistrar {

    /* renamed from: a */
    public static final Lazy<ScheduledExecutorService> f35835a = new Lazy<>(new Provider() { // from class: com.sunia.HTREnginev2.uyf
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            ScheduledExecutorService m28067p;
            m28067p = ExecutorsRegistrar.m28067p();
            return m28067p;
        }
    });

    /* renamed from: b */
    public static final Lazy<ScheduledExecutorService> f35836b = new Lazy<>(new Provider() { // from class: com.sunia.HTREnginev2.vyf
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            ScheduledExecutorService m28068q;
            m28068q = ExecutorsRegistrar.m28068q();
            return m28068q;
        }
    });

    /* renamed from: c */
    public static final Lazy<ScheduledExecutorService> f35837c = new Lazy<>(new Provider() { // from class: com.sunia.HTREnginev2.wyf
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            ScheduledExecutorService m28069r;
            m28069r = ExecutorsRegistrar.m28069r();
            return m28069r;
        }
    });

    /* renamed from: d */
    public static final Lazy<ScheduledExecutorService> f35838d = new Lazy<>(new Provider() { // from class: com.sunia.HTREnginev2.xyf
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            ScheduledExecutorService m28070s;
            m28070s = ExecutorsRegistrar.m28070s();
            return m28070s;
        }
    });

    /* renamed from: i */
    public static StrictMode.ThreadPolicy m28060i() {
        StrictMode.ThreadPolicy.Builder detectNetwork = new StrictMode.ThreadPolicy.Builder().detectNetwork();
        detectNetwork.detectResourceMismatches();
        detectNetwork.detectUnbufferedIo();
        return detectNetwork.penaltyLog().build();
    }

    /* renamed from: j */
    public static ThreadFactory m28061j(String str, int i) {
        return new bpe(str, i, null);
    }

    /* renamed from: k */
    public static ThreadFactory m28062k(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        return new bpe(str, i, threadPolicy);
    }

    /* renamed from: l */
    public static /* synthetic */ ScheduledExecutorService m28063l(ComponentContainer componentContainer) {
        return f35835a.get();
    }

    /* renamed from: m */
    public static /* synthetic */ ScheduledExecutorService m28064m(ComponentContainer componentContainer) {
        return f35837c.get();
    }

    /* renamed from: n */
    public static /* synthetic */ ScheduledExecutorService m28065n(ComponentContainer componentContainer) {
        return f35836b.get();
    }

    /* renamed from: o */
    public static /* synthetic */ Executor m28066o(ComponentContainer componentContainer) {
        return UiExecutor.INSTANCE;
    }

    /* renamed from: p */
    public static /* synthetic */ ScheduledExecutorService m28067p() {
        return m28072u(Executors.newFixedThreadPool(4, m28062k("Firebase Background", 10, m28060i())));
    }

    /* renamed from: q */
    public static /* synthetic */ ScheduledExecutorService m28068q() {
        return m28072u(Executors.newFixedThreadPool(Math.max(2, Runtime.getRuntime().availableProcessors()), m28062k("Firebase Lite", 0, m28071t())));
    }

    /* renamed from: r */
    public static /* synthetic */ ScheduledExecutorService m28069r() {
        return m28072u(Executors.newCachedThreadPool(m28061j("Firebase Blocking", 11)));
    }

    /* renamed from: s */
    public static /* synthetic */ ScheduledExecutorService m28070s() {
        return Executors.newSingleThreadScheduledExecutor(m28061j("Firebase Scheduler", 0));
    }

    /* renamed from: t */
    public static StrictMode.ThreadPolicy m28071t() {
        return new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build();
    }

    /* renamed from: u */
    public static ScheduledExecutorService m28072u(ExecutorService executorService) {
        return new e3f(executorService, f35838d.get());
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(Qualified.qualified(Background.class, ScheduledExecutorService.class), Qualified.qualified(Background.class, ExecutorService.class), Qualified.qualified(Background.class, Executor.class)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.qyf
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                ScheduledExecutorService m28063l;
                m28063l = ExecutorsRegistrar.m28063l(componentContainer);
                return m28063l;
            }
        }).build(), Component.builder(Qualified.qualified(Blocking.class, ScheduledExecutorService.class), Qualified.qualified(Blocking.class, ExecutorService.class), Qualified.qualified(Blocking.class, Executor.class)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.ryf
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                ScheduledExecutorService m28064m;
                m28064m = ExecutorsRegistrar.m28064m(componentContainer);
                return m28064m;
            }
        }).build(), Component.builder(Qualified.qualified(Lightweight.class, ScheduledExecutorService.class), Qualified.qualified(Lightweight.class, ExecutorService.class), Qualified.qualified(Lightweight.class, Executor.class)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.syf
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                ScheduledExecutorService m28065n;
                m28065n = ExecutorsRegistrar.m28065n(componentContainer);
                return m28065n;
            }
        }).build(), Component.builder(Qualified.qualified(UiThread.class, Executor.class)).factory(new ComponentFactory() { // from class: com.sunia.HTREnginev2.tyf
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                Executor m28066o;
                m28066o = ExecutorsRegistrar.m28066o(componentContainer);
                return m28066o;
            }
        }).build());
    }
}
