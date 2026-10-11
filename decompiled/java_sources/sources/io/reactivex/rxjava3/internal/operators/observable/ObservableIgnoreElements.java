package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;

/* loaded from: classes10.dex */
public final class ObservableIgnoreElements<T> extends AbstractC17568a<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableIgnoreElements$a */
    /* loaded from: classes10.dex */
    public static final class C17499a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96635e;

        /* renamed from: f */
        public Disposable f96636f;

        public C17499a(Observer<? super T> t) {
            this.f96635e = t;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96636f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96636f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96635e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            this.f96635e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T v) {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f96636f = d;
            this.f96635e.onSubscribe(this);
        }
    }

    public ObservableIgnoreElements(ObservableSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(final Observer<? super T> t) {
        this.source.subscribe(new C17499a(t));
    }
}
