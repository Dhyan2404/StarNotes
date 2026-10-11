package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.Optional;

/* loaded from: classes10.dex */
public final class SingleMapOptional<T, R> extends Maybe<R> {

    /* renamed from: e */
    public final Single<T> f95162e;

    /* renamed from: f */
    public final Function<? super T, Optional<? extends R>> f95163f;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.SingleMapOptional$a */
    /* loaded from: classes10.dex */
    public static final class C17302a<T, R> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super R> f95164e;

        /* renamed from: f */
        public final Function<? super T, Optional<? extends R>> f95165f;

        /* renamed from: g */
        public Disposable f95166g;

        public C17302a(MaybeObserver<? super R> downstream, Function<? super T, Optional<? extends R>> mapper) {
            this.f95164e = downstream;
            this.f95165f = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f95166g;
            this.f95166g = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95166g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f95164e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f95166g, d)) {
                this.f95166g = d;
                this.f95164e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            try {
                Optional<? extends R> apply = this.f95165f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null item");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f95164e.onSuccess(optional.get());
                } else {
                    this.f95164e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95164e.onError(th);
            }
        }
    }

    public SingleMapOptional(Single<T> source, Function<? super T, Optional<? extends R>> mapper) {
        this.f95162e = source;
        this.f95163f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super R> observer) {
        this.f95162e.subscribe(new C17302a(observer, this.f95163f));
    }
}
