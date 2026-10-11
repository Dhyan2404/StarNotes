package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamSingleSource;

/* loaded from: classes10.dex */
public final class MaybeFromSingle<T> extends Maybe<T> implements HasUpstreamSingleSource<T> {

    /* renamed from: e */
    public final SingleSource<T> f96116e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeFromSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17439a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96117e;

        /* renamed from: f */
        public Disposable f96118f;

        public C17439a(MaybeObserver<? super T> downstream) {
            this.f96117e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96118f.dispose();
            this.f96118f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96118f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96118f = DisposableHelper.DISPOSED;
            this.f96117e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96118f, d)) {
                this.f96118f = d;
                this.f96117e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96118f = DisposableHelper.DISPOSED;
            this.f96117e.onSuccess(value);
        }
    }

    public MaybeFromSingle(SingleSource<T> source) {
        this.f96116e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamSingleSource
    public SingleSource<T> source() {
        return this.f96116e;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96116e.subscribe(new C17439a(observer));
    }
}
