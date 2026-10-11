package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableTake;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableTakePublisher<T> extends Flowable<T> {

    /* renamed from: f */
    public final Publisher<T> f95898f;

    /* renamed from: g */
    public final long f95899g;

    public FlowableTakePublisher(Publisher<T> source, long limit) {
        this.f95898f = source;
        this.f95899g = limit;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f95898f.subscribe(new FlowableTake.TakeSubscriber(s, this.f95899g));
    }
}
