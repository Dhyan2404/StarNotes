package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.QueueDrainObserver;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.QueueDrainHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableBufferTimed<T, U extends Collection<? super T>> extends AbstractC17568a<T, U> {

    /* renamed from: e */
    public final long f96367e;

    /* renamed from: f */
    public final long f96368f;

    /* renamed from: g */
    public final TimeUnit f96369g;

    /* renamed from: h */
    public final Scheduler f96370h;

    /* renamed from: i */
    public final Supplier<U> f96371i;

    /* renamed from: j */
    public final int f96372j;

    /* renamed from: k */
    public final boolean f96373k;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed$a */
    /* loaded from: classes10.dex */
    public static final class RunnableC17469a<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {

        /* renamed from: A0 */
        public final boolean f96374A0;

        /* renamed from: B0 */
        public final Scheduler.Worker f96375B0;

        /* renamed from: C0 */
        public U f96376C0;

        /* renamed from: D0 */
        public Disposable f96377D0;

        /* renamed from: E0 */
        public Disposable f96378E0;

        /* renamed from: F0 */
        public long f96379F0;

        /* renamed from: G0 */
        public long f96380G0;

        /* renamed from: w0 */
        public final Supplier<U> f96381w0;

        /* renamed from: x0 */
        public final long f96382x0;

        /* renamed from: y0 */
        public final TimeUnit f96383y0;

        /* renamed from: z0 */
        public final int f96384z0;

        public RunnableC17469a(Observer<? super U> actual, Supplier<U> bufferSupplier, long timespan, TimeUnit unit, int maxSize, boolean restartOnMaxSize, Scheduler.Worker w) {
            super(actual, new MpscLinkedQueue());
            this.f96381w0 = bufferSupplier;
            this.f96382x0 = timespan;
            this.f96383y0 = unit;
            this.f96384z0 = maxSize;
            this.f96374A0 = restartOnMaxSize;
            this.f96375B0 = w;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> a, U v) {
            a.onNext(v);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.f96378E0.dispose();
            this.f96375B0.dispose();
            synchronized (this) {
                this.f96376C0 = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u;
            this.f96375B0.dispose();
            synchronized (this) {
                u = this.f96376C0;
                this.f96376C0 = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainLoop(this.queue, this.downstream, false, this, this);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            synchronized (this) {
                this.f96376C0 = null;
            }
            this.downstream.onError(t);
            this.f96375B0.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f96376C0;
                if (u == null) {
                    return;
                }
                u.add(t);
                if (u.size() < this.f96384z0) {
                    return;
                }
                this.f96376C0 = null;
                this.f96379F0++;
                if (this.f96374A0) {
                    this.f96377D0.dispose();
                }
                fastPathOrderedEmit(u, false, this);
                try {
                    U u2 = this.f96381w0.get();
                    Objects.requireNonNull(u2, "The buffer supplied is null");
                    U u3 = u2;
                    synchronized (this) {
                        this.f96376C0 = u3;
                        this.f96380G0++;
                    }
                    if (this.f96374A0) {
                        Scheduler.Worker worker = this.f96375B0;
                        long j = this.f96382x0;
                        this.f96377D0 = worker.schedulePeriodically(this, j, j, this.f96383y0);
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.downstream.onError(th);
                    dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96378E0, d)) {
                this.f96378E0 = d;
                try {
                    U u = this.f96381w0.get();
                    Objects.requireNonNull(u, "The buffer supplied is null");
                    this.f96376C0 = u;
                    this.downstream.onSubscribe(this);
                    Scheduler.Worker worker = this.f96375B0;
                    long j = this.f96382x0;
                    this.f96377D0 = worker.schedulePeriodically(this, j, j, this.f96383y0);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    d.dispose();
                    EmptyDisposable.error(th, this.downstream);
                    this.f96375B0.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = this.f96381w0.get();
                Objects.requireNonNull(u, "The bufferSupplier returned a null buffer");
                U u2 = u;
                synchronized (this) {
                    U u3 = this.f96376C0;
                    if (u3 != null && this.f96379F0 == this.f96380G0) {
                        this.f96376C0 = u2;
                        fastPathOrderedEmit(u3, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                dispose();
                this.downstream.onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed$b */
    /* loaded from: classes10.dex */
    public static final class RunnableC17470b<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {

        /* renamed from: A0 */
        public Disposable f96385A0;

        /* renamed from: B0 */
        public U f96386B0;

        /* renamed from: C0 */
        public final AtomicReference<Disposable> f96387C0;

        /* renamed from: w0 */
        public final Supplier<U> f96388w0;

        /* renamed from: x0 */
        public final long f96389x0;

        /* renamed from: y0 */
        public final TimeUnit f96390y0;

        /* renamed from: z0 */
        public final Scheduler f96391z0;

        public RunnableC17470b(Observer<? super U> actual, Supplier<U> bufferSupplier, long timespan, TimeUnit unit, Scheduler scheduler) {
            super(actual, new MpscLinkedQueue());
            this.f96387C0 = new AtomicReference<>();
            this.f96388w0 = bufferSupplier;
            this.f96389x0 = timespan;
            this.f96390y0 = unit;
            this.f96391z0 = scheduler;
        }

        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> a, U v) {
            this.downstream.onNext(v);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f96387C0);
            this.f96385A0.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96387C0.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.f96386B0;
                this.f96386B0 = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainLoop(this.queue, this.downstream, false, null, this);
                }
            }
            DisposableHelper.dispose(this.f96387C0);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            synchronized (this) {
                this.f96386B0 = null;
            }
            this.downstream.onError(t);
            DisposableHelper.dispose(this.f96387C0);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f96386B0;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96385A0, d)) {
                this.f96385A0 = d;
                try {
                    U u = this.f96388w0.get();
                    Objects.requireNonNull(u, "The buffer supplied is null");
                    this.f96386B0 = u;
                    this.downstream.onSubscribe(this);
                    if (DisposableHelper.isDisposed(this.f96387C0.get())) {
                        return;
                    }
                    Scheduler scheduler = this.f96391z0;
                    long j = this.f96389x0;
                    DisposableHelper.set(this.f96387C0, scheduler.schedulePeriodicallyDirect(this, j, j, this.f96390y0));
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    dispose();
                    EmptyDisposable.error(th, this.downstream);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u;
            try {
                U u2 = this.f96388w0.get();
                Objects.requireNonNull(u2, "The bufferSupplier returned a null buffer");
                U u3 = u2;
                synchronized (this) {
                    u = this.f96386B0;
                    if (u != null) {
                        this.f96386B0 = u3;
                    }
                }
                if (u == null) {
                    DisposableHelper.dispose(this.f96387C0);
                } else {
                    fastPathEmit(u, false, this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
                dispose();
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed$c */
    /* loaded from: classes10.dex */
    public static final class RunnableC17471c<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {

        /* renamed from: A0 */
        public final Scheduler.Worker f96392A0;

        /* renamed from: B0 */
        public final List<U> f96393B0;

        /* renamed from: C0 */
        public Disposable f96394C0;

        /* renamed from: w0 */
        public final Supplier<U> f96395w0;

        /* renamed from: x0 */
        public final long f96396x0;

        /* renamed from: y0 */
        public final long f96397y0;

        /* renamed from: z0 */
        public final TimeUnit f96398z0;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed$c$a */
        /* loaded from: classes10.dex */
        public final class a implements Runnable {

            /* renamed from: e */
            public final U f96399e;

            public a(U b) {
                this.f96399e = b;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (RunnableC17471c.this) {
                    RunnableC17471c.this.f96393B0.remove(this.f96399e);
                }
                RunnableC17471c runnableC17471c = RunnableC17471c.this;
                runnableC17471c.fastPathOrderedEmit(this.f96399e, false, runnableC17471c.f96392A0);
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed$c$b */
        /* loaded from: classes10.dex */
        public final class b implements Runnable {

            /* renamed from: e */
            public final U f96401e;

            public b(U buffer) {
                this.f96401e = buffer;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (RunnableC17471c.this) {
                    RunnableC17471c.this.f96393B0.remove(this.f96401e);
                }
                RunnableC17471c runnableC17471c = RunnableC17471c.this;
                runnableC17471c.fastPathOrderedEmit(this.f96401e, false, runnableC17471c.f96392A0);
            }
        }

        public RunnableC17471c(Observer<? super U> actual, Supplier<U> bufferSupplier, long timespan, long timeskip, TimeUnit unit, Scheduler.Worker w) {
            super(actual, new MpscLinkedQueue());
            this.f96395w0 = bufferSupplier;
            this.f96396x0 = timespan;
            this.f96397y0 = timeskip;
            this.f96398z0 = unit;
            this.f96392A0 = w;
            this.f96393B0 = new LinkedList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> a2, U v) {
            a2.onNext(v);
        }

        /* renamed from: d */
        public void m61225d() {
            synchronized (this) {
                this.f96393B0.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            m61225d();
            this.f96394C0.dispose();
            this.f96392A0.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f96393B0);
                this.f96393B0.clear();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.queue.offer((Collection) it2.next());
            }
            this.done = true;
            if (enter()) {
                QueueDrainHelper.drainLoop(this.queue, this.downstream, false, this.f96392A0, this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.done = true;
            m61225d();
            this.downstream.onError(t);
            this.f96392A0.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            synchronized (this) {
                Iterator<U> it2 = this.f96393B0.iterator();
                while (it2.hasNext()) {
                    it2.next().add(t);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96394C0, d)) {
                this.f96394C0 = d;
                try {
                    U u = this.f96395w0.get();
                    Objects.requireNonNull(u, "The buffer supplied is null");
                    U u2 = u;
                    this.f96393B0.add(u2);
                    this.downstream.onSubscribe(this);
                    Scheduler.Worker worker = this.f96392A0;
                    long j = this.f96397y0;
                    worker.schedulePeriodically(this, j, j, this.f96398z0);
                    this.f96392A0.schedule(new b(u2), this.f96396x0, this.f96398z0);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    d.dispose();
                    EmptyDisposable.error(th, this.downstream);
                    this.f96392A0.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cancelled) {
                return;
            }
            try {
                U u = this.f96395w0.get();
                Objects.requireNonNull(u, "The bufferSupplier returned a null buffer");
                U u2 = u;
                synchronized (this) {
                    if (this.cancelled) {
                        return;
                    }
                    this.f96393B0.add(u2);
                    this.f96392A0.schedule(new a(u2), this.f96396x0, this.f96398z0);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
                dispose();
            }
        }
    }

    public ObservableBufferTimed(ObservableSource<T> source, long timespan, long timeskip, TimeUnit unit, Scheduler scheduler, Supplier<U> bufferSupplier, int maxSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f96367e = timespan;
        this.f96368f = timeskip;
        this.f96369g = unit;
        this.f96370h = scheduler;
        this.f96371i = bufferSupplier;
        this.f96372j = maxSize;
        this.f96373k = restartTimerOnMaxSize;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super U> t) {
        if (this.f96367e == this.f96368f && this.f96372j == Integer.MAX_VALUE) {
            this.source.subscribe(new RunnableC17470b(new SerializedObserver(t), this.f96371i, this.f96367e, this.f96369g, this.f96370h));
            return;
        }
        Scheduler.Worker createWorker = this.f96370h.createWorker();
        if (this.f96367e == this.f96368f) {
            this.source.subscribe(new RunnableC17469a(new SerializedObserver(t), this.f96371i, this.f96367e, this.f96369g, this.f96372j, this.f96373k, createWorker));
        } else {
            this.source.subscribe(new RunnableC17471c(new SerializedObserver(t), this.f96371i, this.f96367e, this.f96368f, this.f96369g, createWorker));
        }
    }
}
