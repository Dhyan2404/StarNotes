package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;

/* loaded from: classes10.dex */
public final class SingleJust<T> extends Single<T> {

    /* renamed from: e */
    public final T f97244e;

    public SingleJust(T value) {
        this.f97244e = value;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> singleObserver) {
        singleObserver.onSubscribe(Disposable.disposed());
        singleObserver.onSuccess(this.f97244e);
    }
}
