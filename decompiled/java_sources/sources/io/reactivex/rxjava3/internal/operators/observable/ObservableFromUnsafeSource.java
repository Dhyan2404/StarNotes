package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;

/* loaded from: classes10.dex */
public final class ObservableFromUnsafeSource<T> extends Observable<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96613e;

    public ObservableFromUnsafeSource(ObservableSource<T> source) {
        this.f96613e = source;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f96613e.subscribe(observer);
    }
}
