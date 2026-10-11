package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;

/* loaded from: classes10.dex */
public final class CompletableToSingle<T> extends Single<T> {

    /* renamed from: e */
    public final CompletableSource f95318e;

    /* renamed from: f */
    public final Supplier<? extends T> f95319f;

    /* renamed from: g */
    public final T f95320g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableToSingle$a */
    /* loaded from: classes10.dex */
    public final class C17319a implements CompletableObserver {

        /* renamed from: e */
        public final SingleObserver<? super T> f95321e;

        public C17319a(SingleObserver<? super T> observer) {
            this.f95321e = observer;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            T t;
            CompletableToSingle completableToSingle = CompletableToSingle.this;
            Supplier<? extends T> supplier = completableToSingle.f95319f;
            if (supplier != null) {
                try {
                    t = supplier.get();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f95321e.onError(th);
                    return;
                }
            } else {
                t = completableToSingle.f95320g;
            }
            if (t == null) {
                this.f95321e.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f95321e.onSuccess(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f95321e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            this.f95321e.onSubscribe(d);
        }
    }

    public CompletableToSingle(CompletableSource source, Supplier<? extends T> completionValueSupplier, T completionValue) {
        this.f95318e = source;
        this.f95320g = completionValue;
        this.f95319f = completionValueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f95318e.subscribe(new C17319a(observer));
    }
}
