package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.mixed.FlowableSwitchMapMaybe;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableSwitchMapMaybePublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f96249f;

    /* renamed from: g */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f96250g;

    /* renamed from: h */
    public final boolean f96251h;

    public FlowableSwitchMapMaybePublisher(Publisher<T> source, Function<? super T, ? extends MaybeSource<? extends R>> mapper, boolean delayErrors) {
        this.f96249f = source;
        this.f96250g = mapper;
        this.f96251h = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f96249f.subscribe(new FlowableSwitchMapMaybe.SwitchMapMaybeSubscriber(s, this.f96250g, this.f96251h));
    }
}
