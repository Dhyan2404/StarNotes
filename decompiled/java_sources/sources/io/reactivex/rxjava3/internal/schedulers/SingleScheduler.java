package io.reactivex.rxjava3.internal.schedulers;

import com.sunia.HTREnginev2.cyi;
import com.sunia.HTREnginev2.kmi;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleScheduler extends Scheduler {

    /* renamed from: i */
    public static final String f97381i = "rx3.single-priority";

    /* renamed from: j */
    public static final String f97382j = "RxSingleScheduler";

    /* renamed from: k */
    public static final RxThreadFactory f97383k;

    /* renamed from: l */
    public static final ScheduledExecutorService f97384l;

    /* renamed from: g */
    public final ThreadFactory f97385g;

    /* renamed from: h */
    public final AtomicReference<ScheduledExecutorService> f97386h;

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.SingleScheduler$a */
    /* loaded from: classes10.dex */
    public static final class C17629a extends Scheduler.Worker {

        /* renamed from: e */
        public final ScheduledExecutorService f97387e;

        /* renamed from: f */
        public final CompositeDisposable f97388f = new CompositeDisposable();

        /* renamed from: g */
        public volatile boolean f97389g;

        public C17629a(ScheduledExecutorService executor) {
            this.f97387e = executor;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f97389g) {
                return;
            }
            this.f97389g = true;
            this.f97388f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97389g;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable run, long delay, @NonNull TimeUnit unit) {
            if (this.f97389g) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(RxJavaPlugins.onSchedule(run), this.f97388f);
            this.f97388f.add(scheduledRunnable);
            try {
                scheduledRunnable.setFuture(delay <= 0 ? this.f97387e.submit((Callable) scheduledRunnable) : this.f97387e.schedule((Callable) scheduledRunnable, delay, unit));
                return scheduledRunnable;
            } catch (RejectedExecutionException e) {
                dispose();
                RxJavaPlugins.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f97384l = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
        f97383k = new RxThreadFactory(f97382j, Math.max(1, Math.min(10, Integer.getInteger(f97381i, 5).intValue())), true);
    }

    public SingleScheduler() {
        this(f97383k);
    }

    /* renamed from: c */
    public static ScheduledExecutorService m61285c(ThreadFactory threadFactory) {
        return SchedulerPoolFactory.create(threadFactory);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new C17629a(this.f97386h.get());
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run, long delay, TimeUnit unit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(RxJavaPlugins.onSchedule(run), true);
        try {
            scheduledDirectTask.setFuture(delay <= 0 ? this.f97386h.get().submit(scheduledDirectTask) : this.f97386h.get().schedule(scheduledDirectTask, delay, unit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable schedulePeriodicallyDirect(@NonNull Runnable run, long initialDelay, long period, TimeUnit unit) {
        Runnable onSchedule = RxJavaPlugins.onSchedule(run);
        if (period > 0) {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(onSchedule, true);
            try {
                scheduledDirectPeriodicTask.setFuture(this.f97386h.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, initialDelay, period, unit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e) {
                RxJavaPlugins.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledExecutorService scheduledExecutorService = this.f97386h.get();
        kmi kmiVar = new kmi(onSchedule, scheduledExecutorService);
        try {
            kmiVar.m55242b(initialDelay <= 0 ? scheduledExecutorService.submit(kmiVar) : scheduledExecutorService.schedule(kmiVar, initialDelay, unit));
            return kmiVar;
        } catch (RejectedExecutionException e2) {
            RxJavaPlugins.onError(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public void shutdown() {
        AtomicReference<ScheduledExecutorService> atomicReference = this.f97386h;
        ScheduledExecutorService scheduledExecutorService = f97384l;
        ScheduledExecutorService andSet = atomicReference.getAndSet(scheduledExecutorService);
        if (andSet != scheduledExecutorService) {
            andSet.shutdownNow();
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public void start() {
        ScheduledExecutorService scheduledExecutorService;
        ScheduledExecutorService scheduledExecutorService2 = null;
        do {
            scheduledExecutorService = this.f97386h.get();
            if (scheduledExecutorService != f97384l) {
                if (scheduledExecutorService2 != null) {
                    scheduledExecutorService2.shutdown();
                    return;
                }
                return;
            } else if (scheduledExecutorService2 == null) {
                scheduledExecutorService2 = m61285c(this.f97385g);
            }
        } while (!cyi.m53538a(this.f97386h, scheduledExecutorService, scheduledExecutorService2));
    }

    public SingleScheduler(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f97386h = atomicReference;
        this.f97385g = threadFactory;
        atomicReference.lazySet(m61285c(threadFactory));
    }
}
