package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableReduceSeedSingle;
import java.util.Objects;
import org.reactivestreams.Publisher;

/* loaded from: classes10.dex */
public final class FlowableReduceWithSingle<T, R> extends Single<R> {

    /* renamed from: e */
    public final Publisher<T> f95779e;

    /* renamed from: f */
    public final Supplier<R> f95780f;

    /* renamed from: g */
    public final BiFunction<R, ? super T, R> f95781g;

    public FlowableReduceWithSingle(Publisher<T> source, Supplier<R> seedSupplier, BiFunction<R, ? super T, R> reducer) {
        this.f95779e = source;
        this.f95780f = seedSupplier;
        this.f95781g = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        try {
            R r = this.f95780f.get();
            Objects.requireNonNull(r, "The seedSupplier returned a null value");
            this.f95779e.subscribe(new FlowableReduceSeedSingle.C17385a(observer, this.f95781g, r));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
