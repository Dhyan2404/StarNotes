package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.QueueDrainHelper;
import io.reactivex.rxjava3.subscribers.SerializedSubscriber;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableBufferTimed<T, U extends Collection<? super T>> extends AbstractC14025l3<T, U> {

    /* renamed from: f */
    public final long f95392f;

    /* renamed from: g */
    public final long f95393g;

    /* renamed from: h */
    public final TimeUnit f95394h;

    /* renamed from: i */
    public final Scheduler f95395i;

    /* renamed from: j */
    public final Supplier<U> f95396j;

    /* renamed from: k */
    public final int f95397k;

    /* renamed from: l */
    public final boolean f95398l;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableBufferTimed$a */
    /* loaded from: classes10.dex */
    public static final class RunnableC17330a<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable, Disposable {

        /* renamed from: M0 */
        public final Supplier<U> f95399M0;

        /* renamed from: N0 */
        public final long f95400N0;

        /* renamed from: O0 */
        public final TimeUnit f95401O0;

        /* renamed from: P0 */
        public final int f95402P0;

        /* renamed from: Q0 */
        public final boolean f95403Q0;

        /* renamed from: R0 */
        public final Scheduler.Worker f95404R0;

        /* renamed from: S0 */
        public U f95405S0;

        /* renamed from: T0 */
        public Disposable f95406T0;

        /* renamed from: U0 */
        public Subscription f95407U0;

        /* renamed from: V0 */
        public long f95408V0;

        /* renamed from: W0 */
        public long f95409W0;

        public RunnableC17330a(Subscriber<? super U> actual, Supplier<U> bufferSupplier, long timespan, TimeUnit unit, int maxSize, boolean restartOnMaxSize, Scheduler.Worker w) {
            super(actual, new MpscLinkedQueue());
            this.f95399M0 = bufferSupplier;
            this.f95400N0 = timespan;
            this.f95401O0 = unit;
            this.f95402P0 = maxSize;
            this.f95403Q0 = restartOnMaxSize;
            this.f95404R0 = w;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.subscribers.QueueDrainSubscriber, io.reactivex.rxjava3.internal.util.QueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> a, U v) {
            a.onNext(v);
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            synchronized (this) {
                this.f95405S0 = null;
            }
            this.f95407U0.cancel();
            this.f95404R0.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95404R0.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.f95405S0;
                this.f95405S0 = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainMaxLoop(this.queue, this.downstream, false, this, this);
                }
                this.f95404R0.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            synchronized (this) {
                this.f95405S0 = null;
            }
            this.downstream.onError(t);
            this.f95404R0.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f95405S0;
                if (u == null) {
                    return;
                }
                u.add(t);
                if (u.size() < this.f95402P0) {
                    return;
                }
                this.f95405S0 = null;
                this.f95408V0++;
                if (this.f95403Q0) {
                    this.f95406T0.dispose();
                }
                fastPathOrderedEmitMax(u, false, this);
                try {
                    U u2 = this.f95399M0.get();
                    Objects.requireNonNull(u2, "The supplied buffer is null");
                    U u3 = u2;
                    synchronized (this) {
                        this.f95405S0 = u3;
                        this.f95409W0++;
                    }
                    if (this.f95403Q0) {
                        Scheduler.Worker worker = this.f95404R0;
                        long j = this.f95400N0;
                        this.f95406T0 = worker.schedulePeriodically(this, j, j, this.f95401O0);
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    cancel();
                    this.downstream.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95407U0, s)) {
                this.f95407U0 = s;
                try {
                    U u = this.f95399M0.get();
                    Objects.requireNonNull(u, "The supplied buffer is null");
                    this.f95405S0 = u;
                    this.downstream.onSubscribe(this);
                    Scheduler.Worker worker = this.f95404R0;
                    long j = this.f95400N0;
                    this.f95406T0 = worker.schedulePeriodically(this, j, j, this.f95401O0);
                    s.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f95404R0.dispose();
                    s.cancel();
                    EmptySubscription.error(th, this.downstream);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            requested(n);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = this.f95399M0.get();
                Objects.requireNonNull(u, "The supplied buffer is null");
                U u2 = u;
                synchronized (this) {
                    U u3 = this.f95405S0;
                    if (u3 != null && this.f95408V0 == this.f95409W0) {
                        this.f95405S0 = u2;
                        fastPathOrderedEmitMax(u3, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.downstream.onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableBufferTimed$b */
    /* loaded from: classes10.dex */
    public static final class RunnableC17331b<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable, Disposable {

        /* renamed from: M0 */
        public final Supplier<U> f95410M0;

        /* renamed from: N0 */
        public final long f95411N0;

        /* renamed from: O0 */
        public final TimeUnit f95412O0;

        /* renamed from: P0 */
        public final Scheduler f95413P0;

        /* renamed from: Q0 */
        public Subscription f95414Q0;

        /* renamed from: R0 */
        public U f95415R0;

        /* renamed from: S0 */
        public final AtomicReference<Disposable> f95416S0;

        public RunnableC17331b(Subscriber<? super U> actual, Supplier<U> bufferSupplier, long timespan, TimeUnit unit, Scheduler scheduler) {
            super(actual, new MpscLinkedQueue());
            this.f95416S0 = new AtomicReference<>();
            this.f95410M0 = bufferSupplier;
            this.f95411N0 = timespan;
            this.f95412O0 = unit;
            this.f95413P0 = scheduler;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.QueueDrainSubscriber, io.reactivex.rxjava3.internal.util.QueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> a, U v) {
            this.downstream.onNext(v);
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.f95414Q0.cancel();
            DisposableHelper.dispose(this.f95416S0);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95416S0.get() == DisposableHelper.DISPOSED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            DisposableHelper.dispose(this.f95416S0);
            synchronized (this) {
                U u = this.f95415R0;
                if (u == null) {
                    return;
                }
                this.f95415R0 = null;
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainMaxLoop(this.queue, this.downstream, false, null, this);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            DisposableHelper.dispose(this.f95416S0);
            synchronized (this) {
                this.f95415R0 = null;
            }
            this.downstream.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f95415R0;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95414Q0, s)) {
                this.f95414Q0 = s;
                try {
                    U u = this.f95410M0.get();
                    Objects.requireNonNull(u, "The supplied buffer is null");
                    this.f95415R0 = u;
                    this.downstream.onSubscribe(this);
                    if (this.cancelled) {
                        return;
                    }
                    s.request(Long.MAX_VALUE);
                    Scheduler scheduler = this.f95413P0;
                    long j = this.f95411N0;
                    Disposable schedulePeriodicallyDirect = scheduler.schedulePeriodicallyDirect(this, j, j, this.f95412O0);
                    if (cyi.m53538a(this.f95416S0, null, schedulePeriodicallyDirect)) {
                        return;
                    }
                    schedulePeriodicallyDirect.dispose();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    cancel();
                    EmptySubscription.error(th, this.downstream);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            requested(n);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U u = this.f95410M0.get();
                Objects.requireNonNull(u, "The supplied buffer is null");
                U u2 = u;
                synchronized (this) {
                    U u3 = this.f95415R0;
                    if (u3 == null) {
                        return;
                    }
                    this.f95415R0 = u2;
                    fastPathEmitMax(u3, false, this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.downstream.onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableBufferTimed$c */
    /* loaded from: classes10.dex */
    public static final class RunnableC17332c<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable {

        /* renamed from: M0 */
        public final Supplier<U> f95417M0;

        /* renamed from: N0 */
        public final long f95418N0;

        /* renamed from: O0 */
        public final long f95419O0;

        /* renamed from: P0 */
        public final TimeUnit f95420P0;

        /* renamed from: Q0 */
        public final Scheduler.Worker f95421Q0;

        /* renamed from: R0 */
        public final List<U> f95422R0;

        /* renamed from: S0 */
        public Subscription f95423S0;

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableBufferTimed$c$a */
        /* loaded from: classes10.dex */
        public final class a implements Runnable {

            /* renamed from: e */
            public final U f95424e;

            public a(U buffer) {
                this.f95424e = buffer;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (RunnableC17332c.this) {
                    RunnableC17332c.this.f95422R0.remove(this.f95424e);
                }
                RunnableC17332c runnableC17332c = RunnableC17332c.this;
                runnableC17332c.fastPathOrderedEmitMax(this.f95424e, false, runnableC17332c.f95421Q0);
            }
        }

        public RunnableC17332c(Subscriber<? super U> actual, Supplier<U> bufferSupplier, long timespan, long timeskip, TimeUnit unit, Scheduler.Worker w) {
            super(actual, new MpscLinkedQueue());
            this.f95417M0 = bufferSupplier;
            this.f95418N0 = timespan;
            this.f95419O0 = timeskip;
            this.f95420P0 = unit;
            this.f95421Q0 = w;
            this.f95422R0 = new LinkedList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.internal.subscribers.QueueDrainSubscriber, io.reactivex.rxjava3.internal.util.QueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean accept(Subscriber<? super U> a2, U v) {
            a2.onNext(v);
            return true;
        }

        /* renamed from: c */
        public void m61163c() {
            synchronized (this) {
                this.f95422R0.clear();
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.f95423S0.cancel();
            this.f95421Q0.dispose();
            m61163c();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f95422R0);
                this.f95422R0.clear();
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.queue.offer((Collection) it2.next());
            }
            this.done = true;
            if (enter()) {
                QueueDrainHelper.drainMaxLoop(this.queue, this.downstream, false, this.f95421Q0, this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.done = true;
            this.f95421Q0.dispose();
            m61163c();
            this.downstream.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                Iterator<U> it2 = this.f95422R0.iterator();
                while (it2.hasNext()) {
                    it2.next().add(t);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95423S0, s)) {
                this.f95423S0 = s;
                try {
                    U u = this.f95417M0.get();
                    Objects.requireNonNull(u, "The supplied buffer is null");
                    U u2 = u;
                    this.f95422R0.add(u2);
                    this.downstream.onSubscribe(this);
                    s.request(Long.MAX_VALUE);
                    Scheduler.Worker worker = this.f95421Q0;
                    long j = this.f95419O0;
                    worker.schedulePeriodically(this, j, j, this.f95420P0);
                    this.f95421Q0.schedule(new a(u2), this.f95418N0, this.f95420P0);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f95421Q0.dispose();
                    s.cancel();
                    EmptySubscription.error(th, this.downstream);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            requested(n);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.cancelled) {
                return;
            }
            try {
                U u = this.f95417M0.get();
                Objects.requireNonNull(u, "The supplied buffer is null");
                U u2 = u;
                synchronized (this) {
                    if (this.cancelled) {
                        return;
                    }
                    this.f95422R0.add(u2);
                    this.f95421Q0.schedule(new a(u2), this.f95418N0, this.f95420P0);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                this.downstream.onError(th);
            }
        }
    }

    public FlowableBufferTimed(Flowable<T> source, long timespan, long timeskip, TimeUnit unit, Scheduler scheduler, Supplier<U> bufferSupplier, int maxSize, boolean restartTimerOnMaxSize) {
        super(source);
        this.f95392f = timespan;
        this.f95393g = timeskip;
        this.f95394h = unit;
        this.f95395i = scheduler;
        this.f95396j = bufferSupplier;
        this.f95397k = maxSize;
        this.f95398l = restartTimerOnMaxSize;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super U> s) {
        if (this.f95392f == this.f95393g && this.f95397k == Integer.MAX_VALUE) {
            this.source.subscribe((FlowableSubscriber) new RunnableC17331b(new SerializedSubscriber(s), this.f95396j, this.f95392f, this.f95394h, this.f95395i));
            return;
        }
        Scheduler.Worker createWorker = this.f95395i.createWorker();
        if (this.f95392f == this.f95393g) {
            this.source.subscribe((FlowableSubscriber) new RunnableC17330a(new SerializedSubscriber(s), this.f95396j, this.f95392f, this.f95394h, this.f95397k, this.f95398l, createWorker));
        } else {
            this.source.subscribe((FlowableSubscriber) new RunnableC17332c(new SerializedSubscriber(s), this.f95396j, this.f95392f, this.f95393g, this.f95394h, createWorker));
        }
    }
}
