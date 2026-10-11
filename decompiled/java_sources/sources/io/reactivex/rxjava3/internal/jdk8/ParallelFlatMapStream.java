package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import java.util.stream.Stream;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class ParallelFlatMapStream<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f95128a;

    /* renamed from: b */
    public final Function<? super T, ? extends Stream<? extends R>> f95129b;

    /* renamed from: c */
    public final int f95130c;

    public ParallelFlatMapStream(ParallelFlowable<T> source, Function<? super T, ? extends Stream<? extends R>> mapper, int prefetch) {
        this.f95128a = source;
        this.f95129b = mapper;
        this.f95130c = prefetch;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f95128a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        if (validate(subscribers)) {
            int length = subscribers.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr[i] = FlowableFlatMapStream.subscribe(subscribers[i], this.f95129b, this.f95130c);
            }
            this.f95128a.subscribe(subscriberArr);
        }
    }
}
