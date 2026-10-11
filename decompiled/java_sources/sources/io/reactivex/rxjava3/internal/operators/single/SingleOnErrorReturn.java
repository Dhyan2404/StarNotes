package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;

/* loaded from: classes10.dex */
public final class SingleOnErrorReturn<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<? extends T> f97256e;

    /* renamed from: f */
    public final Function<? super Throwable, ? extends T> f97257f;

    /* renamed from: g */
    public final T f97258g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn$a */
    /* loaded from: classes10.dex */
    public final class C17609a implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super T> f97259e;

        public C17609a(SingleObserver<? super T> observer) {
            this.f97259e = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            T apply;
            SingleOnErrorReturn singleOnErrorReturn = SingleOnErrorReturn.this;
            Function<? super Throwable, ? extends T> function = singleOnErrorReturn.f97257f;
            if (function != null) {
                try {
                    apply = function.apply(e);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f97259e.onError(new CompositeException(e, th));
                    return;
                }
            } else {
                apply = singleOnErrorReturn.f97258g;
            }
            if (apply != null) {
                this.f97259e.onSuccess(apply);
                return;
            }
            NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
            nullPointerException.initCause(e);
            this.f97259e.onError(nullPointerException);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97259e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f97259e.onSuccess(value);
        }
    }

    public SingleOnErrorReturn(SingleSource<? extends T> source, Function<? super Throwable, ? extends T> valueSupplier, T value) {
        this.f97256e = source;
        this.f97257f = valueSupplier;
        this.f97258g = value;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97256e.subscribe(new C17609a(observer));
    }
}
