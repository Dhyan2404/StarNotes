package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;

/* loaded from: classes10.dex */
public final class CompletableFromUnsafeSource extends Completable {

    /* renamed from: e */
    public final CompletableSource f95254e;

    public CompletableFromUnsafeSource(CompletableSource source) {
        this.f95254e = source;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        this.f95254e.subscribe(observer);
    }
}
