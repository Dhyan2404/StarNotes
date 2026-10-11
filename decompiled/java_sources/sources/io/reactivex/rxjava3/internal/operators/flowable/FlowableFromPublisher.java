package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFromPublisher<T> extends Flowable<T> {

    /* renamed from: f */
    public final Publisher<? extends T> f95627f;

    public FlowableFromPublisher(Publisher<? extends T> publisher) {
        this.f95627f = publisher;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f95627f.subscribe(s);
    }
}
