package io.reactivex.rxjava3.internal.operators.parallel;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelReduceFull<T> extends Flowable<T> {

    /* renamed from: f */
    public final ParallelFlowable<? extends T> f97095f;

    /* renamed from: g */
    public final BiFunction<T, T, T> f97096g;

    /* loaded from: classes10.dex */
    public static final class ParallelReduceFullInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7954444275102466525L;
        boolean done;
        final ParallelReduceFullMainSubscriber<T> parent;
        final BiFunction<T, T, T> reducer;
        T value;

        public ParallelReduceFullInnerSubscriber(ParallelReduceFullMainSubscriber<T> parent, BiFunction<T, T, T> reducer) {
            this.parent = parent;
            this.reducer = reducer;
        }

        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.parent.innerComplete(this.value);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.done) {
                RxJavaPlugins.onError(t);
            } else {
                this.done = true;
                this.parent.innerError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            T t2 = this.value;
            if (t2 == null) {
                this.value = t;
                return;
            }
            try {
                T apply = this.reducer.apply(t2, t);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.value = apply;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                get().cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            SubscriptionHelper.setOnce(this, s, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes10.dex */
    public static final class ParallelReduceFullMainSubscriber<T> extends DeferredScalarSubscription<T> {
        private static final long serialVersionUID = -5370107872170712765L;
        final AtomicReference<SlotPair<T>> current;
        final AtomicThrowable error;
        final BiFunction<T, T, T> reducer;
        final AtomicInteger remaining;
        final ParallelReduceFullInnerSubscriber<T>[] subscribers;

        public ParallelReduceFullMainSubscriber(Subscriber<? super T> subscriber, int n, BiFunction<T, T, T> reducer) {
            super(subscriber);
            this.current = new AtomicReference<>();
            this.remaining = new AtomicInteger();
            this.error = new AtomicThrowable();
            ParallelReduceFullInnerSubscriber<T>[] parallelReduceFullInnerSubscriberArr = new ParallelReduceFullInnerSubscriber[n];
            for (int i = 0; i < n; i++) {
                parallelReduceFullInnerSubscriberArr[i] = new ParallelReduceFullInnerSubscriber<>(this, reducer);
            }
            this.subscribers = parallelReduceFullInnerSubscriberArr;
            this.reducer = reducer;
            this.remaining.lazySet(n);
        }

        public SlotPair<T> addValue(T value) {
            SlotPair<T> slotPair;
            int tryAcquireSlot;
            while (true) {
                slotPair = this.current.get();
                if (slotPair == null) {
                    slotPair = new SlotPair<>();
                    if (!cyi.m53538a(this.current, null, slotPair)) {
                        continue;
                    }
                }
                tryAcquireSlot = slotPair.tryAcquireSlot();
                if (tryAcquireSlot >= 0) {
                    break;
                }
                cyi.m53538a(this.current, slotPair, null);
            }
            if (tryAcquireSlot == 0) {
                slotPair.first = value;
            } else {
                slotPair.second = value;
            }
            if (!slotPair.releaseSlot()) {
                return null;
            }
            cyi.m53538a(this.current, slotPair, null);
            return slotPair;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            for (ParallelReduceFullInnerSubscriber<T> parallelReduceFullInnerSubscriber : this.subscribers) {
                parallelReduceFullInnerSubscriber.cancel();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        
            if (r2.remaining.decrementAndGet() != 0) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
        
            r3 = r2.current.get();
            r2.current.lazySet(null);
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
        
            if (r3 == null) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        
            complete(r3.first);
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
        
            r2.downstream.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:1:0x0000, code lost:
        
            if (r3 != null) goto L3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
        
            r3 = addValue(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
        
            if (r3 == null) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0008, code lost:
        
            r3 = r2.reducer.apply(r3.first, r3.second);
            java.util.Objects.requireNonNull(r3, "The reducer returned a null value");
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        
            io.reactivex.rxjava3.exceptions.Exceptions.throwIfFatal(r3);
            innerError(r3);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void innerComplete(T r3) {
            /*
                r2 = this;
                if (r3 == 0) goto L20
            L2:
                io.reactivex.rxjava3.internal.operators.parallel.ParallelReduceFull$SlotPair r3 = r2.addValue(r3)
                if (r3 == 0) goto L20
                io.reactivex.rxjava3.functions.BiFunction<T, T, T> r0 = r2.reducer     // Catch: java.lang.Throwable -> L18
                T r1 = r3.first     // Catch: java.lang.Throwable -> L18
                T r3 = r3.second     // Catch: java.lang.Throwable -> L18
                java.lang.Object r3 = r0.apply(r1, r3)     // Catch: java.lang.Throwable -> L18
                java.lang.String r0 = "The reducer returned a null value"
                java.util.Objects.requireNonNull(r3, r0)     // Catch: java.lang.Throwable -> L18
                goto L2
            L18:
                r3 = move-exception
                io.reactivex.rxjava3.exceptions.Exceptions.throwIfFatal(r3)
                r2.innerError(r3)
                return
            L20:
                java.util.concurrent.atomic.AtomicInteger r3 = r2.remaining
                int r3 = r3.decrementAndGet()
                if (r3 != 0) goto L43
                java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.internal.operators.parallel.ParallelReduceFull$SlotPair<T>> r3 = r2.current
                java.lang.Object r3 = r3.get()
                io.reactivex.rxjava3.internal.operators.parallel.ParallelReduceFull$SlotPair r3 = (io.reactivex.rxjava3.internal.operators.parallel.ParallelReduceFull.SlotPair) r3
                java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.internal.operators.parallel.ParallelReduceFull$SlotPair<T>> r0 = r2.current
                r1 = 0
                r0.lazySet(r1)
                if (r3 == 0) goto L3e
                T r3 = r3.first
                r2.complete(r3)
                goto L43
            L3e:
                org.reactivestreams.Subscriber<? super T> r2 = r2.downstream
                r2.onComplete()
            L43:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.parallel.ParallelReduceFull.ParallelReduceFullMainSubscriber.innerComplete(java.lang.Object):void");
        }

        public void innerError(Throwable ex) {
            if (this.error.compareAndSet(null, ex)) {
                cancel();
                this.downstream.onError(ex);
            } else if (ex != this.error.get()) {
                RxJavaPlugins.onError(ex);
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class SlotPair<T> extends AtomicInteger {
        private static final long serialVersionUID = 473971317683868662L;
        T first;
        final AtomicInteger releaseIndex = new AtomicInteger();
        T second;

        public boolean releaseSlot() {
            return this.releaseIndex.incrementAndGet() == 2;
        }

        public int tryAcquireSlot() {
            int i;
            do {
                i = get();
                if (i >= 2) {
                    return -1;
                }
            } while (!compareAndSet(i, i + 1));
            return i;
        }
    }

    public ParallelReduceFull(ParallelFlowable<? extends T> source, BiFunction<T, T, T> reducer) {
        this.f97095f = source;
        this.f97096g = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        ParallelReduceFullMainSubscriber parallelReduceFullMainSubscriber = new ParallelReduceFullMainSubscriber(s, this.f97095f.parallelism(), this.f97096g);
        s.onSubscribe(parallelReduceFullMainSubscriber);
        this.f97095f.subscribe(parallelReduceFullMainSubscriber.subscribers);
    }
}
