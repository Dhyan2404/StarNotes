package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.flowables.ConnectableFlowable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableRefCount<T> extends Flowable<T> {

    /* renamed from: f */
    public final ConnectableFlowable<T> f95782f;

    /* renamed from: g */
    public final int f95783g;

    /* renamed from: h */
    public final long f95784h;

    /* renamed from: i */
    public final TimeUnit f95785i;

    /* renamed from: j */
    public final Scheduler f95786j;

    /* renamed from: k */
    public RefConnection f95787k;

    /* loaded from: classes10.dex */
    public static final class RefConnection extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;
        boolean connected;
        boolean disconnectedEarly;
        final FlowableRefCount<?> parent;
        long subscriberCount;
        Disposable timer;

        public RefConnection(FlowableRefCount<?> parent) {
            this.parent = parent;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.m61189g(this);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Disposable t) {
            DisposableHelper.replace(this, t);
            synchronized (this.parent) {
                if (this.disconnectedEarly) {
                    this.parent.f95782f.reset();
                }
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class RefCountSubscriber<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -7419642935409022375L;
        final RefConnection connection;
        final Subscriber<? super T> downstream;
        final FlowableRefCount<T> parent;
        Subscription upstream;

        public RefCountSubscriber(Subscriber<? super T> actual, FlowableRefCount<T> parent, RefConnection connection) {
            this.downstream = actual;
            this.parent = parent;
            this.connection = connection;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
            if (compareAndSet(false, true)) {
                this.parent.m61187e(this.connection);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.m61188f(this.connection);
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (!compareAndSet(false, true)) {
                RxJavaPlugins.onError(t);
            } else {
                this.parent.m61188f(this.connection);
                this.downstream.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.upstream, s)) {
                this.upstream = s;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.upstream.request(n);
        }
    }

    public FlowableRefCount(ConnectableFlowable<T> source) {
        this(source, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    /* renamed from: e */
    public void m61187e(RefConnection rc) {
        synchronized (this) {
            RefConnection refConnection = this.f95787k;
            if (refConnection != null && refConnection == rc) {
                long j = rc.subscriberCount - 1;
                rc.subscriberCount = j;
                if (j == 0 && rc.connected) {
                    if (this.f95784h == 0) {
                        m61189g(rc);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    rc.timer = sequentialDisposable;
                    sequentialDisposable.replace(this.f95786j.scheduleDirect(rc, this.f95784h, this.f95785i));
                }
            }
        }
    }

    /* renamed from: f */
    public void m61188f(RefConnection rc) {
        synchronized (this) {
            if (this.f95787k == rc) {
                Disposable disposable = rc.timer;
                if (disposable != null) {
                    disposable.dispose();
                    rc.timer = null;
                }
                long j = rc.subscriberCount - 1;
                rc.subscriberCount = j;
                if (j == 0) {
                    this.f95787k = null;
                    this.f95782f.reset();
                }
            }
        }
    }

    /* renamed from: g */
    public void m61189g(RefConnection rc) {
        synchronized (this) {
            if (rc.subscriberCount == 0 && rc == this.f95787k) {
                this.f95787k = null;
                Disposable disposable = rc.get();
                DisposableHelper.dispose(rc);
                if (disposable == null) {
                    rc.disconnectedEarly = true;
                } else {
                    this.f95782f.reset();
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        RefConnection refConnection;
        boolean z;
        Disposable disposable;
        synchronized (this) {
            refConnection = this.f95787k;
            if (refConnection == null) {
                refConnection = new RefConnection(this);
                this.f95787k = refConnection;
            }
            long j = refConnection.subscriberCount;
            if (j == 0 && (disposable = refConnection.timer) != null) {
                disposable.dispose();
            }
            long j2 = j + 1;
            refConnection.subscriberCount = j2;
            if (refConnection.connected || j2 != this.f95783g) {
                z = false;
            } else {
                z = true;
                refConnection.connected = true;
            }
        }
        this.f95782f.subscribe((FlowableSubscriber) new RefCountSubscriber(s, this, refConnection));
        if (z) {
            this.f95782f.connect(refConnection);
        }
    }

    public FlowableRefCount(ConnectableFlowable<T> source, int n, long timeout, TimeUnit unit, Scheduler scheduler) {
        this.f95782f = source;
        this.f95783g = n;
        this.f95784h = timeout;
        this.f95785i = unit;
        this.f95786j = scheduler;
    }
}
