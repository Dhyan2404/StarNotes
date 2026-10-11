package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMapEager;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableConcatMapEagerPublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f95466f;

    /* renamed from: g */
    public final Function<? super T, ? extends Publisher<? extends R>> f95467g;

    /* renamed from: h */
    public final int f95468h;

    /* renamed from: i */
    public final int f95469i;

    /* renamed from: j */
    public final ErrorMode f95470j;

    public FlowableConcatMapEagerPublisher(Publisher<T> source, Function<? super T, ? extends Publisher<? extends R>> mapper, int maxConcurrency, int prefetch, ErrorMode errorMode) {
        this.f95466f = source;
        this.f95467g = mapper;
        this.f95468h = maxConcurrency;
        this.f95469i = prefetch;
        this.f95470j = errorMode;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f95466f.subscribe(new FlowableConcatMapEager.ConcatMapEagerDelayErrorSubscriber(s, this.f95467g, this.f95468h, this.f95469i, this.f95470j));
    }
}
