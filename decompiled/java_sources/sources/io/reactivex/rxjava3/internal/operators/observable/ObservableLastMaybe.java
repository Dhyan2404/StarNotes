package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableLastMaybe<T> extends Maybe<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96681e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableLastMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17514a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96682e;

        /* renamed from: f */
        public Disposable f96683f;

        /* renamed from: g */
        public T f96684g;

        public C17514a(MaybeObserver<? super T> downstream) {
            this.f96682e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96683f.dispose();
            this.f96683f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96683f == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96683f = DisposableHelper.DISPOSED;
            T t = this.f96684g;
            if (t == null) {
                this.f96682e.onComplete();
            } else {
                this.f96684g = null;
                this.f96682e.onSuccess(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96683f = DisposableHelper.DISPOSED;
            this.f96684g = null;
            this.f96682e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96684g = t;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96683f, d)) {
                this.f96683f = d;
                this.f96682e.onSubscribe(this);
            }
        }
    }

    public ObservableLastMaybe(ObservableSource<T> source) {
        this.f96681e = source;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96681e.subscribe(new C17514a(observer));
    }
}
