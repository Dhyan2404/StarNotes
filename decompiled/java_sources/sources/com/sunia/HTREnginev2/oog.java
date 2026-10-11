package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public abstract class oog<T> extends CompletableFuture<T> implements FlowableSubscriber<T> {

    /* renamed from: e */
    public final AtomicReference<Subscription> f79989e = new AtomicReference<>();

    /* renamed from: f */
    public T f79990f;

    public abstract void afterSubscribe(Subscription s);

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public final boolean cancel(boolean mayInterruptIfRunning) {
        cancelUpstream();
        return super.cancel(mayInterruptIfRunning);
    }

    public final void cancelUpstream() {
        SubscriptionHelper.cancel(this.f79989e);
    }

    public final void clear() {
        this.f79990f = null;
        this.f79989e.lazySet(SubscriptionHelper.CANCELLED);
    }

    @Override // java.util.concurrent.CompletableFuture
    public final boolean complete(T value) {
        cancelUpstream();
        return super.complete(value);
    }

    @Override // java.util.concurrent.CompletableFuture
    public final boolean completeExceptionally(Throwable ex) {
        cancelUpstream();
        return super.completeExceptionally(ex);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onError(Throwable t) {
        clear();
        if (completeExceptionally(t)) {
            return;
        }
        RxJavaPlugins.onError(t);
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public final void onSubscribe(@NonNull Subscription s) {
        if (SubscriptionHelper.setOnce(this.f79989e, s)) {
            afterSubscribe(s);
        }
    }
}
