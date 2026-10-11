package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableCache<T> extends AbstractC14025l3<T, T> implements FlowableSubscriber<T> {

    /* renamed from: o */
    public static final CacheSubscription[] f95426o = new CacheSubscription[0];

    /* renamed from: p */
    public static final CacheSubscription[] f95427p = new CacheSubscription[0];

    /* renamed from: f */
    public final AtomicBoolean f95428f;

    /* renamed from: g */
    public final int f95429g;

    /* renamed from: h */
    public final AtomicReference<CacheSubscription<T>[]> f95430h;

    /* renamed from: i */
    public volatile long f95431i;

    /* renamed from: j */
    public final C17333a<T> f95432j;

    /* renamed from: k */
    public C17333a<T> f95433k;

    /* renamed from: l */
    public int f95434l;

    /* renamed from: m */
    public Throwable f95435m;

    /* renamed from: n */
    public volatile boolean f95436n;

    /* loaded from: classes10.dex */
    public static final class CacheSubscription<T> extends AtomicInteger implements Subscription {
        private static final long serialVersionUID = 6770240836423125754L;
        final Subscriber<? super T> downstream;
        long index;
        C17333a<T> node;
        int offset;
        final FlowableCache<T> parent;
        final AtomicLong requested = new AtomicLong();

        public CacheSubscription(Subscriber<? super T> downstream, FlowableCache<T> parent) {
            this.downstream = downstream;
            this.parent = parent;
            this.node = parent.f95432j;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.requested.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.m61167h(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.addCancel(this.requested, n);
                this.parent.m61168i(this);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableCache$a */
    /* loaded from: classes10.dex */
    public static final class C17333a<T> {

        /* renamed from: a */
        public final T[] f95437a;

        /* renamed from: b */
        public volatile C17333a<T> f95438b;

        public C17333a(int i) {
            this.f95437a = (T[]) new Object[i];
        }
    }

    public FlowableCache(Flowable<T> source, int capacityHint) {
        super(source);
        this.f95429g = capacityHint;
        this.f95428f = new AtomicBoolean();
        C17333a<T> c17333a = new C17333a<>(capacityHint);
        this.f95432j = c17333a;
        this.f95433k = c17333a;
        this.f95430h = new AtomicReference<>(f95426o);
    }

    /* renamed from: e */
    public void m61164e(CacheSubscription<T> consumer) {
        CacheSubscription<T>[] cacheSubscriptionArr;
        CacheSubscription[] cacheSubscriptionArr2;
        do {
            cacheSubscriptionArr = this.f95430h.get();
            if (cacheSubscriptionArr == f95427p) {
                return;
            }
            int length = cacheSubscriptionArr.length;
            cacheSubscriptionArr2 = new CacheSubscription[length + 1];
            System.arraycopy(cacheSubscriptionArr, 0, cacheSubscriptionArr2, 0, length);
            cacheSubscriptionArr2[length] = consumer;
        } while (!cyi.m53538a(this.f95430h, cacheSubscriptionArr, cacheSubscriptionArr2));
    }

    /* renamed from: f */
    public long m61165f() {
        return this.f95431i;
    }

    /* renamed from: g */
    public boolean m61166g() {
        return this.f95428f.get();
    }

    /* renamed from: h */
    public void m61167h(CacheSubscription<T> consumer) {
        CacheSubscription<T>[] cacheSubscriptionArr;
        CacheSubscription[] cacheSubscriptionArr2;
        do {
            cacheSubscriptionArr = this.f95430h.get();
            int length = cacheSubscriptionArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (cacheSubscriptionArr[i] == consumer) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cacheSubscriptionArr2 = f95426o;
            } else {
                CacheSubscription[] cacheSubscriptionArr3 = new CacheSubscription[length - 1];
                System.arraycopy(cacheSubscriptionArr, 0, cacheSubscriptionArr3, 0, i);
                System.arraycopy(cacheSubscriptionArr, i + 1, cacheSubscriptionArr3, i, (length - i) - 1);
                cacheSubscriptionArr2 = cacheSubscriptionArr3;
            }
        } while (!cyi.m53538a(this.f95430h, cacheSubscriptionArr, cacheSubscriptionArr2));
    }

    public boolean hasSubscribers() {
        return this.f95430h.get().length != 0;
    }

    /* renamed from: i */
    public void m61168i(CacheSubscription<T> cacheSubscription) {
        if (cacheSubscription.getAndIncrement() != 0) {
            return;
        }
        long j = cacheSubscription.index;
        int i = cacheSubscription.offset;
        C17333a<T> c17333a = cacheSubscription.node;
        AtomicLong atomicLong = cacheSubscription.requested;
        Subscriber<? super T> subscriber = cacheSubscription.downstream;
        int i2 = this.f95429g;
        int i3 = 1;
        while (true) {
            boolean z = this.f95436n;
            boolean z2 = this.f95431i == j;
            if (z && z2) {
                cacheSubscription.node = null;
                Throwable th = this.f95435m;
                if (th != null) {
                    subscriber.onError(th);
                    return;
                } else {
                    subscriber.onComplete();
                    return;
                }
            }
            if (!z2) {
                long j2 = atomicLong.get();
                if (j2 == Long.MIN_VALUE) {
                    cacheSubscription.node = null;
                    return;
                } else if (j2 != j) {
                    if (i == i2) {
                        c17333a = c17333a.f95438b;
                        i = 0;
                    }
                    subscriber.onNext(c17333a.f95437a[i]);
                    i++;
                    j++;
                }
            }
            cacheSubscription.index = j;
            cacheSubscription.offset = i;
            cacheSubscription.node = c17333a;
            i3 = cacheSubscription.addAndGet(-i3);
            if (i3 == 0) {
                return;
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        this.f95436n = true;
        for (CacheSubscription<T> cacheSubscription : this.f95430h.getAndSet(f95427p)) {
            m61168i(cacheSubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        if (this.f95436n) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f95435m = t;
        this.f95436n = true;
        for (CacheSubscription<T> cacheSubscription : this.f95430h.getAndSet(f95427p)) {
            m61168i(cacheSubscription);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        int i = this.f95434l;
        if (i == this.f95429g) {
            C17333a<T> c17333a = new C17333a<>(i);
            c17333a.f95437a[0] = t;
            this.f95434l = 1;
            this.f95433k.f95438b = c17333a;
            this.f95433k = c17333a;
        } else {
            this.f95433k.f95437a[i] = t;
            this.f95434l = i + 1;
        }
        this.f95431i++;
        for (CacheSubscription<T> cacheSubscription : this.f95430h.get()) {
            m61168i(cacheSubscription);
        }
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(Subscription s) {
        s.request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> t) {
        CacheSubscription<T> cacheSubscription = new CacheSubscription<>(t, this);
        t.onSubscribe(cacheSubscription);
        m61164e(cacheSubscription);
        if (this.f95428f.get() || !this.f95428f.compareAndSet(false, true)) {
            m61168i(cacheSubscription);
        } else {
            this.source.subscribe((FlowableSubscriber) this);
        }
    }
}
