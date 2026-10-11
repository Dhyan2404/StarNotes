package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.EndConsumerHelper;
import org.reactivestreams.Subscription;

/* loaded from: classes4.dex */
public abstract class DefaultSubscriber<T> implements FlowableSubscriber<T> {

    /* renamed from: e */
    public Subscription f97645e;

    public final void cancel() {
        Subscription subscription = this.f97645e;
        this.f97645e = SubscriptionHelper.CANCELLED;
        subscription.cancel();
    }

    public void onStart() {
        request(Long.MAX_VALUE);
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public final void onSubscribe(Subscription s) {
        if (EndConsumerHelper.validate(this.f97645e, s, getClass())) {
            this.f97645e = s;
            onStart();
        }
    }

    public final void request(long n) {
        Subscription subscription = this.f97645e;
        if (subscription != null) {
            subscription.request(n);
        }
    }
}
