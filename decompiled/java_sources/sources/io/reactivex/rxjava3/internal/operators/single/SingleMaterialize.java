package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.internal.operators.mixed.MaterializeSingleObserver;

/* loaded from: classes10.dex */
public final class SingleMaterialize<T> extends Single<Notification<T>> {

    /* renamed from: e */
    public final Single<T> f97251e;

    public SingleMaterialize(Single<T> source) {
        this.f97251e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Notification<T>> observer) {
        this.f97251e.subscribe(new MaterializeSingleObserver(observer));
    }
}
