package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;

/* loaded from: classes10.dex */
public final class CompletableFromObservable<T> extends Completable {

    /* renamed from: e */
    public final ObservableSource<T> f95245e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableFromObservable$a */
    /* loaded from: classes10.dex */
    public static final class C17308a<T> implements Observer<T> {

        /* renamed from: e */
        public final CompletableObserver f95246e;

        public C17308a(CompletableObserver co) {
            this.f95246e = co;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f95246e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            this.f95246e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f95246e.onSubscribe(d);
        }
    }

    public CompletableFromObservable(ObservableSource<T> observable) {
        this.f95245e = observable;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        this.f95245e.subscribe(new C17308a(observer));
    }
}
