package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableSingleMaybe<T> extends Maybe<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96826e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSingleMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17538a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96827e;

        /* renamed from: f */
        public Disposable f96828f;

        /* renamed from: g */
        public T f96829g;

        /* renamed from: h */
        public boolean f96830h;

        public C17538a(MaybeObserver<? super T> downstream) {
            this.f96827e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96828f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96828f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96830h) {
                return;
            }
            this.f96830h = true;
            T t = this.f96829g;
            this.f96829g = null;
            if (t == null) {
                this.f96827e.onComplete();
            } else {
                this.f96827e.onSuccess(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96830h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96830h = true;
                this.f96827e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96830h) {
                return;
            }
            if (this.f96829g == null) {
                this.f96829g = t;
                return;
            }
            this.f96830h = true;
            this.f96828f.dispose();
            this.f96827e.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96828f, d)) {
                this.f96828f = d;
                this.f96827e.onSubscribe(this);
            }
        }
    }

    public ObservableSingleMaybe(ObservableSource<T> source) {
        this.f96826e = source;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> t) {
        this.f96826e.subscribe(new C17538a(t));
    }
}
