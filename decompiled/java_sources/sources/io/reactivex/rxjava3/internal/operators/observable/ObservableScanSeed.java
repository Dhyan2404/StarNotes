package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableScanSeed<T, R> extends AbstractC17568a<T, R> {

    /* renamed from: e */
    public final BiFunction<R, ? super T, R> f96797e;

    /* renamed from: f */
    public final Supplier<R> f96798f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableScanSeed$a */
    /* loaded from: classes10.dex */
    public static final class C17535a<T, R> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super R> f96799e;

        /* renamed from: f */
        public final BiFunction<R, ? super T, R> f96800f;

        /* renamed from: g */
        public R f96801g;

        /* renamed from: h */
        public Disposable f96802h;

        /* renamed from: i */
        public boolean f96803i;

        public C17535a(Observer<? super R> actual, BiFunction<R, ? super T, R> accumulator, R value) {
            this.f96799e = actual;
            this.f96800f = accumulator;
            this.f96801g = value;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96802h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96802h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96803i) {
                return;
            }
            this.f96803i = true;
            this.f96799e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96803i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96803i = true;
                this.f96799e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96803i) {
                return;
            }
            try {
                R apply = this.f96800f.apply(this.f96801g, t);
                Objects.requireNonNull(apply, "The accumulator returned a null value");
                this.f96801g = apply;
                this.f96799e.onNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96802h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f96802h, disposable)) {
                this.f96802h = disposable;
                this.f96799e.onSubscribe(this);
                this.f96799e.onNext(this.f96801g);
            }
        }
    }

    public ObservableScanSeed(ObservableSource<T> source, Supplier<R> seedSupplier, BiFunction<R, ? super T, R> accumulator) {
        super(source);
        this.f96797e = accumulator;
        this.f96798f = seedSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> t) {
        try {
            R r = this.f96798f.get();
            Objects.requireNonNull(r, "The seed supplied is null");
            this.source.subscribe(new C17535a(t, this.f96797e, r));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, t);
        }
    }
}
