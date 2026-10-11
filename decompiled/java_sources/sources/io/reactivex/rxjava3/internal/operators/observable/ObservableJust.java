package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.rxjava3.operators.ScalarSupplier;

/* loaded from: classes10.dex */
public final class ObservableJust<T> extends Observable<T> implements ScalarSupplier<T> {

    /* renamed from: e */
    public final T f96680e;

    public ObservableJust(final T value) {
        this.f96680e = value;
    }

    @Override // io.reactivex.rxjava3.operators.ScalarSupplier, io.reactivex.rxjava3.functions.Supplier
    public T get() {
        return this.f96680e;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(observer, this.f96680e);
        observer.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }
}
