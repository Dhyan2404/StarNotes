package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableReduceSeedSingle;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableReduceWithSingle<T, R> extends Single<R> {

    /* renamed from: e */
    public final ObservableSource<T> f96747e;

    /* renamed from: f */
    public final Supplier<R> f96748f;

    /* renamed from: g */
    public final BiFunction<R, ? super T, R> f96749g;

    public ObservableReduceWithSingle(ObservableSource<T> source, Supplier<R> seedSupplier, BiFunction<R, ? super T, R> reducer) {
        this.f96747e = source;
        this.f96748f = seedSupplier;
        this.f96749g = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        try {
            R r = this.f96748f.get();
            Objects.requireNonNull(r, "The seedSupplier returned a null value");
            this.f96747e.subscribe(new ObservableReduceSeedSingle.C17523a(observer, this.f96749g, r));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
