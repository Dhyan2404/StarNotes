package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFlatMapSingle;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFlatMapSinglePublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f95608f;

    /* renamed from: g */
    public final Function<? super T, ? extends SingleSource<? extends R>> f95609g;

    /* renamed from: h */
    public final boolean f95610h;

    /* renamed from: i */
    public final int f95611i;

    public FlowableFlatMapSinglePublisher(Publisher<T> source, Function<? super T, ? extends SingleSource<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        this.f95608f = source;
        this.f95609g = mapper;
        this.f95610h = delayError;
        this.f95611i = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f95608f.subscribe(new FlowableFlatMapSingle.FlatMapSingleSubscriber(s, this.f95609g, this.f95610h, this.f95611i));
    }
}
