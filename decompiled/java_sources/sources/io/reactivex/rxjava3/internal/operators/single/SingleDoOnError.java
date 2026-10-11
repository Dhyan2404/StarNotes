package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;

/* loaded from: classes10.dex */
public final class SingleDoOnError<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97167e;

    /* renamed from: f */
    public final Consumer<? super Throwable> f97168f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoOnError$a */
    /* loaded from: classes10.dex */
    public final class C17594a implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super T> f97169e;

        public C17594a(SingleObserver<? super T> observer) {
            this.f97169e = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                SingleDoOnError.this.f97168f.accept(e);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f97169e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97169e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f97169e.onSuccess(value);
        }
    }

    public SingleDoOnError(SingleSource<T> source, Consumer<? super Throwable> onError) {
        this.f97167e = source;
        this.f97168f = onError;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97167e.subscribe(new C17594a(observer));
    }
}
