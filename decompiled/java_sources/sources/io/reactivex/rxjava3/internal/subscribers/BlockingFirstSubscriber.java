package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class BlockingFirstSubscriber<T> extends BlockingBaseSubscriber<T> {
    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        if (this.f97406e == null) {
            this.f97407f = t;
        } else {
            RxJavaPlugins.onError(t);
        }
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f97406e == null) {
            this.f97406e = t;
            this.f97408g.cancel();
            countDown();
        }
    }
}
