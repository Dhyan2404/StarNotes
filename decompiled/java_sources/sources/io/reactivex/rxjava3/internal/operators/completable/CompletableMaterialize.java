package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.internal.operators.mixed.MaterializeSingleObserver;

/* loaded from: classes10.dex */
public final class CompletableMaterialize<T> extends Single<Notification<T>> {

    /* renamed from: e */
    public final Completable f95260e;

    public CompletableMaterialize(Completable source) {
        this.f95260e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Notification<T>> observer) {
        this.f95260e.subscribe(new MaterializeSingleObserver(observer));
    }
}
