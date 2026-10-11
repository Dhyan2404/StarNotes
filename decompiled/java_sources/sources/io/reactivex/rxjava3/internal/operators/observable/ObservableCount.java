package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableCount<T> extends AbstractC17568a<T, Long> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableCount$a */
    /* loaded from: classes10.dex */
    public static final class C17475a implements Observer<Object>, Disposable {

        /* renamed from: e */
        public final Observer<? super Long> f96450e;

        /* renamed from: f */
        public Disposable f96451f;

        /* renamed from: g */
        public long f96452g;

        public C17475a(Observer<? super Long> downstream) {
            this.f96450e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96451f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96451f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96450e.onNext(Long.valueOf(this.f96452g));
            this.f96450e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96450e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(Object t) {
            this.f96452g++;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96451f, d)) {
                this.f96451f = d;
                this.f96450e.onSubscribe(this);
            }
        }
    }

    public ObservableCount(ObservableSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Long> t) {
        this.source.subscribe(new C17475a(t));
    }
}
