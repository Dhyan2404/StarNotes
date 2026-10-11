package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.internal.operators.mixed.MaterializeSingleObserver;

/* loaded from: classes10.dex */
public final class MaybeMaterialize<T> extends Single<Notification<T>> {

    /* renamed from: e */
    public final Maybe<T> f96138e;

    public MaybeMaterialize(Maybe<T> source) {
        this.f96138e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Notification<T>> observer) {
        this.f96138e.subscribe(new MaterializeSingleObserver(observer));
    }
}
