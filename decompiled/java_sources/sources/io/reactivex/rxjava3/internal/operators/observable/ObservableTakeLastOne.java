package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableTakeLastOne<T> extends AbstractC17568a<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableTakeLastOne$a */
    /* loaded from: classes10.dex */
    public static final class C17547a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96881e;

        /* renamed from: f */
        public Disposable f96882f;

        /* renamed from: g */
        public T f96883g;

        public C17547a(Observer<? super T> downstream) {
            this.f96881e = downstream;
        }

        /* renamed from: a */
        public void m61254a() {
            T t = this.f96883g;
            if (t != null) {
                this.f96883g = null;
                this.f96881e.onNext(t);
            }
            this.f96881e.onComplete();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96883g = null;
            this.f96882f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96882f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            m61254a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96883g = null;
            this.f96881e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96883g = t;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96882f, d)) {
                this.f96882f = d;
                this.f96881e.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLastOne(ObservableSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17547a(observer));
    }
}
