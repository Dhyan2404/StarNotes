package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFromFuture<T> extends Flowable<T> {

    /* renamed from: f */
    public final Future<? extends T> f95620f;

    /* renamed from: g */
    public final long f95621g;

    /* renamed from: h */
    public final TimeUnit f95622h;

    public FlowableFromFuture(Future<? extends T> future, long timeout, TimeUnit unit) {
        this.f95620f = future;
        this.f95621g = timeout;
        this.f95622h = unit;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        DeferredScalarSubscription deferredScalarSubscription = new DeferredScalarSubscription(s);
        s.onSubscribe(deferredScalarSubscription);
        try {
            TimeUnit timeUnit = this.f95622h;
            T t = timeUnit != null ? this.f95620f.get(this.f95621g, timeUnit) : this.f95620f.get();
            if (t == null) {
                s.onError(ExceptionHelper.createNullPointerException("The future returned a null value."));
            } else {
                deferredScalarSubscription.complete(t);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            if (deferredScalarSubscription.isCancelled()) {
                return;
            }
            s.onError(th);
        }
    }
}
