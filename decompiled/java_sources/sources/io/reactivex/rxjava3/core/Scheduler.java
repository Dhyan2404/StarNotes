package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.schedulers.NewThreadWorker;
import io.reactivex.rxjava3.internal.schedulers.SchedulerWhen;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public abstract class Scheduler {

    /* renamed from: e */
    public static boolean f94995e = Boolean.getBoolean("rx3.scheduler.use-nanotime");

    /* renamed from: f */
    public static final long f94996f = m61108a(Long.getLong("rx3.scheduler.drift-tolerance", 15).longValue(), System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes"));

    /* loaded from: classes4.dex */
    public static abstract class Worker implements Disposable {

        /* renamed from: io.reactivex.rxjava3.core.Scheduler$Worker$a */
        /* loaded from: classes4.dex */
        public final class RunnableC17245a implements Runnable, SchedulerRunnableIntrospection {

            /* renamed from: e */
            @NonNull
            public final Runnable f94997e;

            /* renamed from: f */
            @NonNull
            public final SequentialDisposable f94998f;

            /* renamed from: g */
            public final long f94999g;

            /* renamed from: h */
            public long f95000h;

            /* renamed from: i */
            public long f95001i;

            /* renamed from: j */
            public long f95002j;

            public RunnableC17245a(long firstStartInNanoseconds, @NonNull Runnable decoratedRun, long firstNowNanoseconds, @NonNull SequentialDisposable sd, long periodInNanoseconds) {
                this.f94997e = decoratedRun;
                this.f94998f = sd;
                this.f94999g = periodInNanoseconds;
                this.f95001i = firstNowNanoseconds;
                this.f95002j = firstStartInNanoseconds;
            }

            @Override // io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection
            public Runnable getWrappedRunnable() {
                return this.f94997e;
            }

            @Override // java.lang.Runnable
            public void run() {
                long j;
                this.f94997e.run();
                if (this.f94998f.isDisposed()) {
                    return;
                }
                Worker worker = Worker.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long now = worker.now(timeUnit);
                long j2 = Scheduler.f94996f;
                long j3 = now + j2;
                long j4 = this.f95001i;
                if (j3 >= j4) {
                    long j5 = this.f94999g;
                    if (now < j4 + j5 + j2) {
                        long j6 = this.f95002j;
                        long j7 = this.f95000h + 1;
                        this.f95000h = j7;
                        j = j6 + (j7 * j5);
                        this.f95001i = now;
                        this.f94998f.replace(Worker.this.schedule(this, j - now, timeUnit));
                    }
                }
                long j8 = this.f94999g;
                long j9 = now + j8;
                long j10 = this.f95000h + 1;
                this.f95000h = j10;
                this.f95002j = j9 - (j8 * j10);
                j = j9;
                this.f95001i = now;
                this.f94998f.replace(Worker.this.schedule(this, j - now, timeUnit));
            }
        }

        public long now(@NonNull TimeUnit unit) {
            return Scheduler.m61109b(unit);
        }

        @NonNull
        public Disposable schedule(@NonNull Runnable run) {
            return schedule(run, 0L, TimeUnit.NANOSECONDS);
        }

        @NonNull
        public abstract Disposable schedule(@NonNull Runnable run, long delay, @NonNull TimeUnit unit);

        @NonNull
        public Disposable schedulePeriodically(@NonNull Runnable run, final long initialDelay, final long period, @NonNull final TimeUnit unit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Runnable onSchedule = RxJavaPlugins.onSchedule(run);
            long nanos = unit.toNanos(period);
            long now = now(TimeUnit.NANOSECONDS);
            Disposable schedule = schedule(new RunnableC17245a(now + unit.toNanos(initialDelay), onSchedule, now, sequentialDisposable2, nanos), initialDelay, unit);
            if (schedule == EmptyDisposable.INSTANCE) {
                return schedule;
            }
            sequentialDisposable.replace(schedule);
            return sequentialDisposable2;
        }
    }

    /* renamed from: io.reactivex.rxjava3.core.Scheduler$a */
    /* loaded from: classes4.dex */
    public static final class RunnableC17246a implements Disposable, Runnable, SchedulerRunnableIntrospection {

        /* renamed from: e */
        @NonNull
        public final Runnable f95004e;

        /* renamed from: f */
        @NonNull
        public final Worker f95005f;

        /* renamed from: g */
        @Nullable
        public Thread f95006g;

        public RunnableC17246a(@NonNull Runnable decoratedRun, @NonNull Worker w) {
            this.f95004e = decoratedRun;
            this.f95005f = w;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f95006g == Thread.currentThread()) {
                Worker worker = this.f95005f;
                if (worker instanceof NewThreadWorker) {
                    ((NewThreadWorker) worker).shutdown();
                    return;
                }
            }
            this.f95005f.dispose();
        }

        @Override // io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection
        public Runnable getWrappedRunnable() {
            return this.f95004e;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95005f.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f95006g = Thread.currentThread();
            try {
                this.f95004e.run();
            } finally {
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.core.Scheduler$b */
    /* loaded from: classes4.dex */
    public static final class RunnableC17247b implements Disposable, Runnable, SchedulerRunnableIntrospection {

        /* renamed from: e */
        @NonNull
        public final Runnable f95007e;

        /* renamed from: f */
        @NonNull
        public final Worker f95008f;

        /* renamed from: g */
        public volatile boolean f95009g;

        public RunnableC17247b(@NonNull Runnable run, @NonNull Worker worker) {
            this.f95007e = run;
            this.f95008f = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95009g = true;
            this.f95008f.dispose();
        }

        @Override // io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection
        public Runnable getWrappedRunnable() {
            return this.f95007e;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95009g;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f95009g) {
                return;
            }
            try {
                this.f95007e.run();
            } catch (Throwable th) {
                dispose();
                RxJavaPlugins.onError(th);
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static long m61108a(long time, String timeUnit) {
        return "seconds".equalsIgnoreCase(timeUnit) ? TimeUnit.SECONDS.toNanos(time) : "milliseconds".equalsIgnoreCase(timeUnit) ? TimeUnit.MILLISECONDS.toNanos(time) : TimeUnit.MINUTES.toNanos(time);
    }

    /* renamed from: b */
    public static long m61109b(TimeUnit unit) {
        return !f94995e ? unit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : unit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public static long clockDriftTolerance() {
        return f94996f;
    }

    @NonNull
    public abstract Worker createWorker();

    public long now(@NonNull TimeUnit unit) {
        return m61109b(unit);
    }

    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run) {
        return scheduleDirect(run, 0L, TimeUnit.NANOSECONDS);
    }

    @NonNull
    public Disposable schedulePeriodicallyDirect(@NonNull Runnable run, long initialDelay, long period, @NonNull TimeUnit unit) {
        Worker createWorker = createWorker();
        RunnableC17247b runnableC17247b = new RunnableC17247b(RxJavaPlugins.onSchedule(run), createWorker);
        Disposable schedulePeriodically = createWorker.schedulePeriodically(runnableC17247b, initialDelay, period, unit);
        return schedulePeriodically == EmptyDisposable.INSTANCE ? schedulePeriodically : runnableC17247b;
    }

    public void shutdown() {
    }

    public void start() {
    }

    @NonNull
    public <S extends Scheduler & Disposable> S when(@NonNull Function<Flowable<Flowable<Completable>>, Completable> combine) {
        Objects.requireNonNull(combine, "combine is null");
        return new SchedulerWhen(combine, this);
    }

    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run, long delay, @NonNull TimeUnit unit) {
        Worker createWorker = createWorker();
        RunnableC17246a runnableC17246a = new RunnableC17246a(RxJavaPlugins.onSchedule(run), createWorker);
        createWorker.schedule(runnableC17246a, delay, unit);
        return runnableC17246a;
    }
}
