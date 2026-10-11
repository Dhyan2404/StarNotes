package io.reactivex.rxjava3.internal.schedulers;

import com.sunia.HTREnginev2.z5f;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ExecutorScheduler extends Scheduler {

    /* renamed from: g */
    public final boolean f97318g;

    /* renamed from: h */
    public final boolean f97319h;

    /* renamed from: i */
    @NonNull
    public final Executor f97320i;

    /* loaded from: classes10.dex */
    public static final class DelayedRunnable extends AtomicReference<Runnable> implements Runnable, Disposable, SchedulerRunnableIntrospection {
        private static final long serialVersionUID = -4101336210206799084L;
        final SequentialDisposable direct;
        final SequentialDisposable timed;

        public DelayedRunnable(Runnable run) {
            super(run);
            this.timed = new SequentialDisposable();
            this.direct = new SequentialDisposable();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (getAndSet(null) != null) {
                this.timed.dispose();
                this.direct.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection
        public Runnable getWrappedRunnable() {
            Runnable runnable = get();
            return runnable != null ? runnable : Functions.EMPTY_RUNNABLE;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = get();
            if (runnable != null) {
                try {
                    try {
                        runnable.run();
                        lazySet(null);
                        SequentialDisposable sequentialDisposable = this.timed;
                        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
                        sequentialDisposable.lazySet(disposableHelper);
                        this.direct.lazySet(disposableHelper);
                    } catch (Throwable th) {
                        lazySet(null);
                        this.timed.lazySet(DisposableHelper.DISPOSED);
                        this.direct.lazySet(DisposableHelper.DISPOSED);
                        throw th;
                    }
                } catch (Throwable th2) {
                    RxJavaPlugins.onError(th2);
                    throw th2;
                }
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler$a */
    /* loaded from: classes10.dex */
    public final class RunnableC17617a implements Runnable {

        /* renamed from: e */
        public final DelayedRunnable f97331e;

        public RunnableC17617a(DelayedRunnable dr) {
            this.f97331e = dr;
        }

        @Override // java.lang.Runnable
        public void run() {
            DelayedRunnable delayedRunnable = this.f97331e;
            delayedRunnable.direct.replace(ExecutorScheduler.this.scheduleDirect(delayedRunnable));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler$b */
    /* loaded from: classes10.dex */
    public static final class C17618b {

        /* renamed from: a */
        public static final Scheduler f97333a = Schedulers.single();
    }

    public ExecutorScheduler(@NonNull Executor executor, boolean interruptibleWorker, boolean fair) {
        this.f97320i = executor;
        this.f97318g = interruptibleWorker;
        this.f97319h = fair;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new ExecutorWorker(this.f97320i, this.f97318g, this.f97319h);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run) {
        Runnable onSchedule = RxJavaPlugins.onSchedule(run);
        try {
            if (this.f97320i instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(onSchedule, this.f97318g);
                scheduledDirectTask.setFuture(((ExecutorService) this.f97320i).submit(scheduledDirectTask));
                return scheduledDirectTask;
            }
            if (this.f97318g) {
                ExecutorWorker.InterruptibleRunnable interruptibleRunnable = new ExecutorWorker.InterruptibleRunnable(onSchedule, null);
                this.f97320i.execute(interruptibleRunnable);
                return interruptibleRunnable;
            }
            ExecutorWorker.BooleanRunnable booleanRunnable = new ExecutorWorker.BooleanRunnable(onSchedule);
            this.f97320i.execute(booleanRunnable);
            return booleanRunnable;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable schedulePeriodicallyDirect(@NonNull Runnable run, long initialDelay, long period, TimeUnit unit) {
        if (!(this.f97320i instanceof ScheduledExecutorService)) {
            return super.schedulePeriodicallyDirect(run, initialDelay, period, unit);
        }
        try {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(RxJavaPlugins.onSchedule(run), this.f97318g);
            scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) this.f97320i).scheduleAtFixedRate(scheduledDirectPeriodicTask, initialDelay, period, unit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run, final long delay, final TimeUnit unit) {
        Runnable onSchedule = RxJavaPlugins.onSchedule(run);
        if (this.f97320i instanceof ScheduledExecutorService) {
            try {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(onSchedule, this.f97318g);
                scheduledDirectTask.setFuture(((ScheduledExecutorService) this.f97320i).schedule(scheduledDirectTask, delay, unit));
                return scheduledDirectTask;
            } catch (RejectedExecutionException e) {
                RxJavaPlugins.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        }
        DelayedRunnable delayedRunnable = new DelayedRunnable(onSchedule);
        delayedRunnable.timed.replace(C17618b.f97333a.scheduleDirect(new RunnableC17617a(delayedRunnable), delay, unit));
        return delayedRunnable;
    }

    /* loaded from: classes10.dex */
    public static final class ExecutorWorker extends Scheduler.Worker implements Runnable {

        /* renamed from: e */
        public final boolean f97321e;

        /* renamed from: f */
        public final boolean f97322f;

        /* renamed from: g */
        public final Executor f97323g;

        /* renamed from: i */
        public volatile boolean f97325i;

        /* renamed from: j */
        public final AtomicInteger f97326j = new AtomicInteger();

        /* renamed from: k */
        public final CompositeDisposable f97327k = new CompositeDisposable();

        /* renamed from: h */
        public final MpscLinkedQueue<Runnable> f97324h = new MpscLinkedQueue<>();

        /* loaded from: classes10.dex */
        public static final class BooleanRunnable extends AtomicBoolean implements Runnable, Disposable {
            private static final long serialVersionUID = -2421395018820541164L;
            final Runnable actual;

            public BooleanRunnable(Runnable actual) {
                this.actual = actual;
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get()) {
                    return;
                }
                try {
                    this.actual.run();
                } finally {
                }
            }
        }

        /* loaded from: classes10.dex */
        public static final class InterruptibleRunnable extends AtomicInteger implements Runnable, Disposable {
            static final int FINISHED = 2;
            static final int INTERRUPTED = 4;
            static final int INTERRUPTING = 3;
            static final int READY = 0;
            static final int RUNNING = 1;
            private static final long serialVersionUID = -3603436687413320876L;
            final Runnable run;
            final DisposableContainer tasks;
            volatile Thread thread;

            public InterruptibleRunnable(Runnable run, DisposableContainer tasks) {
                this.run = run;
                this.tasks = tasks;
            }

            public void cleanup() {
                DisposableContainer disposableContainer = this.tasks;
                if (disposableContainer != null) {
                    disposableContainer.delete(this);
                }
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public void dispose() {
                while (true) {
                    int i = get();
                    if (i >= 2) {
                        return;
                    }
                    if (i == 0) {
                        if (compareAndSet(0, 4)) {
                            cleanup();
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.thread;
                        if (thread != null) {
                            thread.interrupt();
                            this.thread = null;
                        }
                        set(4);
                        cleanup();
                        return;
                    }
                }
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (get() == 0) {
                    this.thread = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.thread = null;
                        return;
                    }
                    try {
                        this.run.run();
                        this.thread = null;
                        if (compareAndSet(1, 2)) {
                            cleanup();
                            return;
                        }
                        while (get() == 3) {
                            Thread.yield();
                        }
                        Thread.interrupted();
                    } catch (Throwable th) {
                        try {
                            RxJavaPlugins.onError(th);
                            throw th;
                        } catch (Throwable th2) {
                            this.thread = null;
                            if (compareAndSet(1, 2)) {
                                cleanup();
                            } else {
                                while (get() == 3) {
                                    Thread.yield();
                                }
                                Thread.interrupted();
                            }
                            throw th2;
                        }
                    }
                }
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler$ExecutorWorker$a */
        /* loaded from: classes10.dex */
        public final class RunnableC17616a implements Runnable {

            /* renamed from: e */
            public final SequentialDisposable f97328e;

            /* renamed from: f */
            public final Runnable f97329f;

            public RunnableC17616a(SequentialDisposable mar, Runnable decoratedRun) {
                this.f97328e = mar;
                this.f97329f = decoratedRun;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f97328e.replace(ExecutorWorker.this.schedule(this.f97329f));
            }
        }

        public ExecutorWorker(Executor executor, boolean interruptibleWorker, boolean fair) {
            this.f97323g = executor;
            this.f97321e = interruptibleWorker;
            this.f97322f = fair;
        }

        /* renamed from: a */
        public void m61273a() {
            MpscLinkedQueue<Runnable> mpscLinkedQueue = this.f97324h;
            int i = 1;
            while (!this.f97325i) {
                do {
                    Runnable poll = mpscLinkedQueue.poll();
                    if (poll != null) {
                        poll.run();
                    } else if (this.f97325i) {
                        mpscLinkedQueue.clear();
                        return;
                    } else {
                        i = this.f97326j.addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    }
                } while (!this.f97325i);
                mpscLinkedQueue.clear();
                return;
            }
            mpscLinkedQueue.clear();
        }

        /* renamed from: b */
        public void m61274b() {
            MpscLinkedQueue<Runnable> mpscLinkedQueue = this.f97324h;
            if (this.f97325i) {
                mpscLinkedQueue.clear();
                return;
            }
            mpscLinkedQueue.poll().run();
            if (this.f97325i) {
                mpscLinkedQueue.clear();
            } else if (this.f97326j.decrementAndGet() != 0) {
                this.f97323g.execute(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f97325i) {
                return;
            }
            this.f97325i = true;
            this.f97327k.dispose();
            if (this.f97326j.getAndIncrement() == 0) {
                this.f97324h.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97325i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f97322f) {
                m61274b();
            } else {
                m61273a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable run) {
            Disposable booleanRunnable;
            if (this.f97325i) {
                return EmptyDisposable.INSTANCE;
            }
            Runnable onSchedule = RxJavaPlugins.onSchedule(run);
            if (this.f97321e) {
                booleanRunnable = new InterruptibleRunnable(onSchedule, this.f97327k);
                this.f97327k.add(booleanRunnable);
            } else {
                booleanRunnable = new BooleanRunnable(onSchedule);
            }
            this.f97324h.offer(booleanRunnable);
            if (this.f97326j.getAndIncrement() == 0) {
                try {
                    this.f97323g.execute(this);
                } catch (RejectedExecutionException e) {
                    this.f97325i = true;
                    this.f97324h.clear();
                    RxJavaPlugins.onError(e);
                    return EmptyDisposable.INSTANCE;
                }
            }
            return booleanRunnable;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable run, long delay, @NonNull TimeUnit unit) {
            if (delay <= 0) {
                return schedule(run);
            }
            if (this.f97325i) {
                return EmptyDisposable.INSTANCE;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new RunnableC17616a(sequentialDisposable2, RxJavaPlugins.onSchedule(run)), this.f97327k);
            this.f97327k.add(scheduledRunnable);
            Executor executor = this.f97323g;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.setFuture(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, delay, unit));
                } catch (RejectedExecutionException e) {
                    this.f97325i = true;
                    RxJavaPlugins.onError(e);
                    return EmptyDisposable.INSTANCE;
                }
            } else {
                scheduledRunnable.setFuture(new z5f(C17618b.f97333a.scheduleDirect(scheduledRunnable, delay, unit)));
            }
            sequentialDisposable.replace(scheduledRunnable);
            return sequentialDisposable2;
        }
    }
}
