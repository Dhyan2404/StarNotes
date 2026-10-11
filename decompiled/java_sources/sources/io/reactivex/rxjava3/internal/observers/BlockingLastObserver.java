package io.reactivex.rxjava3.internal.observers;

/* loaded from: classes10.dex */
public final class BlockingLastObserver<T> extends BlockingBaseObserver<T> {
    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        this.f95168e = null;
        this.f95169f = t;
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        this.f95168e = t;
    }
}
