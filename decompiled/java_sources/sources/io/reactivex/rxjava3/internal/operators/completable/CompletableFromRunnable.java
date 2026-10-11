package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class CompletableFromRunnable extends Completable {

    /* renamed from: e */
    public final Runnable f95250e;

    public CompletableFromRunnable(Runnable runnable) {
        this.f95250e = runnable;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        Disposable empty = Disposable.empty();
        observer.onSubscribe(empty);
        if (empty.isDisposed()) {
            return;
        }
        try {
            this.f95250e.run();
            if (empty.isDisposed()) {
                return;
            }
            observer.onComplete();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            if (empty.isDisposed()) {
                RxJavaPlugins.onError(th);
            } else {
                observer.onError(th);
            }
        }
    }
}
