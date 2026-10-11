package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;

/* loaded from: classes10.dex */
public final class SingleDoOnSuccess<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97187e;

    /* renamed from: f */
    public final Consumer<? super T> f97188f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDoOnSuccess$a */
    /* loaded from: classes10.dex */
    public final class C17598a implements SingleObserver<T> {

        /* renamed from: e */
        public final SingleObserver<? super T> f97189e;

        public C17598a(SingleObserver<? super T> observer) {
            this.f97189e = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97189e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97189e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                SingleDoOnSuccess.this.f97188f.accept(value);
                this.f97189e.onSuccess(value);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97189e.onError(th);
            }
        }
    }

    public SingleDoOnSuccess(SingleSource<T> source, Consumer<? super T> onSuccess) {
        this.f97187e = source;
        this.f97188f = onSuccess;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97187e.subscribe(new C17598a(observer));
    }
}
