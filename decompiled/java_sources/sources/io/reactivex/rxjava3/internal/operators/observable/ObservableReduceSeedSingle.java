package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableReduceSeedSingle<T, R> extends Single<R> {

    /* renamed from: e */
    public final ObservableSource<T> f96740e;

    /* renamed from: f */
    public final R f96741f;

    /* renamed from: g */
    public final BiFunction<R, ? super T, R> f96742g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableReduceSeedSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17523a<T, R> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super R> f96743e;

        /* renamed from: f */
        public final BiFunction<R, ? super T, R> f96744f;

        /* renamed from: g */
        public R f96745g;

        /* renamed from: h */
        public Disposable f96746h;

        public C17523a(SingleObserver<? super R> actual, BiFunction<R, ? super T, R> reducer, R value) {
            this.f96743e = actual;
            this.f96745g = value;
            this.f96744f = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96746h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96746h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            R r = this.f96745g;
            if (r != null) {
                this.f96745g = null;
                this.f96743e.onSuccess(r);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            if (this.f96745g == null) {
                RxJavaPlugins.onError(e);
            } else {
                this.f96745g = null;
                this.f96743e.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
            R r = this.f96745g;
            if (r != null) {
                try {
                    R apply = this.f96744f.apply(r, value);
                    Objects.requireNonNull(apply, "The reducer returned a null value");
                    this.f96745g = apply;
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f96746h.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96746h, d)) {
                this.f96746h = d;
                this.f96743e.onSubscribe(this);
            }
        }
    }

    public ObservableReduceSeedSingle(ObservableSource<T> source, R seed, BiFunction<R, ? super T, R> reducer) {
        this.f96740e = source;
        this.f96741f = seed;
        this.f96742g = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        this.f96740e.subscribe(new C17523a(observer, this.f96742g, this.f96741f));
    }
}
