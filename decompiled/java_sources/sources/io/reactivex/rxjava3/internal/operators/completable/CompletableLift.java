package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableOperator;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class CompletableLift extends Completable {

    /* renamed from: e */
    public final CompletableSource f95258e;

    /* renamed from: f */
    public final CompletableOperator f95259f;

    public CompletableLift(CompletableSource source, CompletableOperator onLift) {
        this.f95258e = source;
        this.f95259f = onLift;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        try {
            this.f95258e.subscribe(this.f95259f.apply(observer));
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }
}
