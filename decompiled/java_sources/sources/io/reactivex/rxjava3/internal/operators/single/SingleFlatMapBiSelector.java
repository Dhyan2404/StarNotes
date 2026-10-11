package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleFlatMapBiSelector<T, U, R> extends Single<R> {

    /* renamed from: e */
    public final SingleSource<T> f97207e;

    /* renamed from: f */
    public final Function<? super T, ? extends SingleSource<? extends U>> f97208f;

    /* renamed from: g */
    public final BiFunction<? super T, ? super U, ? extends R> f97209g;

    /* loaded from: classes10.dex */
    public static final class FlatMapBiMainObserver<T, U, R> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final Function<? super T, ? extends SingleSource<? extends U>> f97210e;

        /* renamed from: f */
        public final InnerObserver<T, U, R> f97211f;

        /* loaded from: classes10.dex */
        public static final class InnerObserver<T, U, R> extends AtomicReference<Disposable> implements SingleObserver<U> {
            private static final long serialVersionUID = -2897979525538174559L;
            final SingleObserver<? super R> downstream;
            final BiFunction<? super T, ? super U, ? extends R> resultSelector;
            T value;

            public InnerObserver(SingleObserver<? super R> actual, BiFunction<? super T, ? super U, ? extends R> resultSelector) {
                this.downstream = actual;
                this.resultSelector = resultSelector;
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onError(Throwable e) {
                this.downstream.onError(e);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onSubscribe(Disposable d) {
                DisposableHelper.setOnce(this, d);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onSuccess(U value) {
                T t = this.value;
                this.value = null;
                try {
                    R apply = this.resultSelector.apply(t, value);
                    Objects.requireNonNull(apply, "The resultSelector returned a null value");
                    this.downstream.onSuccess(apply);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.downstream.onError(th);
                }
            }
        }

        public FlatMapBiMainObserver(SingleObserver<? super R> actual, Function<? super T, ? extends SingleSource<? extends U>> mapper, BiFunction<? super T, ? super U, ? extends R> resultSelector) {
            this.f97211f = new InnerObserver<>(actual, resultSelector);
            this.f97210e = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f97211f);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f97211f.get());
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97211f.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.setOnce(this.f97211f, d)) {
                this.f97211f.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            try {
                SingleSource<? extends U> apply = this.f97210e.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                SingleSource<? extends U> singleSource = apply;
                if (DisposableHelper.replace(this.f97211f, null)) {
                    InnerObserver<T, U, R> innerObserver = this.f97211f;
                    innerObserver.value = t;
                    singleSource.subscribe(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97211f.downstream.onError(th);
            }
        }
    }

    public SingleFlatMapBiSelector(SingleSource<T> source, Function<? super T, ? extends SingleSource<? extends U>> mapper, BiFunction<? super T, ? super U, ? extends R> resultSelector) {
        this.f97207e = source;
        this.f97208f = mapper;
        this.f97209g = resultSelector;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        this.f97207e.subscribe(new FlatMapBiMainObserver(observer, this.f97208f, this.f97209g));
    }
}
