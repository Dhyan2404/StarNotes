package io.reactivex.rxjava3.internal.operators.observable;

import com.onyx.android.sdk.rxgesture.RxLongPressGesture$longPressTimer$1;
import com.sunia.HTREnginev2.rek;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class ObservableWindowTimed<T> extends AbstractC17568a<T, Observable<T>> {

    /* renamed from: e */
    public final long f96961e;

    /* renamed from: f */
    public final long f96962f;

    /* renamed from: g */
    public final TimeUnit f96963g;

    /* renamed from: h */
    public final Scheduler f96964h;

    /* renamed from: i */
    public final long f96965i;

    /* renamed from: j */
    public final int f96966j;

    /* renamed from: k */
    public final boolean f96967k;

    /* loaded from: classes10.dex */
    public static abstract class AbstractWindowObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 5724293814035355511L;
        final int bufferSize;
        volatile boolean done;
        final Observer<? super Observable<T>> downstream;
        long emitted;
        Throwable error;
        final long timespan;
        final TimeUnit unit;
        Disposable upstream;
        volatile boolean upstreamCancelled;
        final SimplePlainQueue<Object> queue = new MpscLinkedQueue();
        final AtomicBoolean downstreamCancelled = new AtomicBoolean();
        final AtomicInteger windowCount = new AtomicInteger(1);

        public AbstractWindowObserver(Observer<? super Observable<T>> downstream, long timespan, TimeUnit unit, int bufferSize) {
            this.downstream = downstream;
            this.timespan = timespan;
            this.unit = unit;
            this.bufferSize = bufferSize;
        }

        abstract void cleanupResources();

        abstract void createFirstWindow();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.downstreamCancelled.compareAndSet(false, true)) {
                windowDone();
            }
        }

        abstract void drain();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.downstreamCancelled.get();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable t) {
            this.error = t;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
                createFirstWindow();
            }
        }

        final void windowDone() {
            if (this.windowCount.decrementAndGet() == 0) {
                cleanupResources();
                this.upstream.dispose();
                this.upstreamCancelled = true;
                drain();
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class WindowExactBoundedObserver<T> extends AbstractWindowObserver<T> implements Runnable {
        private static final long serialVersionUID = -6130475889925953722L;
        long count;
        final long maxSize;
        final boolean restartTimerOnMaxSize;
        final Scheduler scheduler;
        final SequentialDisposable timer;
        UnicastSubject<T> window;
        final Scheduler.Worker worker;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$WindowExactBoundedObserver$a */
        /* loaded from: classes10.dex */
        public static final class RunnableC17561a implements Runnable {

            /* renamed from: e */
            public final WindowExactBoundedObserver<?> f96968e;

            /* renamed from: f */
            public final long f96969f;

            public RunnableC17561a(WindowExactBoundedObserver<?> parent, long index) {
                this.f96968e = parent;
                this.f96969f = index;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f96968e.boundary(this);
            }
        }

        public WindowExactBoundedObserver(Observer<? super Observable<T>> actual, long timespan, TimeUnit unit, Scheduler scheduler, int bufferSize, long maxSize, boolean restartTimerOnMaxSize) {
            super(actual, timespan, unit, bufferSize);
            this.scheduler = scheduler;
            this.maxSize = maxSize;
            this.restartTimerOnMaxSize = restartTimerOnMaxSize;
            if (restartTimerOnMaxSize) {
                this.worker = scheduler.createWorker();
            } else {
                this.worker = null;
            }
            this.timer = new SequentialDisposable();
        }

        public void boundary(RunnableC17561a sender) {
            this.queue.offer(sender);
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void cleanupResources() {
            this.timer.dispose();
            Scheduler.Worker worker = this.worker;
            if (worker != null) {
                worker.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            this.emitted = 1L;
            this.windowCount.getAndIncrement();
            UnicastSubject<T> create = UnicastSubject.create(this.bufferSize, this);
            this.window = create;
            rek rekVar = new rek(create);
            this.downstream.onNext(rekVar);
            RunnableC17561a runnableC17561a = new RunnableC17561a(this, 1L);
            if (this.restartTimerOnMaxSize) {
                SequentialDisposable sequentialDisposable = this.timer;
                Scheduler.Worker worker = this.worker;
                long j = this.timespan;
                sequentialDisposable.replace(worker.schedulePeriodically(runnableC17561a, j, j, this.unit));
            } else {
                SequentialDisposable sequentialDisposable2 = this.timer;
                Scheduler scheduler = this.scheduler;
                long j2 = this.timespan;
                sequentialDisposable2.replace(scheduler.schedulePeriodicallyDirect(runnableC17561a, j2, j2, this.unit));
            }
            if (rekVar.m56945d()) {
                this.window.onComplete();
            }
        }

        public UnicastSubject<T> createNewWindow(UnicastSubject<T> window) {
            if (window != null) {
                window.onComplete();
                window = null;
            }
            if (this.downstreamCancelled.get()) {
                cleanupResources();
            } else {
                long j = this.emitted + 1;
                this.emitted = j;
                this.windowCount.getAndIncrement();
                window = UnicastSubject.create(this.bufferSize, this);
                this.window = window;
                rek rekVar = new rek(window);
                this.downstream.onNext(rekVar);
                if (this.restartTimerOnMaxSize) {
                    SequentialDisposable sequentialDisposable = this.timer;
                    Scheduler.Worker worker = this.worker;
                    RunnableC17561a runnableC17561a = new RunnableC17561a(this, j);
                    long j2 = this.timespan;
                    sequentialDisposable.update(worker.schedulePeriodically(runnableC17561a, j2, j2, this.unit));
                }
                if (rekVar.m56945d()) {
                    window.onComplete();
                }
            }
            return window;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            Observer<? super Observable<T>> observer = this.downstream;
            UnicastSubject<T> unicastSubject = this.window;
            int i = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    simplePlainQueue.clear();
                    unicastSubject = 0;
                    this.window = null;
                } else {
                    boolean z = this.done;
                    Object poll = simplePlainQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            if (unicastSubject != 0) {
                                unicastSubject.onError(th);
                            }
                            observer.onError(th);
                        } else {
                            if (unicastSubject != 0) {
                                unicastSubject.onComplete();
                            }
                            observer.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z2) {
                        if (poll instanceof RunnableC17561a) {
                            if (((RunnableC17561a) poll).f96969f == this.emitted || !this.restartTimerOnMaxSize) {
                                this.count = 0L;
                                unicastSubject = createNewWindow(unicastSubject);
                            }
                        } else if (unicastSubject != 0) {
                            unicastSubject.onNext((RxLongPressGesture$longPressTimer$1) poll);
                            long j = this.count + 1;
                            if (j == this.maxSize) {
                                this.count = 0L;
                                unicastSubject = createNewWindow(unicastSubject);
                            } else {
                                this.count = j;
                            }
                        }
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            windowDone();
        }
    }

    /* loaded from: classes10.dex */
    public static final class WindowExactUnboundedObserver<T> extends AbstractWindowObserver<T> implements Runnable {
        static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 1155822639622580836L;
        final Scheduler scheduler;
        final SequentialDisposable timer;
        UnicastSubject<T> window;
        final Runnable windowRunnable;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$WindowExactUnboundedObserver$a */
        /* loaded from: classes10.dex */
        public final class RunnableC17562a implements Runnable {
            public RunnableC17562a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowExactUnboundedObserver.this.windowDone();
            }
        }

        public WindowExactUnboundedObserver(Observer<? super Observable<T>> actual, long timespan, TimeUnit unit, Scheduler scheduler, int bufferSize) {
            super(actual, timespan, unit, bufferSize);
            this.scheduler = scheduler;
            this.timer = new SequentialDisposable();
            this.windowRunnable = new RunnableC17562a();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void cleanupResources() {
            this.timer.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            this.windowCount.getAndIncrement();
            UnicastSubject<T> create = UnicastSubject.create(this.bufferSize, this.windowRunnable);
            this.window = create;
            this.emitted = 1L;
            rek rekVar = new rek(create);
            this.downstream.onNext(rekVar);
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j = this.timespan;
            sequentialDisposable.replace(scheduler.schedulePeriodicallyDirect(this, j, j, this.unit));
            if (rekVar.m56945d()) {
                this.window.onComplete();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v12, types: [io.reactivex.rxjava3.subjects.UnicastSubject] */
        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            Observer<? super Observable<T>> observer = this.downstream;
            UnicastSubject unicastSubject = (UnicastSubject<T>) this.window;
            int i = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    simplePlainQueue.clear();
                    this.window = null;
                    unicastSubject = (UnicastSubject<T>) null;
                } else {
                    boolean z = this.done;
                    Object poll = simplePlainQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            if (unicastSubject != null) {
                                unicastSubject.onError(th);
                            }
                            observer.onError(th);
                        } else {
                            if (unicastSubject != null) {
                                unicastSubject.onComplete();
                            }
                            observer.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z2) {
                        if (poll == NEXT_WINDOW) {
                            if (unicastSubject != null) {
                                unicastSubject.onComplete();
                                this.window = null;
                                unicastSubject = (UnicastSubject<T>) null;
                            }
                            if (this.downstreamCancelled.get()) {
                                this.timer.dispose();
                            } else {
                                this.emitted++;
                                this.windowCount.getAndIncrement();
                                unicastSubject = (UnicastSubject<T>) UnicastSubject.create(this.bufferSize, this.windowRunnable);
                                this.window = unicastSubject;
                                rek rekVar = new rek(unicastSubject);
                                observer.onNext(rekVar);
                                if (rekVar.m56945d()) {
                                    unicastSubject.onComplete();
                                }
                            }
                        } else if (unicastSubject != null) {
                            unicastSubject.onNext(poll);
                        }
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.queue.offer(NEXT_WINDOW);
            drain();
        }
    }

    /* loaded from: classes10.dex */
    public static final class WindowSkipObserver<T> extends AbstractWindowObserver<T> implements Runnable {
        private static final long serialVersionUID = -7852870764194095894L;
        final long timeskip;
        final List<UnicastSubject<T>> windows;
        final Scheduler.Worker worker;
        static final Object WINDOW_OPEN = new Object();
        static final Object WINDOW_CLOSE = new Object();

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed$WindowSkipObserver$a */
        /* loaded from: classes10.dex */
        public static final class RunnableC17563a implements Runnable {

            /* renamed from: e */
            public final WindowSkipObserver<?> f96971e;

            /* renamed from: f */
            public final boolean f96972f;

            public RunnableC17563a(WindowSkipObserver<?> parent, boolean isOpen) {
                this.f96971e = parent;
                this.f96972f = isOpen;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f96971e.boundary(this.f96972f);
            }
        }

        public WindowSkipObserver(Observer<? super Observable<T>> actual, long timespan, long timeskip, TimeUnit unit, Scheduler.Worker worker, int bufferSize) {
            super(actual, timespan, unit, bufferSize);
            this.timeskip = timeskip;
            this.worker = worker;
            this.windows = new LinkedList();
        }

        public void boundary(boolean isOpen) {
            this.queue.offer(isOpen ? WINDOW_OPEN : WINDOW_CLOSE);
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void cleanupResources() {
            this.worker.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            this.emitted = 1L;
            this.windowCount.getAndIncrement();
            UnicastSubject<T> create = UnicastSubject.create(this.bufferSize, this);
            this.windows.add(create);
            rek rekVar = new rek(create);
            this.downstream.onNext(rekVar);
            this.worker.schedule(new RunnableC17563a(this, false), this.timespan, this.unit);
            Scheduler.Worker worker = this.worker;
            RunnableC17563a runnableC17563a = new RunnableC17563a(this, true);
            long j = this.timeskip;
            worker.schedulePeriodically(runnableC17563a, j, j, this.unit);
            if (rekVar.m56945d()) {
                create.onComplete();
                this.windows.remove(create);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            Observer<? super Observable<T>> observer = this.downstream;
            List<UnicastSubject<T>> list = this.windows;
            int i = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    simplePlainQueue.clear();
                    list.clear();
                } else {
                    boolean z = this.done;
                    Object poll = simplePlainQueue.poll();
                    boolean z2 = poll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            Iterator<UnicastSubject<T>> it2 = list.iterator();
                            while (it2.hasNext()) {
                                it2.next().onError(th);
                            }
                            observer.onError(th);
                        } else {
                            Iterator<UnicastSubject<T>> it3 = list.iterator();
                            while (it3.hasNext()) {
                                it3.next().onComplete();
                            }
                            observer.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z2) {
                        if (poll == WINDOW_OPEN) {
                            if (!this.downstreamCancelled.get()) {
                                this.emitted++;
                                this.windowCount.getAndIncrement();
                                UnicastSubject<T> create = UnicastSubject.create(this.bufferSize, this);
                                list.add(create);
                                rek rekVar = new rek(create);
                                observer.onNext(rekVar);
                                this.worker.schedule(new RunnableC17563a(this, false), this.timespan, this.unit);
                                if (rekVar.m56945d()) {
                                    create.onComplete();
                                }
                            }
                        } else if (poll != WINDOW_CLOSE) {
                            Iterator<UnicastSubject<T>> it4 = list.iterator();
                            while (it4.hasNext()) {
                                it4.next().onNext(poll);
                            }
                        } else if (!list.isEmpty()) {
                            list.remove(0).onComplete();
                        }
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            windowDone();
        }
    }

    public ObservableWindowTimed(Observable<T> source, long timespan, long timeskip, TimeUnit unit, Scheduler scheduler, long maxSize, int bufferSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f96961e = timespan;
        this.f96962f = timeskip;
        this.f96963g = unit;
        this.f96964h = scheduler;
        this.f96965i = maxSize;
        this.f96966j = bufferSize;
        this.f96967k = restartTimerOnMaxSize;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Observable<T>> downstream) {
        if (this.f96961e != this.f96962f) {
            this.source.subscribe(new WindowSkipObserver(downstream, this.f96961e, this.f96962f, this.f96963g, this.f96964h.createWorker(), this.f96966j));
        } else if (this.f96965i == Long.MAX_VALUE) {
            this.source.subscribe(new WindowExactUnboundedObserver(downstream, this.f96961e, this.f96963g, this.f96964h, this.f96966j));
        } else {
            this.source.subscribe(new WindowExactBoundedObserver(downstream, this.f96961e, this.f96963g, this.f96964h, this.f96966j, this.f96965i, this.f96967k));
        }
    }
}
