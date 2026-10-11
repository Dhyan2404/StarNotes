package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeOnErrorComplete;

/* loaded from: classes10.dex */
public final class SingleOnErrorComplete<T> extends Maybe<T> {

    /* renamed from: e */
    public final Single<T> f97254e;

    /* renamed from: f */
    public final Predicate<? super Throwable> f97255f;

    public SingleOnErrorComplete(Single<T> source, Predicate<? super Throwable> predicate) {
        this.f97254e = source;
        this.f97255f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f97254e.subscribe(new MaybeOnErrorComplete.OnErrorCompleteMultiObserver(observer, this.f97255f));
    }
}
