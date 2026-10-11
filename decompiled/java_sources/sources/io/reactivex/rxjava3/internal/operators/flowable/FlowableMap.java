package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import java.util.Objects;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableMap<T, U> extends AbstractC14025l3<T, U> {

    /* renamed from: f */
    public final Function<? super T, ? extends U> f95703f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableMap$a */
    /* loaded from: classes10.dex */
    public static final class C17379a<T, U> extends BasicFuseableConditionalSubscriber<T, U> {

        /* renamed from: e */
        public final Function<? super T, ? extends U> f95704e;

        public C17379a(ConditionalSubscriber<? super U> actual, Function<? super T, ? extends U> function) {
            super(actual);
            this.f95704e = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                U apply = this.f95704e.apply(t);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.downstream.onNext(apply);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public U poll() throws Throwable {
            T poll = this.f97404qs.poll();
            if (poll == null) {
                return null;
            }
            U apply = this.f95704e.apply(poll);
            Objects.requireNonNull(apply, "The mapper function returned a null value.");
            return apply;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.done) {
                return true;
            }
            if (this.sourceMode != 0) {
                this.downstream.tryOnNext(null);
                return true;
            }
            try {
                U apply = this.f95704e.apply(t);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                return this.downstream.tryOnNext(apply);
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableMap$b */
    /* loaded from: classes10.dex */
    public static final class C17380b<T, U> extends BasicFuseableSubscriber<T, U> {

        /* renamed from: e */
        public final Function<? super T, ? extends U> f95705e;

        public C17380b(Subscriber<? super U> actual, Function<? super T, ? extends U> mapper) {
            super(actual);
            this.f95705e = mapper;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                U apply = this.f95705e.apply(t);
                Objects.requireNonNull(apply, "The mapper function returned a null value.");
                this.downstream.onNext(apply);
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public U poll() throws Throwable {
            T poll = this.f97405qs.poll();
            if (poll == null) {
                return null;
            }
            U apply = this.f95705e.apply(poll);
            Objects.requireNonNull(apply, "The mapper function returned a null value.");
            return apply;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public FlowableMap(Flowable<T> source, Function<? super T, ? extends U> mapper) {
        super(source);
        this.f95703f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super U> s) {
        if (s instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new C17379a((ConditionalSubscriber) s, this.f95703f));
        } else {
            this.source.subscribe((FlowableSubscriber) new C17380b(s, this.f95703f));
        }
    }
}
