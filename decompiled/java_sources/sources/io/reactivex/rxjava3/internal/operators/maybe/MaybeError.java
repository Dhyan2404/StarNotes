package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;

/* loaded from: classes10.dex */
public final class MaybeError<T> extends Maybe<T> {

    /* renamed from: e */
    public final Throwable f96069e;

    public MaybeError(Throwable error) {
        this.f96069e = error;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        observer.onSubscribe(Disposable.disposed());
        observer.onError(this.f96069e);
    }
}
