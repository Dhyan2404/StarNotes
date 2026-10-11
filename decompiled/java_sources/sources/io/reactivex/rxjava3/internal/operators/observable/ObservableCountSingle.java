package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableCountSingle<T> extends Single<Long> implements FuseToObservable<Long> {

    /* renamed from: e */
    public final ObservableSource<T> f96453e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableCountSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17476a implements Observer<Object>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Long> f96454e;

        /* renamed from: f */
        public Disposable f96455f;

        /* renamed from: g */
        public long f96456g;

        public C17476a(SingleObserver<? super Long> downstream) {
            this.f96454e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96455f.dispose();
            this.f96455f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96455f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96455f = DisposableHelper.DISPOSED;
            this.f96454e.onSuccess(Long.valueOf(this.f96456g));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96455f = DisposableHelper.DISPOSED;
            this.f96454e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(Object t) {
            this.f96456g++;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96455f, d)) {
                this.f96455f = d;
                this.f96454e.onSubscribe(this);
            }
        }
    }

    public ObservableCountSingle(ObservableSource<T> source) {
        this.f96453e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<Long> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableCount(this.f96453e));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Long> t) {
        this.f96453e.subscribe(new C17476a(t));
    }
}
