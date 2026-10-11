package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class MaybeCache<T> extends Maybe<T> implements MaybeObserver<T> {

    /* renamed from: i */
    public static final CacheDisposable[] f96006i = new CacheDisposable[0];

    /* renamed from: j */
    public static final CacheDisposable[] f96007j = new CacheDisposable[0];

    /* renamed from: e */
    public final AtomicReference<MaybeSource<T>> f96008e;

    /* renamed from: f */
    public final AtomicReference<CacheDisposable<T>[]> f96009f = new AtomicReference<>(f96006i);

    /* renamed from: g */
    public T f96010g;

    /* renamed from: h */
    public Throwable f96011h;

    /* loaded from: classes10.dex */
    public static final class CacheDisposable<T> extends AtomicReference<MaybeCache<T>> implements Disposable {
        private static final long serialVersionUID = -5791853038359966195L;
        final MaybeObserver<? super T> downstream;

        public CacheDisposable(MaybeObserver<? super T> actual, MaybeCache<T> parent) {
            super(parent);
            this.downstream = actual;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            MaybeCache<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m61198b(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    public MaybeCache(MaybeSource<T> source) {
        this.f96008e = new AtomicReference<>(source);
    }

    /* renamed from: a */
    public boolean m61197a(CacheDisposable<T> inner) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f96009f.get();
            if (cacheDisposableArr == f96007j) {
                return false;
            }
            int length = cacheDisposableArr.length;
            cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = inner;
        } while (!cyi.m53538a(this.f96009f, cacheDisposableArr, cacheDisposableArr2));
        return true;
    }

    /* renamed from: b */
    public void m61198b(CacheDisposable<T> inner) {
        CacheDisposable<T>[] cacheDisposableArr;
        CacheDisposable[] cacheDisposableArr2;
        do {
            cacheDisposableArr = this.f96009f.get();
            int length = cacheDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (cacheDisposableArr[i] == inner) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                cacheDisposableArr2 = f96006i;
            } else {
                CacheDisposable[] cacheDisposableArr3 = new CacheDisposable[length - 1];
                System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr3, 0, i);
                System.arraycopy(cacheDisposableArr, i + 1, cacheDisposableArr3, i, (length - i) - 1);
                cacheDisposableArr2 = cacheDisposableArr3;
            }
        } while (!cyi.m53538a(this.f96009f, cacheDisposableArr, cacheDisposableArr2));
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        for (CacheDisposable<T> cacheDisposable : this.f96009f.getAndSet(f96007j)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable e) {
        this.f96011h = e;
        for (CacheDisposable<T> cacheDisposable : this.f96009f.getAndSet(f96007j)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.downstream.onError(e);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable d) {
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(T value) {
        this.f96010g = value;
        for (CacheDisposable<T> cacheDisposable : this.f96009f.getAndSet(f96007j)) {
            if (!cacheDisposable.isDisposed()) {
                cacheDisposable.downstream.onSuccess(value);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> maybeObserver) {
        CacheDisposable<T> cacheDisposable = new CacheDisposable<>(maybeObserver, this);
        maybeObserver.onSubscribe(cacheDisposable);
        if (m61197a(cacheDisposable)) {
            if (cacheDisposable.isDisposed()) {
                m61198b(cacheDisposable);
                return;
            }
            MaybeSource<T> andSet = this.f96008e.getAndSet(null);
            if (andSet != null) {
                andSet.subscribe(this);
                return;
            }
            return;
        }
        if (cacheDisposable.isDisposed()) {
            return;
        }
        Throwable th = this.f96011h;
        if (th != null) {
            maybeObserver.onError(th);
            return;
        }
        T t = this.f96010g;
        if (t != null) {
            maybeObserver.onSuccess(t);
        } else {
            maybeObserver.onComplete();
        }
    }
}
