package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamCompletableSource;

/* loaded from: classes10.dex */
public final class MaybeFromCompletable<T> extends Maybe<T> implements HasUpstreamCompletableSource {

    /* renamed from: e */
    public final CompletableSource f96109e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCompletable$a */
    /* loaded from: classes10.dex */
    public static final class C17438a<T> implements CompletableObserver, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96110e;

        /* renamed from: f */
        public Disposable f96111f;

        public C17438a(MaybeObserver<? super T> downstream) {
            this.f96110e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96111f.dispose();
            this.f96111f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96111f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96111f = DisposableHelper.DISPOSED;
            this.f96110e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f96111f = DisposableHelper.DISPOSED;
            this.f96110e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96111f, d)) {
                this.f96111f = d;
                this.f96110e.onSubscribe(this);
            }
        }
    }

    public MaybeFromCompletable(CompletableSource source) {
        this.f96109e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamCompletableSource
    public CompletableSource source() {
        return this.f96109e;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96109e.subscribe(new C17438a(observer));
    }
}
