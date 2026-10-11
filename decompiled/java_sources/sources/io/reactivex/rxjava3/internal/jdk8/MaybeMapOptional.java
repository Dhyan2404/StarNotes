package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.Optional;

/* loaded from: classes10.dex */
public final class MaybeMapOptional<T, R> extends Maybe<R> {

    /* renamed from: e */
    public final Maybe<T> f95092e;

    /* renamed from: f */
    public final Function<? super T, Optional<? extends R>> f95093f;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.MaybeMapOptional$a */
    /* loaded from: classes10.dex */
    public static final class C17292a<T, R> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super R> f95094e;

        /* renamed from: f */
        public final Function<? super T, Optional<? extends R>> f95095f;

        /* renamed from: g */
        public Disposable f95096g;

        public C17292a(MaybeObserver<? super R> downstream, Function<? super T, Optional<? extends R>> mapper) {
            this.f95094e = downstream;
            this.f95095f = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            Disposable disposable = this.f95096g;
            this.f95096g = DisposableHelper.DISPOSED;
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95096g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95094e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f95094e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f95096g, d)) {
                this.f95096g = d;
                this.f95094e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            try {
                Optional<? extends R> apply = this.f95095f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null item");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f95094e.onSuccess(optional.get());
                } else {
                    this.f95094e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95094e.onError(th);
            }
        }
    }

    public MaybeMapOptional(Maybe<T> source, Function<? super T, Optional<? extends R>> mapper) {
        this.f95092e = source;
        this.f95093f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super R> observer) {
        this.f95092e.subscribe(new C17292a(observer, this.f95093f));
    }
}
