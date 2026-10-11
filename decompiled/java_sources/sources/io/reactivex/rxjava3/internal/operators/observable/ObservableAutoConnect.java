package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class ObservableAutoConnect<T> extends Observable<T> {

    /* renamed from: e */
    public final ConnectableObservable<? extends T> f96343e;

    /* renamed from: f */
    public final int f96344f;

    /* renamed from: g */
    public final Consumer<? super Disposable> f96345g;

    /* renamed from: h */
    public final AtomicInteger f96346h = new AtomicInteger();

    public ObservableAutoConnect(ConnectableObservable<? extends T> source, int numberOfObservers, Consumer<? super Disposable> connection) {
        this.f96343e = source;
        this.f96344f = numberOfObservers;
        this.f96345g = connection;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> child) {
        this.f96343e.subscribe((Observer<? super Object>) child);
        if (this.f96346h.incrementAndGet() == this.f96344f) {
            this.f96343e.connect(this.f96345g);
        }
    }
}
