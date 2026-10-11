package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.observers.DisposableLambdaObserver;

/* loaded from: classes10.dex */
public final class ObservableDoOnLifecycle<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Consumer<? super Disposable> f96538e;

    /* renamed from: f */
    public final Action f96539f;

    public ObservableDoOnLifecycle(Observable<T> upstream, Consumer<? super Disposable> onSubscribe, Action onDispose) {
        super(upstream);
        this.f96538e = onSubscribe;
        this.f96539f = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new DisposableLambdaObserver(observer, this.f96538e, this.f96539f));
    }
}
