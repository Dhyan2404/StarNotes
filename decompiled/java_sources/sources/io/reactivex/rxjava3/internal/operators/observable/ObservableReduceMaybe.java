package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableReduceMaybe<T> extends Maybe<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96733e;

    /* renamed from: f */
    public final BiFunction<T, T, T> f96734f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReduceMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17522a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96735e;

        /* renamed from: f */
        public final BiFunction<T, T, T> f96736f;

        /* renamed from: g */
        public boolean f96737g;

        /* renamed from: h */
        public T f96738h;

        /* renamed from: i */
        public Disposable f96739i;

        public C17522a(MaybeObserver<? super T> observer, BiFunction<T, T, T> reducer) {
            this.f96735e = observer;
            this.f96736f = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96739i.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96739i.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96737g) {
                return;
            }
            this.f96737g = true;
            T t = this.f96738h;
            this.f96738h = null;
            if (t != null) {
                this.f96735e.onSuccess(t);
            } else {
                this.f96735e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            if (this.f96737g) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.f96737g = true;
            this.f96738h = null;
            this.f96735e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
            if (this.f96737g) {
                return;
            }
            T t = this.f96738h;
            if (t == null) {
                this.f96738h = value;
                return;
            }
            try {
                T apply = this.f96736f.apply(t, value);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f96738h = apply;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96739i.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96739i, d)) {
                this.f96739i = d;
                this.f96735e.onSubscribe(this);
            }
        }
    }

    public ObservableReduceMaybe(ObservableSource<T> source, BiFunction<T, T, T> reducer) {
        this.f96733e = source;
        this.f96734f = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96733e.subscribe(new C17522a(observer, this.f96734f));
    }
}
