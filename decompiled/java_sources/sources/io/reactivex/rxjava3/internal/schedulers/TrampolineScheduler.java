package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class TrampolineScheduler extends Scheduler {

    /* renamed from: g */
    public static final TrampolineScheduler f97390g = new TrampolineScheduler();

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler$a */
    /* loaded from: classes10.dex */
    public static final class RunnableC17630a implements Runnable {

        /* renamed from: e */
        public final Runnable f97391e;

        /* renamed from: f */
        public final C17632c f97392f;

        /* renamed from: g */
        public final long f97393g;

        public RunnableC17630a(Runnable run, C17632c worker, long execTime) {
            this.f97391e = run;
            this.f97392f = worker;
            this.f97393g = execTime;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f97392f.f97401h) {
                return;
            }
            long now = this.f97392f.now(TimeUnit.MILLISECONDS);
            long j = this.f97393g;
            if (j > now) {
                try {
                    Thread.sleep(j - now);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    RxJavaPlugins.onError(e);
                    return;
                }
            }
            if (this.f97392f.f97401h) {
                return;
            }
            this.f97391e.run();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler$b */
    /* loaded from: classes10.dex */
    public static final class C17631b implements Comparable<C17631b> {

        /* renamed from: e */
        public final Runnable f97394e;

        /* renamed from: f */
        public final long f97395f;

        /* renamed from: g */
        public final int f97396g;

        /* renamed from: h */
        public volatile boolean f97397h;

        public C17631b(Runnable run, Long execTime, int count) {
            this.f97394e = run;
            this.f97395f = execTime.longValue();
            this.f97396g = count;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C17631b that) {
            int compare = Long.compare(this.f97395f, that.f97395f);
            return compare == 0 ? Integer.compare(this.f97396g, that.f97396g) : compare;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler$c */
    /* loaded from: classes10.dex */
    public static final class C17632c extends Scheduler.Worker {

        /* renamed from: e */
        public final PriorityBlockingQueue<C17631b> f97398e = new PriorityBlockingQueue<>();

        /* renamed from: f */
        public final AtomicInteger f97399f = new AtomicInteger();

        /* renamed from: g */
        public final AtomicInteger f97400g = new AtomicInteger();

        /* renamed from: h */
        public volatile boolean f97401h;

        /* renamed from: io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler$c$a */
        /* loaded from: classes10.dex */
        public final class a implements Runnable {

            /* renamed from: e */
            public final C17631b f97402e;

            public a(C17631b timedRunnable) {
                this.f97402e = timedRunnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f97402e.f97397h = true;
                C17632c.this.f97398e.remove(this.f97402e);
            }
        }

        /* renamed from: a */
        public Disposable m61287a(Runnable action, long execTime) {
            if (this.f97401h) {
                return EmptyDisposable.INSTANCE;
            }
            C17631b c17631b = new C17631b(action, Long.valueOf(execTime), this.f97400g.incrementAndGet());
            this.f97398e.add(c17631b);
            if (this.f97399f.getAndIncrement() != 0) {
                return Disposable.fromRunnable(new a(c17631b));
            }
            int i = 1;
            while (!this.f97401h) {
                C17631b poll = this.f97398e.poll();
                if (poll == null) {
                    i = this.f97399f.addAndGet(-i);
                    if (i == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!poll.f97397h) {
                    poll.f97394e.run();
                }
            }
            this.f97398e.clear();
            return EmptyDisposable.INSTANCE;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97401h = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97401h;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable action) {
            return m61287a(action, now(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable action, long delayTime, @NonNull TimeUnit unit) {
            long now = now(TimeUnit.MILLISECONDS) + unit.toMillis(delayTime);
            return m61287a(new RunnableC17630a(action, this, now), now);
        }
    }

    public static TrampolineScheduler instance() {
        return f97390g;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new C17632c();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run) {
        RxJavaPlugins.onSchedule(run).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Disposable scheduleDirect(@NonNull Runnable run, long delay, TimeUnit unit) {
        try {
            unit.sleep(delay);
            RxJavaPlugins.onSchedule(run).run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            RxJavaPlugins.onError(e);
        }
        return EmptyDisposable.INSTANCE;
    }
}
