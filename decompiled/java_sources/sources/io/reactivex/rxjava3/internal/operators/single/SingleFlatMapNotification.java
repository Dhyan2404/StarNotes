package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleFlatMapNotification<T, R> extends Single<R> {

    /* renamed from: e */
    public final SingleSource<T> f97224e;

    /* renamed from: f */
    public final Function<? super T, ? extends SingleSource<? extends R>> f97225f;

    /* renamed from: g */
    public final Function<? super Throwable, ? extends SingleSource<? extends R>> f97226g;

    /* loaded from: classes10.dex */
    public static final class FlatMapSingleObserver<T, R> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = 4375739915521278546L;
        final SingleObserver<? super R> downstream;
        final Function<? super Throwable, ? extends SingleSource<? extends R>> onErrorMapper;
        final Function<? super T, ? extends SingleSource<? extends R>> onSuccessMapper;
        Disposable upstream;

        /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleFlatMapNotification$FlatMapSingleObserver$a */
        /* loaded from: classes10.dex */
        public final class C17603a implements SingleObserver<R> {
            public C17603a() {
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onError(Throwable e) {
                FlatMapSingleObserver.this.downstream.onError(e);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onSubscribe(Disposable d) {
                DisposableHelper.setOnce(FlatMapSingleObserver.this, d);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver
            public void onSuccess(R value) {
                FlatMapSingleObserver.this.downstream.onSuccess(value);
            }
        }

        public FlatMapSingleObserver(SingleObserver<? super R> actual, Function<? super T, ? extends SingleSource<? extends R>> onSuccessMapper, Function<? super Throwable, ? extends SingleSource<? extends R>> onErrorMapper) {
            this.downstream = actual;
            this.onSuccessMapper = onSuccessMapper;
            this.onErrorMapper = onErrorMapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.upstream.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            try {
                SingleSource<? extends R> apply = this.onErrorMapper.apply(e);
                Objects.requireNonNull(apply, "The onErrorMapper returned a null SingleSource");
                SingleSource<? extends R> singleSource = apply;
                if (isDisposed()) {
                    return;
                }
                singleSource.subscribe(new C17603a());
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(new CompositeException(e, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                SingleSource<? extends R> apply = this.onSuccessMapper.apply(value);
                Objects.requireNonNull(apply, "The onSuccessMapper returned a null SingleSource");
                SingleSource<? extends R> singleSource = apply;
                if (isDisposed()) {
                    return;
                }
                singleSource.subscribe(new C17603a());
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
            }
        }
    }

    public SingleFlatMapNotification(SingleSource<T> source, Function<? super T, ? extends SingleSource<? extends R>> onSuccessMapper, Function<? super Throwable, ? extends SingleSource<? extends R>> onErrorMapper) {
        this.f97224e = source;
        this.f97225f = onSuccessMapper;
        this.f97226g = onErrorMapper;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        this.f97224e.subscribe(new FlatMapSingleObserver(observer, this.f97225f, this.f97226g));
    }
}
