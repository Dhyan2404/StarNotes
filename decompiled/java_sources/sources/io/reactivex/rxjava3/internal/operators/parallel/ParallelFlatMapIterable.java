package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFlattenIterable;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class ParallelFlatMapIterable<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97042a;

    /* renamed from: b */
    public final Function<? super T, ? extends Iterable<? extends R>> f97043b;

    /* renamed from: c */
    public final int f97044c;

    public ParallelFlatMapIterable(ParallelFlowable<T> source, Function<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
        this.f97042a = source;
        this.f97043b = mapper;
        this.f97044c = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97042a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        Subscriber<?>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr[i] = FlowableFlattenIterable.subscribe(onSubscribe[i], this.f97043b, this.f97044c);
            }
            this.f97042a.subscribe(subscriberArr);
        }
    }
}
