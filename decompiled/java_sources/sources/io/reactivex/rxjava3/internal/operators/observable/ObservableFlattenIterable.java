package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableFlattenIterable<T, R> extends AbstractC17568a<T, R> {

    /* renamed from: e */
    public final Function<? super T, ? extends Iterable<? extends R>> f96583e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableFlattenIterable$a */
    /* loaded from: classes10.dex */
    public static final class C17491a<T, R> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super R> f96584e;

        /* renamed from: f */
        public final Function<? super T, ? extends Iterable<? extends R>> f96585f;

        /* renamed from: g */
        public Disposable f96586g;

        public C17491a(Observer<? super R> actual, Function<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f96584e = actual;
            this.f96585f = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96586g.dispose();
            this.f96586g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96586g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            Disposable disposable = this.f96586g;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                return;
            }
            this.f96586g = disposableHelper;
            this.f96584e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            Disposable disposable = this.f96586g;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                RxJavaPlugins.onError(e);
            } else {
                this.f96586g = disposableHelper;
                this.f96584e.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96586g == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                Observer<? super R> observer = this.f96584e;
                for (R r : this.f96585f.apply(t)) {
                    try {
                        try {
                            Objects.requireNonNull(r, "The iterator returned a null value");
                            observer.onNext(r);
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.f96586g.dispose();
                            onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        this.f96586g.dispose();
                        onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                this.f96586g.dispose();
                onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96586g, d)) {
                this.f96586g = d;
                this.f96584e.onSubscribe(this);
            }
        }
    }

    public ObservableFlattenIterable(ObservableSource<T> source, Function<? super T, ? extends Iterable<? extends R>> mapper) {
        super(source);
        this.f96583e = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        this.source.subscribe(new C17491a(observer, this.f96583e));
    }
}
