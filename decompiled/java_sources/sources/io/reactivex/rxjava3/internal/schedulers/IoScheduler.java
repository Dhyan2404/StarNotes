package io.reactivex.rxjava3.internal.schedulers;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class IoScheduler extends Scheduler {
    public static final long KEEP_ALIVE_TIME_DEFAULT = 60;

    /* renamed from: i */
    public static final String f97336i = "RxCachedThreadScheduler";

    /* renamed from: j */
    public static final RxThreadFactory f97337j;

    /* renamed from: k */
    public static final String f97338k = "RxCachedWorkerPoolEvictor";

    /* renamed from: l */
    public static final RxThreadFactory f97339l;

    /* renamed from: p */
    public static final C17622c f97343p;

    /* renamed from: q */
    public static final String f97344q = "rx3.io-priority";

    /* renamed from: r */
    public static final String f97345r = "rx3.io-scheduled-release";

    /* renamed from: s */
    public static boolean f97346s;

    /* renamed from: t */
    public static final RunnableC17620a f97347t;

    /* renamed from: g */
    public final ThreadFactory f97348g;

    /* renamed from: h */
    public final AtomicReference<RunnableC17620a> f97349h;

    /* renamed from: o */
    public static final TimeUnit f97342o = TimeUnit.SECONDS;

    /* renamed from: m */
    public static final String f97340m = "rx3.io-keep-alive-time";

    /* renamed from: n */
    public static final long f97341n = Long.getLong(f97340m, 60).longValue();

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.IoScheduler$a */
    /* loaded from: classes10.dex */
    public static final class RunnableC17620a implements Runnable {

        /* renamed from: e */
        public final long f97350e;

        /* renamed from: f */
        public final ConcurrentLinkedQueue<C17622c> f97351f;

        /* renamed from: g */
        public final CompositeDisposable f97352g;

        /* renamed from: h */
        public final ScheduledExecutorService f97353h;

        /* renamed from: i */
        public final Future<?> f97354i;

        /* renamed from: j */
        public final ThreadFactory f97355j;

        public RunnableC17620a(long keepAliveTime, TimeUnit unit, ThreadFactory threadFactory) {
            ScheduledExecutorService scheduledExecutorService;
            ScheduledFuture<?> scheduledFuture;
            long nanos = unit != null ? unit.toNanos(keepAliveTime) : 0L;
            this.f97350e = nanos;
            this.f97351f = new ConcurrentLinkedQueue<>();
            this.f97352g = new CompositeDisposable();
            this.f97355j = threadFactory;
            if (unit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, IoScheduler.f97339l);
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                scheduledExecutorService = null;
                scheduledFuture = null;
            }
            this.f97353h = scheduledExecutorService;
            this.f97354i = scheduledFuture;
        }

        /* renamed from: a */
        public static void m61275a(ConcurrentLinkedQueue<C17622c> expiringWorkerQueue, CompositeDisposable allWorkers) {
            if (expiringWorkerQueue.isEmpty()) {
                return;
            }
            long m61276c = m61276c();
            Iterator<C17622c> it2 = expiringWorkerQueue.iterator();
            while (it2.hasNext()) {
                C17622c next = it2.next();
                if (next.m61280a() > m61276c) {
                    return;
                }
                if (expiringWorkerQueue.remove(next)) {
                    allWorkers.remove(next);
                }
            }
        }

        /* renamed from: c */
        public static long m61276c() {
            return System.nanoTime();
        }

        /* renamed from: b */
        public C17622c m61277b() {
            if (this.f97352g.isDisposed()) {
                return IoScheduler.f97343p;
            }
            while (!this.f97351f.isEmpty()) {
                C17622c poll = this.f97351f.poll();
                if (poll != null) {
                    return poll;
                }
            }
            C17622c c17622c = new C17622c(this.f97355j);
            this.f97352g.add(c17622c);
            return c17622c;
        }

        /* renamed from: d */
        public void m61278d(C17622c threadWorker) {
            threadWorker.m61281b(m61276c() + this.f97350e);
            this.f97351f.offer(threadWorker);
        }

        /* renamed from: e */
        public void m61279e() {
            this.f97352g.dispose();
            Future<?> future = this.f97354i;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f97353h;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            m61275a(this.f97351f, this.f97352g);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.IoScheduler$b */
    /* loaded from: classes10.dex */
    public static final class RunnableC17621b extends Scheduler.Worker implements Runnable {

        /* renamed from: f */
        public final RunnableC17620a f97357f;

        /* renamed from: g */
        public final C17622c f97358g;

        /* renamed from: h */
        public final AtomicBoolean f97359h = new AtomicBoolean();

        /* renamed from: e */
        public final CompositeDisposable f97356e = new CompositeDisposable();

        public RunnableC17621b(RunnableC17620a pool) {
            this.f97357f = pool;
            this.f97358g = pool.m61277b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f97359h.compareAndSet(false, true)) {
                this.f97356e.dispose();
                if (IoScheduler.f97346s) {
                    this.f97358g.scheduleActual(this, 0L, TimeUnit.NANOSECONDS, null);
                } else {
                    this.f97357f.m61278d(this.f97358g);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97359h.get();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f97357f.m61278d(this.f97358g);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        @NonNull
        public Disposable schedule(@NonNull Runnable action, long delayTime, @NonNull TimeUnit unit) {
            return this.f97356e.isDisposed() ? EmptyDisposable.INSTANCE : this.f97358g.scheduleActual(action, delayTime, unit, this.f97356e);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.schedulers.IoScheduler$c */
    /* loaded from: classes10.dex */
    public static final class C17622c extends NewThreadWorker {

        /* renamed from: g */
        public long f97360g;

        public C17622c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f97360g = 0L;
        }

        /* renamed from: a */
        public long m61280a() {
            return this.f97360g;
        }

        /* renamed from: b */
        public void m61281b(long expirationTime) {
            this.f97360g = expirationTime;
        }
    }

    static {
        C17622c c17622c = new C17622c(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        f97343p = c17622c;
        c17622c.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger(f97344q, 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory(f97336i, max);
        f97337j = rxThreadFactory;
        f97339l = new RxThreadFactory(f97338k, max);
        f97346s = Boolean.getBoolean(f97345r);
        RunnableC17620a runnableC17620a = new RunnableC17620a(0L, null, rxThreadFactory);
        f97347t = runnableC17620a;
        runnableC17620a.m61279e();
    }

    public IoScheduler() {
        this(f97337j);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    @NonNull
    public Scheduler.Worker createWorker() {
        return new RunnableC17621b(this.f97349h.get());
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public void shutdown() {
        AtomicReference<RunnableC17620a> atomicReference = this.f97349h;
        RunnableC17620a runnableC17620a = f97347t;
        RunnableC17620a andSet = atomicReference.getAndSet(runnableC17620a);
        if (andSet != runnableC17620a) {
            andSet.m61279e();
        }
    }

    public int size() {
        return this.f97349h.get().f97352g.size();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public void start() {
        RunnableC17620a runnableC17620a = new RunnableC17620a(f97341n, f97342o, this.f97348g);
        if (cyi.m53538a(this.f97349h, f97347t, runnableC17620a)) {
            return;
        }
        runnableC17620a.m61279e();
    }

    public IoScheduler(ThreadFactory threadFactory) {
        this.f97348g = threadFactory;
        this.f97349h = new AtomicReference<>(f97347t);
        start();
    }
}
