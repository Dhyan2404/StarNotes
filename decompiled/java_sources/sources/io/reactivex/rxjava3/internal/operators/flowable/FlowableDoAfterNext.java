package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableDoAfterNext<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Consumer<? super T> f95535f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDoAfterNext$a */
    /* loaded from: classes10.dex */
    public static final class C17348a<T> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: e */
        public final Consumer<? super T> f95536e;

        public C17348a(ConditionalSubscriber<? super T> actual, Consumer<? super T> onAfterNext) {
            super(actual);
            this.f95536e = onAfterNext;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
            if (this.sourceMode == 0) {
                try {
                    this.f95536e.accept(t);
                } catch (Throwable th) {
                    fail(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            T poll = this.f97404qs.poll();
            if (poll != null) {
                this.f95536e.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            boolean tryOnNext = this.downstream.tryOnNext(t);
            try {
                this.f95536e.accept(t);
            } catch (Throwable th) {
                fail(th);
            }
            return tryOnNext;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDoAfterNext$b */
    /* loaded from: classes10.dex */
    public static final class C17349b<T> extends BasicFuseableSubscriber<T, T> {

        /* renamed from: e */
        public final Consumer<? super T> f95537e;

        public C17349b(Subscriber<? super T> actual, Consumer<? super T> onAfterNext) {
            super(actual);
            this.f95537e = onAfterNext;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            this.downstream.onNext(t);
            if (this.sourceMode == 0) {
                try {
                    this.f95537e.accept(t);
                } catch (Throwable th) {
                    fail(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            T poll = this.f97405qs.poll();
            if (poll != null) {
                this.f95537e.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public FlowableDoAfterNext(Flowable<T> source, Consumer<? super T> onAfterNext) {
        super(source);
        this.f95535f = onAfterNext;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        if (s instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new C17348a((ConditionalSubscriber) s, this.f95535f));
        } else {
            this.source.subscribe((FlowableSubscriber) new C17349b(s, this.f95535f));
        }
    }
}
