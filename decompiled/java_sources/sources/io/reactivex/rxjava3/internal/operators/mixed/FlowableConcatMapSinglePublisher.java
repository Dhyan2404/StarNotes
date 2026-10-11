package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.mixed.FlowableConcatMapSingle;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableConcatMapSinglePublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f96228f;

    /* renamed from: g */
    public final Function<? super T, ? extends SingleSource<? extends R>> f96229g;

    /* renamed from: h */
    public final ErrorMode f96230h;

    /* renamed from: i */
    public final int f96231i;

    public FlowableConcatMapSinglePublisher(Publisher<T> source, Function<? super T, ? extends SingleSource<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f96228f = source;
        this.f96229g = mapper;
        this.f96230h = errorMode;
        this.f96231i = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f96228f.subscribe(new FlowableConcatMapSingle.ConcatMapSingleSubscriber(s, this.f96229g, this.f96231i, this.f96230h));
    }
}
