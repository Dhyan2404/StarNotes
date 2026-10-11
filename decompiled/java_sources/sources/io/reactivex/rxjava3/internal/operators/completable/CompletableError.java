package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* loaded from: classes10.dex */
public final class CompletableError extends Completable {

    /* renamed from: e */
    public final Throwable f95241e;

    public CompletableError(Throwable error) {
        this.f95241e = error;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        EmptyDisposable.error(this.f95241e, observer);
    }
}
