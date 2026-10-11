package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Supplier;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableOnBackpressureReduceWith<T, R> extends AbstractC14025l3<T, R> {

    /* renamed from: f */
    public final BiFunction<R, ? super T, R> f95730f;

    /* renamed from: g */
    public final Supplier<R> f95731g;

    /* loaded from: classes10.dex */
    public static final class BackpressureReduceWithSubscriber<T, R> extends AbstractBackpressureThrottlingSubscriber<T, R> {
        private static final long serialVersionUID = 8255923705960622424L;
        final BiFunction<R, ? super T, R> reducer;
        final Supplier<R> supplier;

        public BackpressureReduceWithSubscriber(@NonNull Subscriber<? super R> downstream, @NonNull Supplier<R> supplier, @NonNull BiFunction<R, ? super T, R> reducer) {
            super(downstream);
            this.reducer = reducer;
            this.supplier = supplier;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.AbstractBackpressureThrottlingSubscriber, org.reactivestreams.Subscriber
        public void onNext(T t) {
            R r = this.current.get();
            if (r != null) {
                r = this.current.getAndSet(null);
            }
            try {
                if (r == null) {
                    AtomicReference<R> atomicReference = this.current;
                    BiFunction<R, ? super T, R> biFunction = this.reducer;
                    R r2 = this.supplier.get();
                    Objects.requireNonNull(r2, "The supplier returned a null value");
                    Object apply = biFunction.apply(r2, t);
                    Objects.requireNonNull(apply, "The reducer returned a null value");
                    atomicReference.lazySet(apply);
                } else {
                    AtomicReference<R> atomicReference2 = this.current;
                    Object apply2 = this.reducer.apply(r, t);
                    Objects.requireNonNull(apply2, "The reducer returned a null value");
                    atomicReference2.lazySet(apply2);
                }
                drain();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.upstream.cancel();
                onError(th);
            }
        }
    }

    public FlowableOnBackpressureReduceWith(@NonNull Flowable<T> source, @NonNull Supplier<R> supplier, @NonNull BiFunction<R, ? super T, R> reducer) {
        super(source);
        this.f95730f = reducer;
        this.f95731g = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(@NonNull Subscriber<? super R> s) {
        this.source.subscribe((FlowableSubscriber) new BackpressureReduceWithSubscriber(s, this.f95731g, this.f95730f));
    }
}
