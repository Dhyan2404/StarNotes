package io.reactivex.rxjava3.internal.operators.observable;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableCache<T> extends AbstractC17568a<T, T> implements Observer<T> {

    /* renamed from: n */
    public static final CacheDisposable[] f96403n = new CacheDisposable[0];

    /* renamed from: o */
    public static final CacheDisposable[] f96404o = new CacheDisposable[0];

    /* renamed from: e */
    public final AtomicBoolean f96405e;

    /* renamed from: f */
    public final int f96406f;

    /* renamed from: g */
    public final AtomicReference<CacheDisposable<T>[]> f96407g;

    /* renamed from: h */
    public volatile long f96408h;

    /* renamed from: i */
    public final C17472a<T> f96409i;

    /* renamed from: j */
    public C17472a<T> f96410j;

    /* renamed from: k */
    public int f96411k;

    /* renamed from: l */
    public Throwable f96412l;

    /* renamed from: m */
    public volatile boolean f96413m;

    /* loaded from: classes10.dex */
    public static final class CacheDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 6770240836423125754L;
        volatile boolean disposed;
        final Observer<? super T> downstream;
        long index;
        C17472a<T> node;
        int offset;
        final ObservableCache<T> parent;

        public CacheDisposable(Observer<? super T> downstream, ObservableCache<T> parent) {
            this.downstream = downstream;
            this.parent = parent;
            this.node = parent.f96409i;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.parent.m61229g(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableCache$a */
    /* loaded from: classes10.dex */
    public static final class C17472a<T> {

        /* renamed from: a */
        public final T[] f96414a;

        /* renamed from: b */
        public volatile C17472a<T> f96415b;

        public C17472a(int i) {
            this.f96414a = (T[]) new Object[i];
        }
    }

    public ObservableCache(Observable<T> source, int capacityHint) {
        super(source);
        this.f96406f = capacityHint;
        this.f96405e = new AtomicBoolean();
        C17472a<T> c17472a = new C17472a<>(capacityHint);
        this.f96409i = c17472a;
        this.f96410j = c17472a;
        this.f96407g = new AtomicReference<>(f96403n);
    }

    /* renamed from: d */
    public void m61226d(CacheDisposable<T> consumer) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f96407g.get();
            if (cacheDisposableArr == f96404o) {
                return;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = consumer;
        } while (!cyi.m53538a(this.f96407g, cacheDisposableArr, cacheDisposableArr2));
    }

    /* renamed from: e */
    public long m61227e() {
        return this.f96408h;
    }

    /* renamed from: f */
    public boolean m61228f() {
        return this.f96405e.get();
    }

    /* renamed from: g */
    public void m61229g(CacheDisposable<T> consumer) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f96407g.get();
            int length = cacheDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (cacheDisposableArr[i] == consumer) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cacheDisposableArr2 = f96403n;
            } else {
                CacheDisposable[] cacheDisposableArr3 = new CacheDisposable[length - 1];
                System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr3, 0, i);
                System.arraycopy(cacheDisposableArr, i + 1, cacheDisposableArr3, i, (length - i) - 1);
                cacheDisposableArr2 = cacheDisposableArr3;
            }
        } while (!cyi.m53538a(this.f96407g, cacheDisposableArr, cacheDisposableArr2));
    }

    /* renamed from: h */
    public void m61230h(CacheDisposable<T> cacheDisposable) {
        if (cacheDisposable.getAndIncrement() != 0) {
            return;
        }
        long j = cacheDisposable.index;
        int i = cacheDisposable.offset;
        C17472a<T> c17472a = cacheDisposable.node;
        Observer<? super T> observer = cacheDisposable.downstream;
        int i2 = this.f96406f;
        int i3 = 1;
        while (!cacheDisposable.disposed) {
            boolean z = this.f96413m;
            boolean z2 = this.f96408h == j;
            if (z && z2) {
                cacheDisposable.node = null;
                Throwable th = this.f96412l;
                if (th != null) {
                    observer.onError(th);
                    return;
                } else {
                    observer.onComplete();
                    return;
                }
            }
            if (z2) {
                cacheDisposable.index = j;
                cacheDisposable.offset = i;
                cacheDisposable.node = c17472a;
                i3 = cacheDisposable.addAndGet(-i3);
                if (i3 == 0) {
                    return;
                }
            } else {
                if (i == i2) {
                    c17472a = c17472a.f96415b;
                    i = 0;
                }
                observer.onNext(c17472a.f96414a[i]);
                i++;
                j++;
            }
        }
        cacheDisposable.node = null;
    }

    public boolean hasObservers() {
        return this.f96407g.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        this.f96413m = true;
        for (CacheDisposable<T> cacheDisposable : this.f96407g.getAndSet(f96404o)) {
            m61230h(cacheDisposable);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        this.f96412l = t;
        this.f96413m = true;
        for (CacheDisposable<T> cacheDisposable : this.f96407g.getAndSet(f96404o)) {
            m61230h(cacheDisposable);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        int i = this.f96411k;
        if (i == this.f96406f) {
            C17472a<T> c17472a = new C17472a<>(i);
            c17472a.f96414a[0] = t;
            this.f96411k = 1;
            this.f96410j.f96415b = c17472a;
            this.f96410j = c17472a;
        } else {
            this.f96410j.f96414a[i] = t;
            this.f96411k = i + 1;
        }
        this.f96408h++;
        for (CacheDisposable<T> cacheDisposable : this.f96407g.get()) {
            m61230h(cacheDisposable);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(t, this);
        t.onSubscribe(cacheDisposable);
        m61226d(cacheDisposable);
        if (this.f96405e.get() || !this.f96405e.compareAndSet(false, true)) {
            m61230h(cacheDisposable);
        } else {
            this.source.subscribe(this);
        }
    }
}
