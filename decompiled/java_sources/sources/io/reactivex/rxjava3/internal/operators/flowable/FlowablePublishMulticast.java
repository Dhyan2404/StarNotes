package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.QueueDrainHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowablePublishMulticast<T, R> extends AbstractC14025l3<T, R> {

    /* renamed from: f */
    public final Function<? super Flowable<T>, ? extends Publisher<? extends R>> f95741f;

    /* renamed from: g */
    public final int f95742g;

    /* renamed from: h */
    public final boolean f95743h;

    /* loaded from: classes10.dex */
    public static final class MulticastSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 8664815189257569791L;
        final Subscriber<? super T> downstream;
        long emitted;
        final C17382a<T> parent;

        public MulticastSubscription(Subscriber<? super T> actual, C17382a<T> parent) {
            this.downstream = actual;
            this.parent = parent;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.m61186i(this);
                this.parent.m61184g();
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.addCancel(this, n);
                this.parent.m61184g();
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowablePublishMulticast$a */
    /* loaded from: classes10.dex */
    public static final class C17382a<T> extends Flowable<T> implements FlowableSubscriber<T> {

        /* renamed from: q */
        public static final MulticastSubscription[] f95744q = new MulticastSubscription[0];

        /* renamed from: r */
        public static final MulticastSubscription[] f95745r = new MulticastSubscription[0];

        /* renamed from: h */
        public final int f95748h;

        /* renamed from: i */
        public final int f95749i;

        /* renamed from: j */
        public final boolean f95750j;

        /* renamed from: l */
        public volatile SimpleQueue<T> f95752l;

        /* renamed from: m */
        public int f95753m;

        /* renamed from: n */
        public volatile boolean f95754n;

        /* renamed from: o */
        public Throwable f95755o;

        /* renamed from: p */
        public int f95756p;

        /* renamed from: f */
        public final AtomicInteger f95746f = new AtomicInteger();

        /* renamed from: k */
        public final AtomicReference<Subscription> f95751k = new AtomicReference<>();

        /* renamed from: g */
        public final AtomicReference<MulticastSubscription<T>[]> f95747g = new AtomicReference<>(f95744q);

        public C17382a(int prefetch, boolean delayError) {
            this.f95748h = prefetch;
            this.f95749i = prefetch - (prefetch >> 2);
            this.f95750j = delayError;
        }

        public void dispose() {
            SimpleQueue<T> simpleQueue;
            if (this.f95754n) {
                return;
            }
            SubscriptionHelper.cancel(this.f95751k);
            if (this.f95746f.getAndIncrement() != 0 || (simpleQueue = this.f95752l) == null) {
                return;
            }
            simpleQueue.clear();
        }

        /* renamed from: e */
        public boolean m61182e(MulticastSubscription<T> s) {
            MulticastSubscription<T>[] multicastSubscriptionArr;
            MulticastSubscription[] multicastSubscriptionArr2;
            do {
                multicastSubscriptionArr = this.f95747g.get();
                if (multicastSubscriptionArr == f95745r) {
                    return false;
                }
                int length = multicastSubscriptionArr.length;
                multicastSubscriptionArr2 = new MulticastSubscription[length + 1];
                System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr2, 0, length);
                multicastSubscriptionArr2[length] = s;
            } while (!cyi.m53538a(this.f95747g, multicastSubscriptionArr, multicastSubscriptionArr2));
            return true;
        }

        /* renamed from: f */
        public void m61183f() {
            for (MulticastSubscription<T> multicastSubscription : this.f95747g.getAndSet(f95745r)) {
                if (multicastSubscription.get() != Long.MIN_VALUE) {
                    multicastSubscription.downstream.onComplete();
                }
            }
        }

        /* renamed from: g */
        public void m61184g() {
            AtomicReference<MulticastSubscription<T>[]> atomicReference;
            Throwable th;
            Throwable th2;
            if (this.f95746f.getAndIncrement() != 0) {
                return;
            }
            SimpleQueue<T> simpleQueue = this.f95752l;
            int i = this.f95756p;
            int i2 = this.f95749i;
            boolean z = this.f95753m != 1;
            AtomicReference<MulticastSubscription<T>[]> atomicReference2 = this.f95747g;
            MulticastSubscription<T>[] multicastSubscriptionArr = atomicReference2.get();
            int i3 = 1;
            while (true) {
                int length = multicastSubscriptionArr.length;
                if (simpleQueue == null || length == 0) {
                    atomicReference = atomicReference2;
                } else {
                    int length2 = multicastSubscriptionArr.length;
                    long j = Long.MAX_VALUE;
                    long j2 = Long.MAX_VALUE;
                    int i4 = 0;
                    while (i4 < length2) {
                        MulticastSubscription<T> multicastSubscription = multicastSubscriptionArr[i4];
                        AtomicReference<MulticastSubscription<T>[]> atomicReference3 = atomicReference2;
                        long j3 = multicastSubscription.get() - multicastSubscription.emitted;
                        if (j3 == Long.MIN_VALUE) {
                            length--;
                        } else if (j2 > j3) {
                            j2 = j3;
                        }
                        i4++;
                        atomicReference2 = atomicReference3;
                    }
                    atomicReference = atomicReference2;
                    long j4 = 0;
                    if (length == 0) {
                        j2 = 0;
                    }
                    while (j2 != j4) {
                        if (isDisposed()) {
                            simpleQueue.clear();
                            return;
                        }
                        boolean z2 = this.f95754n;
                        if (z2 && !this.f95750j && (th2 = this.f95755o) != null) {
                            m61185h(th2);
                            return;
                        }
                        try {
                            T poll = simpleQueue.poll();
                            boolean z3 = poll == null;
                            if (z2 && z3) {
                                Throwable th3 = this.f95755o;
                                if (th3 != null) {
                                    m61185h(th3);
                                    return;
                                } else {
                                    m61183f();
                                    return;
                                }
                            }
                            if (z3) {
                                break;
                            }
                            int length3 = multicastSubscriptionArr.length;
                            int i5 = 0;
                            boolean z4 = false;
                            while (i5 < length3) {
                                MulticastSubscription<T> multicastSubscription2 = multicastSubscriptionArr[i5];
                                long j5 = multicastSubscription2.get();
                                if (j5 != Long.MIN_VALUE) {
                                    if (j5 != j) {
                                        multicastSubscription2.emitted++;
                                    }
                                    multicastSubscription2.downstream.onNext(poll);
                                } else {
                                    z4 = true;
                                }
                                i5++;
                                j = Long.MAX_VALUE;
                            }
                            j2--;
                            if (z && (i = i + 1) == i2) {
                                this.f95751k.get().request(i2);
                                i = 0;
                            }
                            MulticastSubscription<T>[] multicastSubscriptionArr2 = atomicReference.get();
                            if (z4 || multicastSubscriptionArr2 != multicastSubscriptionArr) {
                                multicastSubscriptionArr = multicastSubscriptionArr2;
                                break;
                            } else {
                                j4 = 0;
                                j = Long.MAX_VALUE;
                            }
                        } catch (Throwable th4) {
                            Exceptions.throwIfFatal(th4);
                            SubscriptionHelper.cancel(this.f95751k);
                            m61185h(th4);
                            return;
                        }
                    }
                    if (j2 == j4) {
                        if (isDisposed()) {
                            simpleQueue.clear();
                            return;
                        }
                        boolean z5 = this.f95754n;
                        if (z5 && !this.f95750j && (th = this.f95755o) != null) {
                            m61185h(th);
                            return;
                        }
                        if (z5 && simpleQueue.isEmpty()) {
                            Throwable th5 = this.f95755o;
                            if (th5 != null) {
                                m61185h(th5);
                                return;
                            } else {
                                m61183f();
                                return;
                            }
                        }
                    }
                }
                this.f95756p = i;
                i3 = this.f95746f.addAndGet(-i3);
                if (i3 == 0) {
                    return;
                }
                if (simpleQueue == null) {
                    simpleQueue = this.f95752l;
                }
                multicastSubscriptionArr = atomicReference.get();
                atomicReference2 = atomicReference;
            }
        }

        /* renamed from: h */
        public void m61185h(Throwable ex) {
            for (MulticastSubscription<T> multicastSubscription : this.f95747g.getAndSet(f95745r)) {
                if (multicastSubscription.get() != Long.MIN_VALUE) {
                    multicastSubscription.downstream.onError(ex);
                }
            }
        }

        /* renamed from: i */
        public void m61186i(MulticastSubscription<T> s) {
            MulticastSubscription<T>[] multicastSubscriptionArr;
            MulticastSubscription[] multicastSubscriptionArr2;
            do {
                multicastSubscriptionArr = this.f95747g.get();
                int length = multicastSubscriptionArr.length;
                if (length == 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    if (i >= length) {
                        i = -1;
                        break;
                    } else if (multicastSubscriptionArr[i] == s) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    multicastSubscriptionArr2 = f95744q;
                } else {
                    MulticastSubscription[] multicastSubscriptionArr3 = new MulticastSubscription[length - 1];
                    System.arraycopy(multicastSubscriptionArr, 0, multicastSubscriptionArr3, 0, i);
                    System.arraycopy(multicastSubscriptionArr, i + 1, multicastSubscriptionArr3, i, (length - i) - 1);
                    multicastSubscriptionArr2 = multicastSubscriptionArr3;
                }
            } while (!cyi.m53538a(this.f95747g, multicastSubscriptionArr, multicastSubscriptionArr2));
        }

        public boolean isDisposed() {
            return this.f95751k.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95754n) {
                return;
            }
            this.f95754n = true;
            m61184g();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95754n) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95755o = t;
            this.f95754n = true;
            m61184g();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95754n) {
                return;
            }
            if (this.f95753m != 0 || this.f95752l.offer(t)) {
                m61184g();
            } else {
                this.f95751k.get().cancel();
                onError(MissingBackpressureException.createDefault());
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.setOnce(this.f95751k, s)) {
                if (s instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) s;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f95753m = requestFusion;
                        this.f95752l = queueSubscription;
                        this.f95754n = true;
                        m61184g();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.f95753m = requestFusion;
                        this.f95752l = queueSubscription;
                        QueueDrainHelper.request(s, this.f95748h);
                        return;
                    }
                }
                this.f95752l = QueueDrainHelper.createQueue(this.f95748h);
                QueueDrainHelper.request(s, this.f95748h);
            }
        }

        @Override // io.reactivex.rxjava3.core.Flowable
        public void subscribeActual(Subscriber<? super T> s) {
            MulticastSubscription<T> multicastSubscription = new MulticastSubscription<>(s, this);
            s.onSubscribe(multicastSubscription);
            if (m61182e(multicastSubscription)) {
                if (multicastSubscription.isCancelled()) {
                    m61186i(multicastSubscription);
                    return;
                } else {
                    m61184g();
                    return;
                }
            }
            Throwable th = this.f95755o;
            if (th != null) {
                s.onError(th);
            } else {
                s.onComplete();
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowablePublishMulticast$b */
    /* loaded from: classes10.dex */
    public static final class C17383b<R> implements FlowableSubscriber<R>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super R> f95757e;

        /* renamed from: f */
        public final C17382a<?> f95758f;

        /* renamed from: g */
        public Subscription f95759g;

        public C17383b(Subscriber<? super R> actual, C17382a<?> processor) {
            this.f95757e = actual;
            this.f95758f = processor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95759g.cancel();
            this.f95758f.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95757e.onComplete();
            this.f95758f.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95757e.onError(t);
            this.f95758f.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R t) {
            this.f95757e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95759g, s)) {
                this.f95759g = s;
                this.f95757e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95759g.request(n);
        }
    }

    public FlowablePublishMulticast(Flowable<T> source, Function<? super Flowable<T>, ? extends Publisher<? extends R>> selector, int prefetch, boolean delayError) {
        super(source);
        this.f95741f = selector;
        this.f95742g = prefetch;
        this.f95743h = delayError;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        C17382a c17382a = new C17382a(this.f95742g, this.f95743h);
        try {
            Publisher<? extends R> apply = this.f95741f.apply(c17382a);
            Objects.requireNonNull(apply, "selector returned a null Publisher");
            apply.subscribe(new C17383b(s, c17382a));
            this.source.subscribe((FlowableSubscriber) c17382a);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, s);
        }
    }
}
