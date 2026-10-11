package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BlockingHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public abstract class BlockingBaseSubscriber<T> extends CountDownLatch implements FlowableSubscriber<T> {

    /* renamed from: e */
    public T f97406e;

    /* renamed from: f */
    public Throwable f97407f;

    /* renamed from: g */
    public Subscription f97408g;

    /* renamed from: h */
    public volatile boolean f97409h;

    public BlockingBaseSubscriber() {
        super(1);
    }

    public final T blockingGet() {
        if (getCount() != 0) {
            try {
                BlockingHelper.verifyNonBlocking();
                await();
            } catch (InterruptedException e) {
                Subscription subscription = this.f97408g;
                this.f97408g = SubscriptionHelper.CANCELLED;
                if (subscription != null) {
                    subscription.cancel();
                }
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }
        Throwable th = this.f97407f;
        if (th == null) {
            return this.f97406e;
        }
        throw ExceptionHelper.wrapOrThrow(th);
    }

    @Override // org.reactivestreams.Subscriber
    public final void onComplete() {
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public final void onSubscribe(Subscription s) {
        if (SubscriptionHelper.validate(this.f97408g, s)) {
            this.f97408g = s;
            if (this.f97409h) {
                return;
            }
            s.request(Long.MAX_VALUE);
            if (this.f97409h) {
                this.f97408g = SubscriptionHelper.CANCELLED;
                s.cancel();
            }
        }
    }
}
