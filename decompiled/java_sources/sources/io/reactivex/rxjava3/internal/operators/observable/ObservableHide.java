package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableHide<T> extends AbstractC17568a<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableHide$a */
    /* loaded from: classes10.dex */
    public static final class C17498a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96633e;

        /* renamed from: f */
        public Disposable f96634f;

        public C17498a(Observer<? super T> downstream) {
            this.f96633e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96634f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96634f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96633e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96633e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96633e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96634f, d)) {
                this.f96634f = d;
                this.f96633e.onSubscribe(this);
            }
        }
    }

    public ObservableHide(ObservableSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> o) {
        this.source.subscribe(new C17498a(o));
    }
}
