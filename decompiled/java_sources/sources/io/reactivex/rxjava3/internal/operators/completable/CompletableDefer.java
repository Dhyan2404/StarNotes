package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class CompletableDefer extends Completable {

    /* renamed from: e */
    public final Supplier<? extends CompletableSource> f95220e;

    public CompletableDefer(Supplier<? extends CompletableSource> completableSupplier) {
        this.f95220e = completableSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        try {
            CompletableSource completableSource = this.f95220e.get();
            Objects.requireNonNull(completableSource, "The completableSupplier returned a null CompletableSource");
            completableSource.subscribe(observer);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
