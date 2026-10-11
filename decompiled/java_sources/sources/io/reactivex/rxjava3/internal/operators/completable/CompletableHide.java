package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class CompletableHide extends Completable {

    /* renamed from: e */
    public final CompletableSource f95255e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableHide$a */
    /* loaded from: classes10.dex */
    public static final class C17311a implements CompletableObserver, Disposable {

        /* renamed from: e */
        public final CompletableObserver f95256e;

        /* renamed from: f */
        public Disposable f95257f;

        public C17311a(CompletableObserver downstream) {
            this.f95256e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95257f.dispose();
            this.f95257f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95257f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95256e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f95256e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f95257f, d)) {
                this.f95257f = d;
                this.f95256e.onSubscribe(this);
            }
        }
    }

    public CompletableHide(CompletableSource source) {
        this.f95255e = source;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        this.f95255e.subscribe(new C17311a(observer));
    }
}
