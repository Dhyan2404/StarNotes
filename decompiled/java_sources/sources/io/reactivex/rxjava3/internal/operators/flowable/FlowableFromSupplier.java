package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFromSupplier<T> extends Flowable<T> implements Supplier<T> {

    /* renamed from: f */
    public final Supplier<? extends T> f95629f;

    public FlowableFromSupplier(Supplier<? extends T> supplier) {
        this.f95629f = supplier;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public T get() throws Throwable {
        T t = this.f95629f.get();
        Objects.requireNonNull(t, "The supplier returned a null value");
        return t;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(s);
        s.onSubscribe(deferredScalarSubscription);
        try {
            T t = this.f95629f.get();
            Objects.requireNonNull(t, "The supplier returned a null value");
            deferredScalarSubscription.complete(t);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            if (deferredScalarSubscription.isCancelled()) {
                RxJavaPlugins.onError(th);
            } else {
                s.onError(th);
            }
        }
    }
}
