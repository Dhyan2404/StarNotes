package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableOnBackpressureReduce<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final BiFunction<T, T, T> f95729f;

    /* loaded from: classes10.dex */
    public static final class BackpressureReduceSubscriber<T> extends AbstractBackpressureThrottlingSubscriber<T, T> {
        private static final long serialVersionUID = 821363947659780367L;
        final BiFunction<T, T, T> reducer;

        public BackpressureReduceSubscriber(@NonNull Subscriber<? super T> downstream, @NonNull BiFunction<T, T, T> reducer) {
            super(downstream);
            this.reducer = reducer;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.AbstractBackpressureThrottlingSubscriber, org.reactivestreams.Subscriber
        public void onNext(T t) {
            Object obj = this.current.get();
            if (obj != null) {
                obj = this.current.getAndSet(null);
            }
            if (obj == null) {
                this.current.lazySet(t);
            } else {
                try {
                    AtomicReference<R> atomicReference = this.current;
                    Object apply = this.reducer.apply(obj, t);
                    Objects.requireNonNull(apply, "The reducer returned a null value");
                    atomicReference.lazySet(apply);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.upstream.cancel();
                    onError(th);
                    return;
                }
            }
            drain();
        }
    }

    public FlowableOnBackpressureReduce(@NonNull Flowable<T> source, @NonNull BiFunction<T, T, T> reducer) {
        super(source);
        this.f95729f = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(@NonNull Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new BackpressureReduceSubscriber(s, this.f95729f));
    }
}
