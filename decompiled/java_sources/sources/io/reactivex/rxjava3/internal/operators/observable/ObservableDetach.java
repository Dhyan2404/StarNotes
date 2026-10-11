package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.EmptyComponent;

/* loaded from: classes10.dex */
public final class ObservableDetach<T> extends AbstractC17568a<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDetach$a */
    /* loaded from: classes10.dex */
    public static final class C17482a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public Observer<? super T> f96511e;

        /* renamed from: f */
        public Disposable f96512f;

        public C17482a(Observer<? super T> downstream) {
            this.f96511e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f96512f;
            this.f96512f = EmptyComponent.INSTANCE;
            this.f96511e = EmptyComponent.asObserver();
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96512f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            Observer<? super T> observer = this.f96511e;
            this.f96512f = EmptyComponent.INSTANCE;
            this.f96511e = EmptyComponent.asObserver();
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            Observer<? super T> observer = this.f96511e;
            this.f96512f = EmptyComponent.INSTANCE;
            this.f96511e = EmptyComponent.asObserver();
            observer.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96511e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96512f, d)) {
                this.f96512f = d;
                this.f96511e.onSubscribe(this);
            }
        }
    }

    public ObservableDetach(ObservableSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17482a(observer));
    }
}
