package io.reactivex.rxjava3.schedulers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class TestScheduler extends Scheduler {

    /* renamed from: g */
    public final Queue<C17645a> f97573g;

    /* renamed from: h */
    public final boolean f97574h;

    /* renamed from: i */
    public long f97575i;

    /* renamed from: j */
    public volatile long f97576j;

    /* renamed from: io.reactivex.rxjava3.schedulers.TestScheduler$a */
    /* loaded from: classes10.dex */
    public static final class C17645a implements Comparable<C17645a> {

        /* renamed from: e */
        public final long f97579e;

        /* renamed from: f */
        public final Runnable f97580f;

        /* renamed from: g */
        public final TestWorker f97581g;

        /* renamed from: h */
        public final long f97582h;

        public C17645a(TestWorker scheduler, long time, Runnable run, long count) {
            this.f97579e = time;
            this.f97580f = run;
            this.f97581g = scheduler;
            this.f97582h = count;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C17645a o) {
            long j = this.f97579e;
            long j2 = o.f97579e;
            return j == j2 ? Long.compare(this.f97582h, o.f97582h) : Long.compare(j, j2);
        }

        public String toString() {
            return String.format("TimedRunnable(time = %d, run = %s)", Long.valueOf(this.f97579e), this.f97580f.toString());
        }
    }

    public TestScheduler() {
        this(false);
    }

    public void advanceTimeBy(long delayTime, TimeUnit unit) {
        advanceTimeTo(this.f97576j + unit.toNanos(delayTime), TimeUnit.NANOSECONDS);
    }

    public void advanceTimeTo(long delayTime, TimeUnit unit) {
        m61355c(unit.toNanos(delayTime));
    }

    /* renamed from: c */
    public final void m61355c(long targetTimeInNanoseconds) {
        while (true) {
            C17645a peek = this.f97573g.peek();
            if (peek == null) {
                break;
            }
            long j = peek.f97579e;
            if (j > targetTimeInNanoseconds) {
                break;
            }
            if (j == 0) {
                j = this.f97576j;
            }
            this.f97576j = j;
            this.f97573g.remove(peek);
            if (!peek.f97581g.f97577e) {
                peek.f97580f.run();
            }
        }
        this.f97576j = targetTimeInNanoseconds;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new TestWorker();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public long now(@NonNull TimeUnit unit) {
        return unit.convert(this.f97576j, TimeUnit.NANOSECONDS);
    }

    public void triggerActions() {
        m61355c(this.f97576j);
    }

    public TestScheduler(boolean useOnScheduleHook) {
        this.f97573g = new PriorityBlockingQueue(11);
        this.f97574h = useOnScheduleHook;
    }

    public TestScheduler(long delayTime, TimeUnit unit) {
        this(delayTime, unit, false);
    }

    public TestScheduler(long delayTime, TimeUnit unit, boolean useOnScheduleHook) {
        this.f97573g = new PriorityBlockingQueue(11);
        this.f97576j = unit.toNanos(delayTime);
        this.f97574h = useOnScheduleHook;
    }

    /* loaded from: classes10.dex */
    public final class TestWorker extends Scheduler.Worker {

        /* renamed from: e */
        public volatile boolean f97577e;

        /* loaded from: classes10.dex */
        public final class QueueRemove extends AtomicReference<C17645a> implements Disposable {
            private static final long serialVersionUID = -7874968252110604360L;

            public QueueRemove(C17645a timedAction) {
                lazySet(timedAction);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public void dispose() {
                C17645a andSet = getAndSet(null);
                if (andSet != null) {
                    TestScheduler.this.f97573g.remove(andSet);
                }
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public boolean isDisposed() {
                return get() == null;
            }
        }

        public TestWorker() {
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97577e = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97577e;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public long now(@NonNull TimeUnit unit) {
            return TestScheduler.this.now(unit);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable run, long delayTime, @NonNull TimeUnit unit) {
            if (this.f97577e) {
                return EmptyDisposable.INSTANCE;
            }
            if (TestScheduler.this.f97574h) {
                run = RxJavaPlugins.onSchedule(run);
            }
            long nanos = TestScheduler.this.f97576j + unit.toNanos(delayTime);
            TestScheduler testScheduler = TestScheduler.this;
            long j = testScheduler.f97575i;
            testScheduler.f97575i = 1 + j;
            C17645a c17645a = new C17645a(this, nanos, run, j);
            TestScheduler.this.f97573g.add(c17645a);
            return new QueueRemove(c17645a);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable run) {
            if (this.f97577e) {
                return EmptyDisposable.INSTANCE;
            }
            if (TestScheduler.this.f97574h) {
                run = RxJavaPlugins.onSchedule(run);
            }
            TestScheduler testScheduler = TestScheduler.this;
            long j = testScheduler.f97575i;
            testScheduler.f97575i = 1 + j;
            C17645a c17645a = new C17645a(this, 0L, run, j);
            TestScheduler.this.f97573g.add(c17645a);
            return new QueueRemove(c17645a);
        }
    }
}
