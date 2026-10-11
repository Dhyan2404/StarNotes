package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.ListCompositeDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.EndConsumerHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes4.dex */
public abstract class ResourceSubscriber<T> implements FlowableSubscriber<T>, Disposable {

    /* renamed from: e */
    public final AtomicReference<Subscription> f97647e = new AtomicReference<>();

    /* renamed from: f */
    public final ListCompositeDisposable f97648f = new ListCompositeDisposable();

    /* renamed from: g */
    public final AtomicLong f97649g = new AtomicLong();

    public final void add(Disposable resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f97648f.add(resource);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (SubscriptionHelper.cancel(this.f97647e)) {
            this.f97648f.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f97647e.get() == SubscriptionHelper.CANCELLED;
    }

    public void onStart() {
        request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public final void onSubscribe(Subscription s) {
        if (EndConsumerHelper.setOnce(this.f97647e, s, getClass())) {
            long andSet = this.f97649g.getAndSet(0L);
            if (andSet != 0) {
                s.request(andSet);
            }
            onStart();
        }
    }

    public final void request(long n) {
        SubscriptionHelper.deferredRequest(this.f97647e, this.f97649g, n);
    }
}
