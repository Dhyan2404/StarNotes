package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableSkip<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final long f96838e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSkip$a */
    /* loaded from: classes10.dex */
    public static final class C17540a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96839e;

        /* renamed from: f */
        public long f96840f;

        /* renamed from: g */
        public Disposable f96841g;

        public C17540a(Observer<? super T> actual, long n) {
            this.f96839e = actual;
            this.f96840f = n;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96841g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96841g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96839e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96839e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            long j = this.f96840f;
            if (j != 0) {
                this.f96840f = j - 1;
            } else {
                this.f96839e.onNext(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96841g, d)) {
                this.f96841g = d;
                this.f96839e.onSubscribe(this);
            }
        }
    }

    public ObservableSkip(ObservableSource<T> source, long n) {
        super(source);
        this.f96838e = n;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17540a(observer, this.f96838e));
    }
}
