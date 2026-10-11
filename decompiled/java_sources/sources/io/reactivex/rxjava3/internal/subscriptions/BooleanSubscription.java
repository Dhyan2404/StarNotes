package io.reactivex.rxjava3.internal.subscriptions;

import com.google.android.material.motion.MotionUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class BooleanSubscription extends AtomicBoolean implements Subscription {
    private static final long serialVersionUID = -8127758972444290902L;

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        lazySet(true);
    }

    public boolean isCancelled() {
        return get();
    }

    @Override // org.reactivestreams.Subscription
    public void request(long n) {
        SubscriptionHelper.validate(n);
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "BooleanSubscription(cancelled=" + get() + MotionUtils.f31762d;
    }
}
