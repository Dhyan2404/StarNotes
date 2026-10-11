package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class MaybeDefer<T> extends Maybe<T> {

    /* renamed from: e */
    public final Supplier<? extends MaybeSource<? extends T>> f96024e;

    public MaybeDefer(Supplier<? extends MaybeSource<? extends T>> maybeSupplier) {
        this.f96024e = maybeSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        try {
            MaybeSource<? extends T> maybeSource = this.f96024e.get();
            Objects.requireNonNull(maybeSource, "The maybeSupplier returned a null MaybeSource");
            maybeSource.subscribe(observer);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
