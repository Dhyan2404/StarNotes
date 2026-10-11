package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableRefCount<T> extends Observable<T> {

    /* renamed from: e */
    public final ConnectableObservable<T> f96750e;

    /* renamed from: f */
    public final int f96751f;

    /* renamed from: g */
    public final long f96752g;

    /* renamed from: h */
    public final TimeUnit f96753h;

    /* renamed from: i */
    public final Scheduler f96754i;

    /* renamed from: j */
    public RefConnection f96755j;

    /* loaded from: classes10.dex */
    public static final class RefConnection extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;
        boolean connected;
        boolean disconnectedEarly;
        final ObservableRefCount<?> parent;
        long subscriberCount;
        Disposable timer;

        public RefConnection(ObservableRefCount<?> parent) {
            this.parent = parent;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.m61251f(this);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Disposable t) {
            DisposableHelper.replace(this, t);
            synchronized (this.parent) {
                if (this.disconnectedEarly) {
                    this.parent.f96750e.reset();
                }
            }
        }
    }

    /* loaded from: classes10.dex */
    public static final class RefCountObserver<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -7419642935409022375L;
        final RefConnection connection;
        final Observer<? super T> downstream;
        final ObservableRefCount<T> parent;
        Disposable upstream;

        public RefCountObserver(Observer<? super T> downstream, ObservableRefCount<T> parent, RefConnection connection) {
            this.downstream = downstream;
            this.parent = parent;
            this.connection = connection;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
            if (compareAndSet(false, true)) {
                this.parent.m61249d(this.connection);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.m61250e(this.connection);
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (!compareAndSet(false, true)) {
                RxJavaPlugins.onError(t);
            } else {
                this.parent.m61250e(this.connection);
                this.downstream.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public ObservableRefCount(ConnectableObservable<T> source) {
        this(source, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    /* renamed from: d */
    public void m61249d(RefConnection rc) {
        synchronized (this) {
            RefConnection refConnection = this.f96755j;
            if (refConnection != null && refConnection == rc) {
                long j = rc.subscriberCount - 1;
                rc.subscriberCount = j;
                if (j == 0 && rc.connected) {
                    if (this.f96752g == 0) {
                        m61251f(rc);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    rc.timer = sequentialDisposable;
                    sequentialDisposable.replace(this.f96754i.scheduleDirect(rc, this.f96752g, this.f96753h));
                }
            }
        }
    }

    /* renamed from: e */
    public void m61250e(RefConnection rc) {
        synchronized (this) {
            if (this.f96755j == rc) {
                Disposable disposable = rc.timer;
                if (disposable != null) {
                    disposable.dispose();
                    rc.timer = null;
                }
                long j = rc.subscriberCount - 1;
                rc.subscriberCount = j;
                if (j == 0) {
                    this.f96755j = null;
                    this.f96750e.reset();
                }
            }
        }
    }

    /* renamed from: f */
    public void m61251f(RefConnection rc) {
        synchronized (this) {
            if (rc.subscriberCount == 0 && rc == this.f96755j) {
                this.f96755j = null;
                Disposable disposable = rc.get();
                DisposableHelper.dispose(rc);
                if (disposable == null) {
                    rc.disconnectedEarly = true;
                } else {
                    this.f96750e.reset();
                }
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        RefConnection refConnection;
        boolean z;
        Disposable disposable;
        synchronized (this) {
            refConnection = this.f96755j;
            if (refConnection == null) {
                refConnection = new RefConnection(this);
                this.f96755j = refConnection;
            }
            long j = refConnection.subscriberCount;
            if (j == 0 && (disposable = refConnection.timer) != null) {
                disposable.dispose();
            }
            long j2 = j + 1;
            refConnection.subscriberCount = j2;
            if (refConnection.connected || j2 != this.f96751f) {
                z = false;
            } else {
                z = true;
                refConnection.connected = true;
            }
        }
        this.f96750e.subscribe(new RefCountObserver(observer, this, refConnection));
        if (z) {
            this.f96750e.connect(refConnection);
        }
    }

    public ObservableRefCount(ConnectableObservable<T> source, int n, long timeout, TimeUnit unit, Scheduler scheduler) {
        this.f96750e = source;
        this.f96751f = n;
        this.f96752g = timeout;
        this.f96753h = unit;
        this.f96754i = scheduler;
    }
}
