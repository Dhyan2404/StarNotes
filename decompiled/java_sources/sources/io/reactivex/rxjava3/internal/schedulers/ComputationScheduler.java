package io.reactivex.rxjava3.internal.schedulers;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.ListCompositeDisposable;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.schedulers.SchedulerMultiWorkerSupport;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ComputationScheduler extends Scheduler implements SchedulerMultiWorkerSupport {

    /* renamed from: i */
    public static final C17614b f97301i;

    /* renamed from: j */
    public static final String f97302j = "RxComputationThreadPool";

    /* renamed from: k */
    public static final RxThreadFactory f97303k;

    /* renamed from: l */
    public static final String f97304l = "rx3.computation-threads";

    /* renamed from: m */
    public static final int f97305m = m61270c(Runtime.getRuntime().availableProcessors(), Integer.getInteger(f97304l, 0).intValue());

    /* renamed from: n */
    public static final C17615c f97306n;

    /* renamed from: o */
    public static final String f97307o = "rx3.computation-priority";

    /* renamed from: g */
    public final ThreadFactory f97308g;

    /* renamed from: h */
    public final AtomicReference<C17614b> f97309h;

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.ComputationScheduler$b */
    /* loaded from: classes10.dex */
    public static final class C17614b implements SchedulerMultiWorkerSupport {

        /* renamed from: e */
        public final int f97315e;

        /* renamed from: f */
        public final C17615c[] f97316f;

        /* renamed from: g */
        public long f97317g;

        public C17614b(int maxThreads, ThreadFactory threadFactory) {
            this.f97315e = maxThreads;
            this.f97316f = new C17615c[maxThreads];
            for (int i = 0; i < maxThreads; i++) {
                this.f97316f[i] = new C17615c(threadFactory);
            }
        }

        /* renamed from: a */
        public C17615c m61271a() {
            int i = this.f97315e;
            if (i == 0) {
                return ComputationScheduler.f97306n;
            }
            C17615c[] c17615cArr = this.f97316f;
            long j = this.f97317g;
            this.f97317g = 1 + j;
            return c17615cArr[(int) (j % i)];
        }

        /* renamed from: b */
        public void m61272b() {
            for (C17615c c17615c : this.f97316f) {
                c17615c.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.internal.schedulers.SchedulerMultiWorkerSupport
        public void createWorkers(int number, SchedulerMultiWorkerSupport.WorkerCallback callback) {
            int i = this.f97315e;
            if (i == 0) {
                for (int i2 = 0; i2 < number; i2++) {
                    callback.onWorker(i2, ComputationScheduler.f97306n);
                }
                return;
            }
            int i3 = ((int) this.f97317g) % i;
            for (int i4 = 0; i4 < number; i4++) {
                callback.onWorker(i4, new C17613a(this.f97316f[i3]));
                i3++;
                if (i3 == i) {
                    i3 = 0;
                }
            }
            this.f97317g = i3;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.ComputationScheduler$c */
    /* loaded from: classes10.dex */
    public static final class C17615c extends NewThreadWorker {
        public C17615c(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    static {
        C17615c c17615c = new C17615c(new RxThreadFactory("RxComputationShutdown"));
        f97306n = c17615c;
        c17615c.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f97302j, Math.max(1, Math.min(10, Integer.getInteger(f97307o, 5).intValue())), true);
        f97303k = rxThreadFactory;
        C17614b c17614b = new C17614b(0, rxThreadFactory);
        f97301i = c17614b;
        c17614b.m61272b();
    }

    public ComputationScheduler() {
        this(f97303k);
    }

    /* renamed from: c */
    public static int m61270c(int cpuCount, int paramThreads) {
        return (paramThreads <= 0 || paramThreads > cpuCount) ? cpuCount : paramThreads;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new C17613a(this.f97309h.get().m61271a());
    }

    @Override // io.reactivex.rxjava3.internal.schedulers.SchedulerMultiWorkerSupport
    public void createWorkers(int number, SchedulerMultiWorkerSupport.WorkerCallback callback) {
        ObjectHelper.verifyPositive(number, "number > 0 required");
        this.f97309h.get().createWorkers(number, callback);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run, long delay, TimeUnit unit) {
        return this.f97309h.get().m61271a().scheduleDirect(run, delay, unit);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable schedulePeriodicallyDirect(@NonNull Runnable run, long initialDelay, long period, TimeUnit unit) {
        return this.f97309h.get().m61271a().schedulePeriodicallyDirect(run, initialDelay, period, unit);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public void shutdown() {
        AtomicReference<C17614b> atomicReference = this.f97309h;
        C17614b c17614b = f97301i;
        C17614b andSet = atomicReference.getAndSet(c17614b);
        if (andSet != c17614b) {
            andSet.m61272b();
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public void start() {
        C17614b c17614b = new C17614b(f97305m, this.f97308g);
        if (cyi.m53538a(this.f97309h, f97301i, c17614b)) {
            return;
        }
        c17614b.m61272b();
    }

    public ComputationScheduler(ThreadFactory threadFactory) {
        this.f97308g = threadFactory;
        this.f97309h = new AtomicReference<>(f97301i);
        start();
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.ComputationScheduler$a */
    /* loaded from: classes10.dex */
    public static final class C17613a extends Scheduler.Worker {

        /* renamed from: e */
        public final ListCompositeDisposable f97310e;

        /* renamed from: f */
        public final CompositeDisposable f97311f;

        /* renamed from: g */
        public final ListCompositeDisposable f97312g;

        /* renamed from: h */
        public final C17615c f97313h;

        /* renamed from: i */
        public volatile boolean f97314i;

        public C17613a(C17615c poolWorker) {
            this.f97313h = poolWorker;
            ListCompositeDisposable listCompositeDisposable = new ListCompositeDisposable();
            this.f97310e = listCompositeDisposable;
            CompositeDisposable compositeDisposable = new CompositeDisposable();
            this.f97311f = compositeDisposable;
            ListCompositeDisposable listCompositeDisposable2 = new ListCompositeDisposable();
            this.f97312g = listCompositeDisposable2;
            listCompositeDisposable2.add(listCompositeDisposable);
            listCompositeDisposable2.add(compositeDisposable);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f97314i) {
                return;
            }
            this.f97314i = true;
            this.f97312g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97314i;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable action) {
            if (this.f97314i) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f97313h.scheduleActual(action, 0L, TimeUnit.MILLISECONDS, this.f97310e);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable action, long delayTime, @NonNull TimeUnit unit) {
            if (this.f97314i) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f97313h.scheduleActual(action, delayTime, unit, this.f97311f);
        }
    }
}
