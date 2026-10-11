package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleFlatMap<T, R> extends Single<R> {

    /* renamed from: e */
    public final SingleSource<? extends T> f97203e;

    /* renamed from: f */
    public final Function<? super T, ? extends SingleSource<? extends R>> f97204f;

    /* loaded from: classes10.dex */
    public static final class SingleFlatMapCallback<T, R> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = 3258103020495908596L;
        final SingleObserver<? super R> downstream;
        final Function<? super T, ? extends SingleSource<? extends R>> mapper;

        /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleFlatMap$SingleFlatMapCallback$a */
        /* loaded from: classes10.dex */
        public static final class C17601a<R> implements SingleObserver<R> {

            /* renamed from: e */
            public final AtomicReference<Disposable> f97205e;

            /* renamed from: f */
            public final SingleObserver<? super R> f97206f;

            public C17601a(AtomicReference<Disposable> parent, SingleObserver<? super R> downstream) {
                this.f97205e = parent;
                this.f97206f = downstream;
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onError(final Throwable e) {
                this.f97206f.onError(e);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onSubscribe(final Disposable d) {
                DisposableHelper.replace(this.f97205e, d);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onSuccess(final R value) {
                this.f97206f.onSuccess(value);
            }
        }

        public SingleFlatMapCallback(SingleObserver<? super R> actual, Function<? super T, ? extends SingleSource<? extends R>> mapper) {
            this.downstream = actual;
            this.mapper = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.setOnce(this, d)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                SingleSource<? extends R> apply = this.mapper.apply(value);
                Objects.requireNonNull(apply, "The single returned by the mapper is null");
                SingleSource<? extends R> singleSource = apply;
                if (isDisposed()) {
                    return;
                }
                singleSource.subscribe(new C17601a(this, this.downstream));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
            }
        }
    }

    public SingleFlatMap(SingleSource<? extends T> source, Function<? super T, ? extends SingleSource<? extends R>> mapper) {
        this.f97204f = mapper;
        this.f97203e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> downstream) {
        this.f97203e.subscribe(new SingleFlatMapCallback(downstream, this.f97204f));
    }
}
