package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;

/* loaded from: classes10.dex */
public final class SingleFromUnsafeSource<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97238e;

    public SingleFromUnsafeSource(SingleSource<T> source) {
        this.f97238e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f97238e.subscribe(observer);
    }
}
