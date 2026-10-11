package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFlatMapMaybe;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFlatMapMaybePublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f95601f;

    /* renamed from: g */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f95602g;

    /* renamed from: h */
    public final boolean f95603h;

    /* renamed from: i */
    public final int f95604i;

    public FlowableFlatMapMaybePublisher(Publisher<T> source, Function<? super T, ? extends MaybeSource<? extends R>> mapper, boolean delayError, int maxConcurrency) {
        this.f95601f = source;
        this.f95602g = mapper;
        this.f95603h = delayError;
        this.f95604i = maxConcurrency;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f95601f.subscribe(new FlowableFlatMapMaybe.FlatMapMaybeSubscriber(s, this.f95602g, this.f95603h, this.f95604i));
    }
}
