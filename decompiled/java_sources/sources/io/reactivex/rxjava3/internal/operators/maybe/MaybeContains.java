package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class MaybeContains<T> extends Single<Boolean> implements HasUpstreamMaybeSource<T> {

    /* renamed from: e */
    public final MaybeSource<T> f96015e;

    /* renamed from: f */
    public final Object f96016f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeContains$a */
    /* loaded from: classes10.dex */
    public static final class C17421a implements MaybeObserver<Object>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Boolean> f96017e;

        /* renamed from: f */
        public final Object f96018f;

        /* renamed from: g */
        public Disposable f96019g;

        public C17421a(SingleObserver<? super Boolean> actual, Object value) {
            this.f96017e = actual;
            this.f96018f = value;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96019g.dispose();
            this.f96019g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96019g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96019g = DisposableHelper.DISPOSED;
            this.f96017e.onSuccess(Boolean.FALSE);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96019g = DisposableHelper.DISPOSED;
            this.f96017e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96019g, d)) {
                this.f96019g = d;
                this.f96017e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(Object value) {
            this.f96019g = DisposableHelper.DISPOSED;
            this.f96017e.onSuccess(Boolean.valueOf(Objects.equals(value, this.f96018f)));
        }
    }

    public MaybeContains(MaybeSource<T> source, Object value) {
        this.f96015e = source;
        this.f96016f = value;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamMaybeSource
    public MaybeSource<T> source() {
        return this.f96015e;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Boolean> observer) {
        this.f96015e.subscribe(new C17421a(observer, this.f96016f));
    }
}
