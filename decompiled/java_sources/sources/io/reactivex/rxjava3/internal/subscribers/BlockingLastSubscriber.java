package io.reactivex.rxjava3.internal.subscribers;

/* loaded from: classes10.dex */
public final class BlockingLastSubscriber<T> extends BlockingBaseSubscriber<T> {
    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        this.f97406e = null;
        this.f97407f = t;
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        this.f97406e = t;
    }
}
