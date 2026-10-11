package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class MaybeFlatMapSingle<T, R> extends Maybe<R> {

    /* renamed from: e */
    public final MaybeSource<T> f96101e;

    /* renamed from: f */
    public final Function<? super T, ? extends SingleSource<? extends R>> f96102f;

    /* loaded from: classes10.dex */
    public static final class FlatMapMaybeObserver<T, R> extends AtomicReference<Disposable> implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4827726964688405508L;
        final MaybeObserver<? super R> downstream;
        final Function<? super T, ? extends SingleSource<? extends R>> mapper;

        public FlatMapMaybeObserver(MaybeObserver<? super R> actual, Function<? super T, ? extends SingleSource<? extends R>> mapper) {
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

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.setOnce(this, d)) {
                this.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            try {
                SingleSource<? extends R> apply = this.mapper.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                SingleSource<? extends R> singleSource = apply;
                if (isDisposed()) {
                    return;
                }
                singleSource.subscribe(new C17436a(this, this.downstream));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(th);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeFlatMapSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17436a<R> implements SingleObserver<R> {

        /* renamed from: e */
        public final AtomicReference<Disposable> f96103e;

        /* renamed from: f */
        public final MaybeObserver<? super R> f96104f;

        public C17436a(AtomicReference<Disposable> parent, MaybeObserver<? super R> downstream) {
            this.f96103e = parent;
            this.f96104f = downstream;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(final Throwable e) {
            this.f96104f.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(final Disposable d) {
            DisposableHelper.replace(this.f96103e, d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(final R value) {
            this.f96104f.onSuccess(value);
        }
    }

    public MaybeFlatMapSingle(MaybeSource<T> source, Function<? super T, ? extends SingleSource<? extends R>> mapper) {
        this.f96101e = source;
        this.f96102f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super R> downstream) {
        this.f96101e.subscribe(new FlatMapMaybeObserver(downstream, this.f96102f));
    }
}
