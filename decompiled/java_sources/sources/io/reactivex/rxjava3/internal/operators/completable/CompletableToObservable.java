package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCompletable;

/* loaded from: classes10.dex */
public final class CompletableToObservable<T> extends Observable<T> {

    /* renamed from: e */
    public final CompletableSource f95317e;

    public CompletableToObservable(CompletableSource source) {
        this.f95317e = source;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f95317e.subscribe(new ObservableFromCompletable.FromCompletableObserver(observer));
    }
}
