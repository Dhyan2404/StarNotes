package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class CompletableDetach extends Completable {

    /* renamed from: e */
    public final CompletableSource f95226e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableDetach$a */
    /* loaded from: classes10.dex */
    public static final class C17305a implements CompletableObserver, Disposable {

        /* renamed from: e */
        public CompletableObserver f95227e;

        /* renamed from: f */
        public Disposable f95228f;

        public C17305a(CompletableObserver downstream) {
            this.f95227e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95227e = null;
            this.f95228f.dispose();
            this.f95228f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95228f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95228f = DisposableHelper.DISPOSED;
            CompletableObserver completableObserver = this.f95227e;
            if (completableObserver != null) {
                this.f95227e = null;
                completableObserver.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f95228f = DisposableHelper.DISPOSED;
            CompletableObserver completableObserver = this.f95227e;
            if (completableObserver != null) {
                this.f95227e = null;
                completableObserver.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f95228f, d)) {
                this.f95228f = d;
                this.f95227e.onSubscribe(this);
            }
        }
    }

    public CompletableDetach(CompletableSource source) {
        this.f95226e = source;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        this.f95226e.subscribe(new C17305a(observer));
    }
}
