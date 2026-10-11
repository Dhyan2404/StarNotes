package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import org.reactivestreams.Publisher;

/* loaded from: classes10.dex */
public final class FlowableElementAtMaybePublisher<T> extends Maybe<T> {

    /* renamed from: e */
    public final Publisher<T> f95571e;

    /* renamed from: f */
    public final long f95572f;

    public FlowableElementAtMaybePublisher(Publisher<T> source, long index) {
        this.f95571e = source;
        this.f95572f = index;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f95571e.subscribe(new FlowableElementAtMaybe.C17353a(observer, this.f95572f));
    }
}
