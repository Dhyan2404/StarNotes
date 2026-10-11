package io.reactivex.rxjava3.internal.operators.completable;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class CompletableCache extends Completable implements CompletableObserver {

    /* renamed from: i */
    public static final InnerCompletableCache[] f95207i = new InnerCompletableCache[0];

    /* renamed from: j */
    public static final InnerCompletableCache[] f95208j = new InnerCompletableCache[0];

    /* renamed from: e */
    public final CompletableSource f95209e;

    /* renamed from: f */
    public final AtomicReference<InnerCompletableCache[]> f95210f = new AtomicReference<>(f95207i);

    /* renamed from: g */
    public final AtomicBoolean f95211g = new AtomicBoolean();

    /* renamed from: h */
    public Throwable f95212h;

    /* loaded from: classes10.dex */
    public final class InnerCompletableCache extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 8943152917179642732L;
        final CompletableObserver downstream;

        public InnerCompletableCache(CompletableObserver downstream) {
            this.downstream = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                CompletableCache.this.m61146f(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }
    }

    public CompletableCache(CompletableSource source) {
        this.f95209e = source;
    }

    /* renamed from: e */
    public boolean m61145e(InnerCompletableCache inner) {
        InnerCompletableCache[] innerCompletableCacheArr;
        InnerCompletableCache[] innerCompletableCacheArr2;
        do {
            innerCompletableCacheArr = this.f95210f.get();
            if (innerCompletableCacheArr == f95208j) {
                return false;
            }
            int length = innerCompletableCacheArr.length;
            innerCompletableCacheArr2 = new InnerCompletableCache[length + 1];
            System.arraycopy(innerCompletableCacheArr, 0, innerCompletableCacheArr2, 0, length);
            innerCompletableCacheArr2[length] = inner;
        } while (!cyi.m53538a(this.f95210f, innerCompletableCacheArr, innerCompletableCacheArr2));
        return true;
    }

    /* renamed from: f */
    public void m61146f(InnerCompletableCache inner) {
        InnerCompletableCache[] innerCompletableCacheArr;
        InnerCompletableCache[] innerCompletableCacheArr2;
        do {
            innerCompletableCacheArr = this.f95210f.get();
            int length = innerCompletableCacheArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (innerCompletableCacheArr[i] == inner) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                innerCompletableCacheArr2 = f95207i;
            } else {
                InnerCompletableCache[] innerCompletableCacheArr3 = new InnerCompletableCache[length - 1];
                System.arraycopy(innerCompletableCacheArr, 0, innerCompletableCacheArr3, 0, i);
                System.arraycopy(innerCompletableCacheArr, i + 1, innerCompletableCacheArr3, i, (length - i) - 1);
                innerCompletableCacheArr2 = innerCompletableCacheArr3;
            }
        } while (!cyi.m53538a(this.f95210f, innerCompletableCacheArr, innerCompletableCacheArr2));
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        for (InnerCompletableCache innerCompletableCache : this.f95210f.getAndSet(f95208j)) {
            if (!innerCompletableCache.get()) {
                innerCompletableCache.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onError(Throwable e) {
        this.f95212h = e;
        for (InnerCompletableCache innerCompletableCache : this.f95210f.getAndSet(f95208j)) {
            if (!innerCompletableCache.get()) {
                innerCompletableCache.downstream.onError(e);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onSubscribe(Disposable d) {
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        InnerCompletableCache innerCompletableCache = new InnerCompletableCache(observer);
        observer.onSubscribe(innerCompletableCache);
        if (m61145e(innerCompletableCache)) {
            if (innerCompletableCache.isDisposed()) {
                m61146f(innerCompletableCache);
            }
            if (this.f95211g.compareAndSet(false, true)) {
                this.f95209e.subscribe(this);
                return;
            }
            return;
        }
        Throwable th = this.f95212h;
        if (th != null) {
            observer.onError(th);
        } else {
            observer.onComplete();
        }
    }
}
