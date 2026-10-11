package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableMap;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableMapPublisher<T, U> extends Flowable<U> {

    /* renamed from: f */
    public final Publisher<T> f95709f;

    /* renamed from: g */
    public final Function<? super T, ? extends U> f95710g;

    public FlowableMapPublisher(Publisher<T> source, Function<? super T, ? extends U> mapper) {
        this.f95709f = source;
        this.f95710g = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super U> s) {
        this.f95709f.subscribe(new FlowableMap.C17380b(s, this.f95710g));
    }
}
