package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import java.util.Objects;
import java.util.Optional;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableMapOptional<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final Flowable<T> f95079f;

    /* renamed from: g */
    public final Function<? super T, Optional<? extends R>> f95080g;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.FlowableMapOptional$a */
    /* loaded from: classes10.dex */
    public static final class C17289a<T, R> extends BasicFuseableConditionalSubscriber<T, R> {

        /* renamed from: e */
        public final Function<? super T, Optional<? extends R>> f95081e;

        public C17289a(ConditionalSubscriber<? super R> downstream, Function<? super T, Optional<? extends R>> mapper) {
            super(downstream);
            this.f95081e = mapper;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public R poll() throws Throwable {
            while (true) {
                T poll = this.f97404qs.poll();
                if (poll == null) {
                    return null;
                }
                Optional<? extends R> apply = this.f95081e.apply(poll);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    return optional.get();
                }
                if (this.sourceMode == 2) {
                    this.f97404qs.request(1L);
                }
            }
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
                this.downstream.onNext(null);
                return true;
            }
            try {
                Optional<? extends R> apply = this.f95081e.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    return this.downstream.tryOnNext(optional.get());
                }
                return false;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.FlowableMapOptional$b */
    /* loaded from: classes10.dex */
    public static final class C17290b<T, R> extends BasicFuseableSubscriber<T, R> implements ConditionalSubscriber<T> {

        /* renamed from: e */
        public final Function<? super T, Optional<? extends R>> f95082e;

        public C17290b(Subscriber<? super R> downstream, Function<? super T, Optional<? extends R>> mapper) {
            super(downstream);
            this.f95082e = mapper;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public R poll() throws Throwable {
            while (true) {
                T poll = this.f97405qs.poll();
                if (poll == null) {
                    return null;
                }
                Optional<? extends R> apply = this.f95082e.apply(poll);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    return optional.get();
                }
                if (this.sourceMode == 2) {
                    this.f97405qs.request(1L);
                }
            }
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
                this.downstream.onNext(null);
                return true;
            }
            try {
                Optional<? extends R> apply = this.f95082e.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (!optional.isPresent()) {
                    return false;
                }
                this.downstream.onNext(optional.get());
                return true;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    public FlowableMapOptional(Flowable<T> source, Function<? super T, Optional<? extends R>> mapper) {
        this.f95079f = source;
        this.f95080g = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> s) {
        if (s instanceof ConditionalSubscriber) {
            this.f95079f.subscribe((FlowableSubscriber) new C17289a((ConditionalSubscriber) s, this.f95080g));
        } else {
            this.f95079f.subscribe((FlowableSubscriber) new C17290b(s, this.f95080g));
        }
    }
}
