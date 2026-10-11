package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableThrottleLatest<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final long f95915f;

    /* renamed from: g */
    public final TimeUnit f95916g;

    /* renamed from: h */
    public final Scheduler f95917h;

    /* renamed from: i */
    public final boolean f95918i;

    /* renamed from: j */
    public final Consumer<? super T> f95919j;

    /* loaded from: classes10.dex */
    public static final class ThrottleLatestSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;
        volatile boolean cancelled;
        volatile boolean done;
        final Subscriber<? super T> downstream;
        final boolean emitLast;
        long emitted;
        Throwable error;
        final Consumer<? super T> onDropped;
        final long timeout;
        volatile boolean timerFired;
        boolean timerRunning;
        final TimeUnit unit;
        Subscription upstream;
        final Scheduler.Worker worker;
        final AtomicReference<T> latest = new AtomicReference<>();
        final AtomicLong requested = new AtomicLong();

        public ThrottleLatestSubscriber(Subscriber<? super T> downstream, long timeout, TimeUnit unit, Scheduler.Worker worker, boolean emitLast, Consumer<? super T> onDropped) {
            this.downstream = downstream;
            this.timeout = timeout;
            this.unit = unit;
            this.worker = worker;
            this.emitLast = emitLast;
            this.onDropped = onDropped;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                clear();
            }
        }

        public void clear() {
            if (this.onDropped == null) {
                this.latest.lazySet(null);
                return;
            }
            T andSet = this.latest.getAndSet(null);
            if (andSet != null) {
                try {
                    this.onDropped.accept(andSet);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.latest;
            AtomicLong atomicLong = this.requested;
            Subscriber<? super T> subscriber = this.downstream;
            int i = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                Throwable th = this.error;
                if (z && th != null) {
                    if (this.onDropped != null) {
                        T andSet = atomicReference.getAndSet(null);
                        if (andSet != null) {
                            try {
                                this.onDropped.accept(andSet);
                            } catch (Throwable th2) {
                                Exceptions.throwIfFatal(th2);
                                th = new CompositeException(th, th2);
                            }
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    subscriber.onError(th);
                    this.worker.dispose();
                    return;
                }
                boolean z2 = atomicReference.get() == null;
                if (z) {
                    if (z2) {
                        subscriber.onComplete();
                    } else {
                        T andSet2 = atomicReference.getAndSet(null);
                        if (this.emitLast) {
                            long j = this.emitted;
                            if (j != atomicLong.get()) {
                                this.emitted = j + 1;
                                subscriber.onNext(andSet2);
                                subscriber.onComplete();
                            } else {
                                tryDropAndSignalMBE(andSet2);
                            }
                        } else {
                            Consumer<? super T> consumer = this.onDropped;
                            if (consumer != null) {
                                try {
                                    consumer.accept(andSet2);
                                } catch (Throwable th3) {
                                    Exceptions.throwIfFatal(th3);
                                    subscriber.onError(th3);
                                    this.worker.dispose();
                                    return;
                                }
                            }
                            subscriber.onComplete();
                        }
                    }
                    this.worker.dispose();
                    return;
                }
                if (z2) {
                    if (this.timerFired) {
                        this.timerRunning = false;
                        this.timerFired = false;
                    }
                } else if (!this.timerRunning || this.timerFired) {
                    T andSet3 = atomicReference.getAndSet(null);
                    long j2 = this.emitted;
                    if (j2 == atomicLong.get()) {
                        this.upstream.cancel();
                        tryDropAndSignalMBE(andSet3);
                        this.worker.dispose();
                        return;
                    } else {
                        subscriber.onNext(andSet3);
                        this.emitted = j2 + 1;
                        this.timerFired = false;
                        this.timerRunning = true;
                        this.worker.schedule(this, this.timeout, this.unit);
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
            clear();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.error = t;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            T andSet = this.latest.getAndSet(t);
            Consumer<? super T> consumer = this.onDropped;
            if (consumer != null && andSet != null) {
                try {
                    consumer.accept(andSet);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.upstream.cancel();
                    this.error = th;
                    this.done = true;
                }
            }
            drain();
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.upstream, s)) {
                this.upstream = s;
                this.downstream.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this.requested, n);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.timerFired = true;
            drain();
        }

        public void tryDropAndSignalMBE(T valueToDrop) {
            Throwable createDefault = MissingBackpressureException.createDefault();
            Consumer<? super T> consumer = this.onDropped;
            if (consumer != null) {
                try {
                    consumer.accept(valueToDrop);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    createDefault = new CompositeException(createDefault, th);
                }
            }
            this.downstream.onError(createDefault);
        }
    }

    public FlowableThrottleLatest(Flowable<T> source, long timeout, TimeUnit unit, Scheduler scheduler, boolean emitLast, Consumer<? super T> onDropped) {
        super(source);
        this.f95915f = timeout;
        this.f95916g = unit;
        this.f95917h = scheduler;
        this.f95918i = emitLast;
        this.f95919j = onDropped;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new ThrottleLatestSubscriber(s, this.f95915f, this.f95916g, this.f95917h.createWorker(), this.f95918i, this.f95919j));
    }
}
