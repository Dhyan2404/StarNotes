package io.reactivex.rxjava3.processors;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.BackpressureKind;
import io.reactivex.rxjava3.annotations.BackpressureSupport;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

@BackpressureSupport(BackpressureKind.FULL)
@SchedulerSupport("none")
/* loaded from: classes10.dex */
public final class MulticastProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: q */
    public static final MulticastSubscription[] f97511q = new MulticastSubscription[0];

    /* renamed from: r */
    public static final MulticastSubscription[] f97512r = new MulticastSubscription[0];

    /* renamed from: i */
    public final int f97516i;

    /* renamed from: j */
    public final int f97517j;

    /* renamed from: k */
    public final boolean f97518k;

    /* renamed from: l */
    public volatile SimpleQueue<T> f97519l;

    /* renamed from: m */
    public volatile boolean f97520m;

    /* renamed from: n */
    public volatile Throwable f97521n;

    /* renamed from: o */
    public int f97522o;

    /* renamed from: p */
    public int f97523p;

    /* renamed from: f */
    public final AtomicInteger f97513f = new AtomicInteger();

    /* renamed from: h */
    public final AtomicReference<MulticastSubscription<T>[]> f97515h = new AtomicReference<>(f97511q);

    /* renamed from: g */
    public final AtomicReference<Subscription> f97514g = new AtomicReference<>();

    /* loaded from: classes10.dex */
    public static final class MulticastSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -363282618957264509L;
        final Subscriber<? super T> downstream;
        long emitted;
        final MulticastProcessor<T> parent;

        public MulticastSubscription(Subscriber<? super T> actual, MulticastProcessor<T> parent) {
            this.downstream = actual;
            this.parent = parent;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.m61331g(this);
            }
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onComplete();
            }
        }

        public void onError(Throwable t) {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onError(t);
            }
        }

        public void onNext(T t) {
            if (get() != Long.MIN_VALUE) {
                this.emitted++;
                this.downstream.onNext(t);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                long addCancel = BackpressureHelper.addCancel(this, n);
                if (addCancel == Long.MIN_VALUE || addCancel == Long.MAX_VALUE) {
                    return;
                }
                this.parent.m61330f();
            }
        }
    }

    public MulticastProcessor(int bufferSize, boolean refCount) {
        this.f97516i = bufferSize;
        this.f97517j = bufferSize - (bufferSize >> 2);
        this.f97518k = refCount;
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create() {
        return new MulticastProcessor<>(Flowable.bufferSize(), false);
    }

    /* renamed from: e */
    public boolean m61329e(MulticastSubscription<T> inner) {
        MulticastSubscription<T>[] multicastSubscriptionArr;
        MulticastSubscription[] multicastSubscriptionArr2;
        do {
            multicastSubscriptionArr = this.f97515h.get();
            if (multicastSubscriptionArr == f97512r) {
                return false;
            }
            int length = multicastSubscriptionArr.length;
            multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
            System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
            multicastSubscriptionArr2[length] = inner;
        } while (!cyi.m53538a(this.f97515h, multicastSubscriptionArr, multicastSubscriptionArr2));
        return true;
    }

    /* renamed from: f */
    public void m61330f() {
        T t;
        if (this.f97513f.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<MulticastSubscription<T>[]> atomicReference = this.f97515h;
        int i = this.f97522o;
        int i2 = this.f97517j;
        int i3 = this.f97523p;
        int i4 = 1;
        while (true) {
            SimpleQueue<T> simpleQueue = this.f97519l;
            if (simpleQueue != null) {
                MulticastSubscription<T>[] multicastSubscriptionArr = atomicReference.get();
                if (multicastSubscriptionArr.length != 0) {
                    int length = multicastSubscriptionArr.length;
                    long j = -1;
                    long j2 = -1;
                    int i5 = 0;
                    while (i5 < length) {
                        MulticastSubscription<T> multicastSubscription = multicastSubscriptionArr[i5];
                        long j3 = multicastSubscription.get();
                        if (j3 >= 0) {
                            j2 = j2 == j ? j3 - multicastSubscription.emitted : Math.min(j2, j3 - multicastSubscription.emitted);
                        }
                        i5++;
                        j = -1;
                    }
                    int i6 = i;
                    while (j2 > 0) {
                        MulticastSubscription<T>[] multicastSubscriptionArr2 = atomicReference.get();
                        if (multicastSubscriptionArr2 == f97512r) {
                            simpleQueue.clear();
                            return;
                        }
                        if (multicastSubscriptionArr != multicastSubscriptionArr2) {
                            break;
                        }
                        boolean z = this.f97520m;
                        try {
                            t = simpleQueue.poll();
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            SubscriptionHelper.cancel(this.f97514g);
                            this.f97521n = th;
                            this.f97520m = true;
                            t = null;
                            z = true;
                        }
                        boolean z2 = t == null;
                        if (z && z2) {
                            Throwable th2 = this.f97521n;
                            if (th2 != null) {
                                for (MulticastSubscription<T> multicastSubscription2 : atomicReference.getAndSet(f97512r)) {
                                    multicastSubscription2.onError(th2);
                                }
                                return;
                            }
                            for (MulticastSubscription<T> multicastSubscription3 : atomicReference.getAndSet(f97512r)) {
                                multicastSubscription3.onComplete();
                            }
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        for (MulticastSubscription<T> multicastSubscription4 : multicastSubscriptionArr) {
                            multicastSubscription4.onNext(t);
                        }
                        j2--;
                        if (i3 != 1 && (i6 = i6 + 1) == i2) {
                            this.f97514g.get().request(i2);
                            i6 = 0;
                        }
                    }
                    if (j2 == 0) {
                        MulticastSubscription<T>[] multicastSubscriptionArr3 = atomicReference.get();
                        MulticastSubscription<T>[] multicastSubscriptionArr4 = f97512r;
                        if (multicastSubscriptionArr3 == multicastSubscriptionArr4) {
                            simpleQueue.clear();
                            return;
                        }
                        if (multicastSubscriptionArr != multicastSubscriptionArr3) {
                            i = i6;
                        } else if (this.f97520m && simpleQueue.isEmpty()) {
                            Throwable th3 = this.f97521n;
                            if (th3 != null) {
                                for (MulticastSubscription<T> multicastSubscription5 : atomicReference.getAndSet(multicastSubscriptionArr4)) {
                                    multicastSubscription5.onError(th3);
                                }
                                return;
                            }
                            for (MulticastSubscription<T> multicastSubscription6 : atomicReference.getAndSet(multicastSubscriptionArr4)) {
                                multicastSubscription6.onComplete();
                            }
                            return;
                        }
                    }
                    i = i6;
                }
            }
            this.f97522o = i;
            i4 = this.f97513f.addAndGet(-i4);
            if (i4 == 0) {
                return;
            }
        }
    }

    /* renamed from: g */
    public void m61331g(MulticastSubscription<T> inner) {
        while (true) {
            MulticastSubscription<T>[] multicastSubscriptionArr = this.f97515h.get();
            int length = multicastSubscriptionArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (multicastSubscriptionArr[i] == inner) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length != 1) {
                MulticastSubscription[] multicastSubscriptionArr2 = new MulticastSubscription[length - 1];
                System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, i);
                System.arraycopy(multicastSubscriptionArr, i + 1, multicastSubscriptionArr2, i, (length - i) - 1);
                if (cyi.m53538a(this.f97515h, multicastSubscriptionArr, multicastSubscriptionArr2)) {
                    return;
                }
            } else if (this.f97518k) {
                if (cyi.m53538a(this.f97515h, multicastSubscriptionArr, f97512r)) {
                    SubscriptionHelper.cancel(this.f97514g);
                    this.f97520m = true;
                    return;
                }
            } else if (cyi.m53538a(this.f97515h, multicastSubscriptionArr, f97511q)) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public Throwable getThrowable() {
        if (this.f97520m) {
            return this.f97521n;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97520m && this.f97521n == null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasSubscribers() {
        return this.f97515h.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97520m && this.f97521n != null;
    }

    @CheckReturnValue
    public boolean offer(@NonNull T t) {
        ExceptionHelper.nullCheck(t, "offer called with a null value.");
        if (this.f97520m) {
            return false;
        }
        if (this.f97523p != 0) {
            throw new IllegalStateException("offer() should not be called in fusion mode!");
        }
        if (!this.f97519l.offer(t)) {
            return false;
        }
        m61330f();
        return true;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f97520m = true;
        m61330f();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(@NonNull Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        if (this.f97520m) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97521n = t;
        this.f97520m = true;
        m61330f();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(@NonNull T t) {
        if (this.f97520m) {
            return;
        }
        if (this.f97523p == 0) {
            ExceptionHelper.nullCheck(t, "onNext called with a null value.");
            if (!this.f97519l.offer(t)) {
                SubscriptionHelper.cancel(this.f97514g);
                onError(MissingBackpressureException.createDefault());
                return;
            }
        }
        m61330f();
    }

    @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(@NonNull Subscription s) {
        if (SubscriptionHelper.setOnce(this.f97514g, s)) {
            if (s instanceof QueueSubscription) {
                QueueSubscription queueSubscription = (QueueSubscription) s;
                int requestFusion = queueSubscription.requestFusion(3);
                if (requestFusion == 1) {
                    this.f97523p = requestFusion;
                    this.f97519l = queueSubscription;
                    this.f97520m = true;
                    m61330f();
                    return;
                }
                if (requestFusion == 2) {
                    this.f97523p = requestFusion;
                    this.f97519l = queueSubscription;
                    s.request(this.f97516i);
                    return;
                }
            }
            this.f97519l = new SpscArrayQueue(this.f97516i);
            s.request(this.f97516i);
        }
    }

    public void start() {
        if (SubscriptionHelper.setOnce(this.f97514g, EmptySubscription.INSTANCE)) {
            this.f97519l = new SpscArrayQueue(this.f97516i);
        }
    }

    public void startUnbounded() {
        if (SubscriptionHelper.setOnce(this.f97514g, EmptySubscription.INSTANCE)) {
            this.f97519l = new SpscLinkedArrayQueue(this.f97516i);
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(@NonNull Subscriber<? super T> s) {
        Throwable th;
        MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(s, this);
        s.onSubscribe(multicastSubscription);
        if (m61329e(multicastSubscription)) {
            if (multicastSubscription.get() == Long.MIN_VALUE) {
                m61331g(multicastSubscription);
                return;
            } else {
                m61330f();
                return;
            }
        }
        if (!this.f97520m || (th = this.f97521n) == null) {
            s.onComplete();
        } else {
            s.onError(th);
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create(boolean refCount) {
        return new MulticastProcessor<>(Flowable.bufferSize(), refCount);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create(int bufferSize) {
        ObjectHelper.verifyPositive(bufferSize, "bufferSize");
        return new MulticastProcessor<>(bufferSize, false);
    }

    @CheckReturnValue
    @NonNull
    public static <T> MulticastProcessor<T> create(int bufferSize, boolean refCount) {
        ObjectHelper.verifyPositive(bufferSize, "bufferSize");
        return new MulticastProcessor<>(bufferSize, refCount);
    }
}
