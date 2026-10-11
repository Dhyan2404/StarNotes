package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableElementAtMaybe<T> extends Maybe<T> implements FuseToObservable<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96550e;

    /* renamed from: f */
    public final long f96551f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableElementAtMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17488a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96552e;

        /* renamed from: f */
        public final long f96553f;

        /* renamed from: g */
        public Disposable f96554g;

        /* renamed from: h */
        public long f96555h;

        /* renamed from: i */
        public boolean f96556i;

        public C17488a(MaybeObserver<? super T> actual, long index) {
            this.f96552e = actual;
            this.f96553f = index;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96554g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96554g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96556i) {
                return;
            }
            this.f96556i = true;
            this.f96552e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96556i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96556i = true;
                this.f96552e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96556i) {
                return;
            }
            long j = this.f96555h;
            if (j != this.f96553f) {
                this.f96555h = j + 1;
                return;
            }
            this.f96556i = true;
            this.f96554g.dispose();
            this.f96552e.onSuccess(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96554g, d)) {
                this.f96554g = d;
                this.f96552e.onSubscribe(this);
            }
        }
    }

    public ObservableElementAtMaybe(ObservableSource<T> source, long index) {
        this.f96550e = source;
        this.f96551f = index;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<T> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableElementAt(this.f96550e, this.f96551f, null, false));
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> t) {
        this.f96550e.subscribe(new C17488a(t, this.f96551f));
    }
}
