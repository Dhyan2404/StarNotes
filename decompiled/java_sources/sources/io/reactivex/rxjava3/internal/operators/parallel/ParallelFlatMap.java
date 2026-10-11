package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFlatMap;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class ParallelFlatMap<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97037a;

    /* renamed from: b */
    public final Function<? super T, ? extends Publisher<? extends R>> f97038b;

    /* renamed from: c */
    public final boolean f97039c;

    /* renamed from: d */
    public final int f97040d;

    /* renamed from: e */
    public final int f97041e;

    public ParallelFlatMap(ParallelFlowable<T> source, Function<? super T, ? extends Publisher<? extends R>> mapper, boolean delayError, int maxConcurrency, int prefetch) {
        this.f97037a = source;
        this.f97038b = mapper;
        this.f97039c = delayError;
        this.f97040d = maxConcurrency;
        this.f97041e = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97037a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        Subscriber<?>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr[i] = FlowableFlatMap.subscribe(onSubscribe[i], this.f97038b, this.f97039c, this.f97040d, this.f97041e);
            }
            this.f97037a.subscribe(subscriberArr);
        }
    }
}
