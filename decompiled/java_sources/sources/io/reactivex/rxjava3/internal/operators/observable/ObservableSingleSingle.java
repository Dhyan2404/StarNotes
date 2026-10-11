package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableSingleSingle<T> extends Single<T> {

    /* renamed from: e */
    public final ObservableSource<? extends T> f96831e;

    /* renamed from: f */
    public final T f96832f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSingleSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17539a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f96833e;

        /* renamed from: f */
        public final T f96834f;

        /* renamed from: g */
        public Disposable f96835g;

        /* renamed from: h */
        public T f96836h;

        /* renamed from: i */
        public boolean f96837i;

        public C17539a(SingleObserver<? super T> actual, T defaultValue) {
            this.f96833e = actual;
            this.f96834f = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96835g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96835g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96837i) {
                return;
            }
            this.f96837i = true;
            T t = this.f96836h;
            this.f96836h = null;
            if (t == null) {
                t = this.f96834f;
            }
            if (t != null) {
                this.f96833e.onSuccess(t);
            } else {
                this.f96833e.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96837i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96837i = true;
                this.f96833e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96837i) {
                return;
            }
            if (this.f96836h == null) {
                this.f96836h = t;
                return;
            }
            this.f96837i = true;
            this.f96835g.dispose();
            this.f96833e.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96835g, d)) {
                this.f96835g = d;
                this.f96833e.onSubscribe(this);
            }
        }
    }

    public ObservableSingleSingle(ObservableSource<? extends T> source, T defaultValue) {
        this.f96831e = source;
        this.f96832f = defaultValue;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> t) {
        this.f96831e.subscribe(new C17539a(t, this.f96832f));
    }
}
