package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamCompletableSource;

/* loaded from: classes10.dex */
public final class ObservableFromCompletable<T> extends Observable<T> implements HasUpstreamCompletableSource {

    /* renamed from: e */
    public final CompletableSource f96595e;

    /* loaded from: classes10.dex */
    public static final class FromCompletableObserver<T> extends AbstractEmptyQueueFuseable<T> implements CompletableObserver {

        /* renamed from: e */
        public final Observer<? super T> f96596e;

        /* renamed from: f */
        public Disposable f96597f;

        public FromCompletableObserver(Observer<? super T> downstream) {
            this.f96596e = downstream;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable, io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96597f.dispose();
            this.f96597f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable, io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96597f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96597f = DisposableHelper.DISPOSED;
            this.f96596e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f96597f = DisposableHelper.DISPOSED;
            this.f96596e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96597f, d)) {
                this.f96597f = d;
                this.f96596e.onSubscribe(this);
            }
        }
    }

    public ObservableFromCompletable(CompletableSource source) {
        this.f96595e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamCompletableSource
    public CompletableSource source() {
        return this.f96595e;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f96595e.subscribe(new FromCompletableObserver(observer));
    }
}
