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
public final class ObservableAnySingle<T> extends Single<Boolean> implements FuseToObservable<Boolean> {

    /* renamed from: e */
    public final ObservableSource<T> f96337e;

    /* renamed from: f */
    public final Predicate<? super T> f96338f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableAnySingle$a */
    /* loaded from: classes10.dex */
    public static final class C17465a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Boolean> f96339e;

        /* renamed from: f */
        public final Predicate<? super T> f96340f;

        /* renamed from: g */
        public Disposable f96341g;

        /* renamed from: h */
        public boolean f96342h;

        public C17465a(SingleObserver<? super Boolean> actual, Predicate<? super T> predicate) {
            this.f96339e = actual;
            this.f96340f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96341g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96341g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96342h) {
                return;
            }
            this.f96342h = true;
            this.f96339e.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96342h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96342h = true;
                this.f96339e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96342h) {
                return;
            }
            try {
                if (this.f96340f.test(t)) {
                    this.f96342h = true;
                    this.f96341g.dispose();
                    this.f96339e.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96341g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96341g, d)) {
                this.f96341g = d;
                this.f96339e.onSubscribe(this);
            }
        }
    }

    public ObservableAnySingle(ObservableSource<T> source, Predicate<? super T> predicate) {
        this.f96337e = source;
        this.f96338f = predicate;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<Boolean> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableAny(this.f96337e, this.f96338f));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Boolean> t) {
        this.f96337e.subscribe(new C17465a(t, this.f96338f));
    }
}
