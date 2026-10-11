package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.operators.ScalarSupplier;

/* loaded from: classes10.dex */
public final class MaybeJust<T> extends Maybe<T> implements ScalarSupplier<T> {

    /* renamed from: e */
    public final T f96132e;

    public MaybeJust(T value) {
        this.f96132e = value;
    }

    @Override // io.reactivex.rxjava3.operators.ScalarSupplier, io.reactivex.rxjava3.functions.Supplier
    public T get() {
        return this.f96132e;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> maybeObserver) {
        maybeObserver.onSubscribe(Disposable.disposed());
        maybeObserver.onSuccess(this.f96132e);
    }
}
