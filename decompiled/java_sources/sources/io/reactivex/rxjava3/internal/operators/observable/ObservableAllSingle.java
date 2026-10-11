package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableAllSingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: e */
    public final ObservableSource<T> f96321e;

    /* renamed from: f */
    public final Predicate<? super T> f96322f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableAllSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17462a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Boolean> f96323e;

        /* renamed from: f */
        public final Predicate<? super T> f96324f;

        /* renamed from: g */
        public Disposable f96325g;

        /* renamed from: h */
        public boolean f96326h;

        public C17462a(SingleObserver<? super Boolean> actual, Predicate<? super T> predicate) {
            this.f96323e = actual;
            this.f96324f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96325g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96325g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96326h) {
                return;
            }
            this.f96326h = true;
            this.f96323e.onSuccess(Boolean.TRUE);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96326h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96326h = true;
                this.f96323e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96326h) {
                return;
            }
            try {
                if (this.f96324f.test(t)) {
                    return;
                }
                this.f96326h = true;
                this.f96325g.dispose();
                this.f96323e.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96325g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96325g, d)) {
                this.f96325g = d;
                this.f96323e.onSubscribe(this);
            }
        }
    }

    public ObservableAllSingle(ObservableSource<T> source, Predicate<? super T> predicate) {
        this.f96321e = source;
        this.f96322f = predicate;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<Boolean> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableAll(this.f96321e, this.f96322f));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Boolean> t) {
        this.f96321e.subscribe(new C17462a(t, this.f96322f));
    }
}
