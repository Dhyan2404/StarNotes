package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class ParallelConcatMap<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97002a;

    /* renamed from: b */
    public final Function<? super T, ? extends Publisher<? extends R>> f97003b;

    /* renamed from: c */
    public final int f97004c;

    /* renamed from: d */
    public final ErrorMode f97005d;

    public ParallelConcatMap(ParallelFlowable<T> source, Function<? super T, ? extends Publisher<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
        this.f97002a = source;
        Objects.requireNonNull(mapper, "mapper");
        this.f97003b = mapper;
        this.f97004c = prefetch;
        Objects.requireNonNull(errorMode, "errorMode");
        this.f97005d = errorMode;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97002a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        Subscriber<?>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr[i] = FlowableConcatMap.subscribe(onSubscribe[i], this.f97003b, this.f97004c, this.f97005d);
            }
            this.f97002a.subscribe(subscriberArr);
        }
    }
}
