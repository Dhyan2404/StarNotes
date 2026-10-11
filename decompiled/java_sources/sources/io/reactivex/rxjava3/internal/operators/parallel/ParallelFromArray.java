package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class ParallelFromArray<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    public final Publisher<T>[] f97045a;

    public ParallelFromArray(Publisher<T>[] sources) {
        this.f97045a = sources;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97045a.length;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super T>[] subscribers) {
        Subscriber<? super T>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            for (int i = 0; i < length; i++) {
                this.f97045a[i].subscribe(onSubscribe[i]);
            }
        }
    }
}
