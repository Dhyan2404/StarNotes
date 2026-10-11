package io.reactivex.rxjava3.internal.schedulers;

import com.sunia.HTREnginev2.kmi;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public class NewThreadWorker extends Scheduler.Worker {

    /* renamed from: e */
    public final ScheduledExecutorService f97365e;

    /* renamed from: f */
    public volatile boolean f97366f;

    public NewThreadWorker(ThreadFactory threadFactory) {
        this.f97365e = SchedulerPoolFactory.create(threadFactory);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        if (this.f97366f) {
            return;
        }
        this.f97366f = true;
        this.f97365e.shutdownNow();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f97366f;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler.Worker
    @NonNull
    public Disposable schedule(@NonNull final Runnable run) {
        return schedule(run, 0L, null);
    }

    @NonNull
    public ScheduledRunnable scheduleActual(final Runnable run, long delayTime, @NonNull TimeUnit unit, @Nullable DisposableContainer parent) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(RxJavaPlugins.onSchedule(run), parent);
        if (parent != null && !parent.add(scheduledRunnable)) {
            return scheduledRunnable;
        }
        try {
            scheduledRunnable.setFuture(delayTime <= 0 ? this.f97365e.submit((Callable) scheduledRunnable) : this.f97365e.schedule((Callable) scheduledRunnable, delayTime, unit));
        } catch (RejectedExecutionException e) {
            if (parent != null) {
                parent.remove(scheduledRunnable);
            }
            RxJavaPlugins.onError(e);
        }
        return scheduledRunnable;
    }

    public Disposable scheduleDirect(final Runnable run, long delayTime, TimeUnit unit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(RxJavaPlugins.onSchedule(run), true);
        try {
            scheduledDirectTask.setFuture(delayTime <= 0 ? this.f97365e.submit(scheduledDirectTask) : this.f97365e.schedule(scheduledDirectTask, delayTime, unit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    public Disposable schedulePeriodicallyDirect(Runnable run, long initialDelay, long period, TimeUnit unit) {
        Runnable onSchedule = RxJavaPlugins.onSchedule(run);
        if (period <= 0) {
            kmi kmiVar = new kmi(onSchedule, this.f97365e);
            try {
                kmiVar.m55242b(initialDelay <= 0 ? this.f97365e.submit(kmiVar) : this.f97365e.schedule(kmiVar, initialDelay, unit));
                return kmiVar;
            } catch (RejectedExecutionException e) {
                RxJavaPlugins.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(onSchedule, true);
        try {
            scheduledDirectPeriodicTask.setFuture(this.f97365e.scheduleAtFixedRate(scheduledDirectPeriodicTask, initialDelay, period, unit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e2) {
            RxJavaPlugins.onError(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    public void shutdown() {
        if (this.f97366f) {
            return;
        }
        this.f97366f = true;
        this.f97365e.shutdown();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler.Worker
    @NonNull
    public Disposable schedule(@NonNull final Runnable action, long delayTime, @NonNull TimeUnit unit) {
        if (this.f97366f) {
            return EmptyDisposable.INSTANCE;
        }
        return scheduleActual(action, delayTime, unit, null);
    }
}
