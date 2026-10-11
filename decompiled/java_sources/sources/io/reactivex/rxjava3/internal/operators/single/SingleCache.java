package io.reactivex.rxjava3.internal.operators.single;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleCache<T> extends Single<T> implements SingleObserver<T> {

    /* renamed from: j */
    public static final CacheDisposable[] f97111j = new CacheDisposable[0];

    /* renamed from: k */
    public static final CacheDisposable[] f97112k = new CacheDisposable[0];

    /* renamed from: e */
    public final SingleSource<? extends T> f97113e;

    /* renamed from: f */
    public final AtomicInteger f97114f = new AtomicInteger();

    /* renamed from: g */
    public final AtomicReference<CacheDisposable<T>[]> f97115g = new AtomicReference<>(f97111j);

    /* renamed from: h */
    public T f97116h;

    /* renamed from: i */
    public Throwable f97117i;

    /* loaded from: classes10.dex */
    public static final class CacheDisposable<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 7514387411091976596L;
        final SingleObserver<? super T> downstream;
        final SingleCache<T> parent;

        public CacheDisposable(SingleObserver<? super T> actual, SingleCache<T> parent) {
            this.downstream = actual;
            this.parent = parent;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.m61262d(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    public SingleCache(SingleSource<? extends T> source) {
        this.f97113e = source;
    }

    /* renamed from: c */
    public boolean m61261c(CacheDisposable<T> observer) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f97115g.get();
            if (cacheDisposableArr == f97112k) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = observer;
        } while (!cyi.m53538a(this.f97115g, cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    /* renamed from: d */
    public void m61262d(CacheDisposable<T> observer) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f97115g.get();
            int length = cacheDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (cacheDisposableArr[i] == observer) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cacheDisposableArr2 = f97111j;
            } else {
                CacheDisposable[] cacheDisposableArr3 = new CacheDisposable[length - 1];
                System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr3, 0, i);
                System.arraycopy(cacheDisposableArr, i + 1, cacheDisposableArr3, i, (length - i) - 1);
                cacheDisposableArr2 = cacheDisposableArr3;
            }
        } while (!cyi.m53538a(this.f97115g, cacheDisposableArr, cacheDisposableArr2));
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable e) {
        this.f97117i = e;
        for (CacheDisposable<T> cacheDisposable : this.f97115g.getAndSet(f97112k)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.downstream.onError(e);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable d) {
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(T value) {
        this.f97116h = value;
        for (CacheDisposable<T> cacheDisposable : this.f97115g.getAndSet(f97112k)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.downstream.onSuccess(value);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> singleObserver) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(singleObserver, this);
        singleObserver.onSubscribe(cacheDisposable);
        if (m61261c(cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                m61262d(cacheDisposable);
            }
            if (this.f97114f.getAndIncrement() == 0) {
                this.f97113e.subscribe(this);
                return;
            }
            return;
        }
        Throwable th = this.f97117i;
        if (th != null) {
            singleObserver.onError(th);
        } else {
            singleObserver.onSuccess(this.f97116h);
        }
    }
}
