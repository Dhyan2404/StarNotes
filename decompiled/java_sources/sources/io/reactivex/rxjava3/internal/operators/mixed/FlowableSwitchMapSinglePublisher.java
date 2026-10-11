package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.mixed.FlowableSwitchMapSingle;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableSwitchMapSinglePublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Publisher<T> f96255f;

    /* renamed from: g */
    public final Function<? super T, ? extends SingleSource<? extends R>> f96256g;

    /* renamed from: h */
    public final boolean f96257h;

    public FlowableSwitchMapSinglePublisher(Publisher<T> source, Function<? super T, ? extends SingleSource<? extends R>> mapper, boolean delayErrors) {
        this.f96255f = source;
        this.f96256g = mapper;
        this.f96257h = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        this.f96255f.subscribe(new FlowableSwitchMapSingle.SwitchMapSingleSubscriber(s, this.f96256g, this.f96257h));
    }
}
