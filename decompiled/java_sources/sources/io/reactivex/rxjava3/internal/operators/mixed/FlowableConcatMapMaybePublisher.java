package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.mixed.FlowableConcatMapMaybe;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableConcatMapMaybePublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f96220f;

    /* renamed from: g */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f96221g;

    /* renamed from: h */
    public final ErrorMode f96222h;

    /* renamed from: i */
    public final int f96223i;

    public FlowableConcatMapMaybePublisher(Publisher<T> source, Function<? super T, ? extends MaybeSource<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f96220f = source;
        this.f96221g = mapper;
        this.f96222h = errorMode;
        this.f96223i = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f96220f.subscribe(new FlowableConcatMapMaybe.ConcatMapMaybeSubscriber(s, this.f96221g, this.f96223i, this.f96222h));
    }
}
