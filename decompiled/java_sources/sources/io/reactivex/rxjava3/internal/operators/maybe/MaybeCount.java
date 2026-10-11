package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource;

/* loaded from: classes10.dex */
public final class MaybeCount<T> extends Single<Long> implements HasUpstreamMaybeSource<T> {

    /* renamed from: e */
    public final MaybeSource<T> f96020e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeCount$a */
    /* loaded from: classes10.dex */
    public static final class C17422a implements MaybeObserver<Object>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Long> f96021e;

        /* renamed from: f */
        public Disposable f96022f;

        public C17422a(SingleObserver<? super Long> downstream) {
            this.f96021e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96022f.dispose();
            this.f96022f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96022f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96022f = DisposableHelper.DISPOSED;
            this.f96021e.onSuccess(0L);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96022f = DisposableHelper.DISPOSED;
            this.f96021e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96022f, d)) {
                this.f96022f = d;
                this.f96021e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(Object value) {
            this.f96022f = DisposableHelper.DISPOSED;
            this.f96021e.onSuccess(1L);
        }
    }

    public MaybeCount(MaybeSource<T> source) {
        this.f96020e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f96020e;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Long> observer) {
        this.f96020e.subscribe(new C17422a(observer));
    }
}
