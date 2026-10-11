package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.schedulers.ComputationScheduler;
import io.reactivex.rxjava3.internal.schedulers.IoScheduler;
import io.reactivex.rxjava3.internal.schedulers.NewThreadScheduler;
import io.reactivex.rxjava3.internal.schedulers.SingleScheduler;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.Executor;

/* loaded from: classes10.dex */
public final class Schedulers {

    /* renamed from: a */
    @NonNull
    public static final Scheduler f97564a = RxJavaPlugins.initSingleScheduler(new C17644h());

    /* renamed from: b */
    @NonNull
    public static final Scheduler f97565b = RxJavaPlugins.initComputationScheduler(new C17638b());

    /* renamed from: c */
    @NonNull
    public static final Scheduler f97566c = RxJavaPlugins.initIoScheduler(new C17639c());

    /* renamed from: d */
    @NonNull
    public static final Scheduler f97567d = TrampolineScheduler.instance();

    /* renamed from: e */
    @NonNull
    public static final Scheduler f97568e = RxJavaPlugins.initNewThreadScheduler(new C17642f());

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$a */
    /* loaded from: classes10.dex */
    public static final class C17637a {

        /* renamed from: a */
        public static final Scheduler f97569a = new ComputationScheduler();
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$b */
    /* loaded from: classes10.dex */
    public static final class C17638b implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return C17637a.f97569a;
        }
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$c */
    /* loaded from: classes10.dex */
    public static final class C17639c implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return C17640d.f97570a;
        }
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$d */
    /* loaded from: classes10.dex */
    public static final class C17640d {

        /* renamed from: a */
        public static final Scheduler f97570a = new IoScheduler();
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$e */
    /* loaded from: classes10.dex */
    public static final class C17641e {

        /* renamed from: a */
        public static final Scheduler f97571a = new NewThreadScheduler();
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$f */
    /* loaded from: classes10.dex */
    public static final class C17642f implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return C17641e.f97571a;
        }
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$g */
    /* loaded from: classes10.dex */
    public static final class C17643g {

        /* renamed from: a */
        public static final Scheduler f97572a = new SingleScheduler();
    }

    /* renamed from: io.reactivex.rxjava3.schedulers.Schedulers$h */
    /* loaded from: classes10.dex */
    public static final class C17644h implements Supplier<Scheduler> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Scheduler get() {
            return C17643g.f97572a;
        }
    }

    public Schedulers() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    public static Scheduler computation() {
        return RxJavaPlugins.onComputationScheduler(f97565b);
    }

    @NonNull
    public static Scheduler from(@NonNull Executor executor) {
        return from(executor, false, false);
    }

    @NonNull
    /* renamed from: io */
    public static Scheduler m61350io() {
        return RxJavaPlugins.onIoScheduler(f97566c);
    }

    @NonNull
    public static Scheduler newThread() {
        return RxJavaPlugins.onNewThreadScheduler(f97568e);
    }

    public static void shutdown() {
        computation().shutdown();
        m61350io().shutdown();
        newThread().shutdown();
        single().shutdown();
        trampoline().shutdown();
    }

    @NonNull
    public static Scheduler single() {
        return RxJavaPlugins.onSingleScheduler(f97564a);
    }

    public static void start() {
        computation().start();
        m61350io().start();
        newThread().start();
        single().start();
        trampoline().start();
    }

    @NonNull
    public static Scheduler trampoline() {
        return f97567d;
    }

    @NonNull
    public static Scheduler from(@NonNull Executor executor, boolean interruptibleWorker) {
        return from(executor, interruptibleWorker, false);
    }

    @NonNull
    public static Scheduler from(@NonNull Executor executor, boolean interruptibleWorker, boolean fair) {
        return RxJavaPlugins.createExecutorScheduler(executor, interruptibleWorker, fair);
    }
}
