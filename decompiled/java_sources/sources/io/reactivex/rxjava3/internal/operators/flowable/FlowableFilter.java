package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.operators.QueueSubscription;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFilter<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Predicate<? super T> f95583f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableFilter$a */
    /* loaded from: classes10.dex */
    public static final class C17355a<T> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: e */
        public final Predicate<? super T> f95584e;

        public C17355a(ConditionalSubscriber<? super T> actual, Predicate<? super T> filter) {
            super(actual);
            this.f95584e = filter;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            QueueSubscription<T> queueSubscription = this.f97404qs;
            Predicate<? super T> predicate = this.f95584e;
            while (true) {
                T poll = queueSubscription.poll();
                if (poll == null) {
                    return null;
                }
                if (predicate.test(poll)) {
                    return poll;
                }
                if (this.sourceMode == 2) {
                    queueSubscription.request(1L);
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
                return false;
            }
            if (this.sourceMode != 0) {
                return this.downstream.tryOnNext(null);
            }
            try {
                return this.f95584e.test(t) && this.downstream.tryOnNext(t);
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableFilter$b */
    /* loaded from: classes10.dex */
    public static final class C17356b<T> extends BasicFuseableSubscriber<T, T> implements ConditionalSubscriber<T> {

        /* renamed from: e */
        public final Predicate<? super T> f95585e;

        public C17356b(Subscriber<? super T> actual, Predicate<? super T> filter) {
            super(actual);
            this.f95585e = filter;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.request(1L);
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            QueueSubscription<T> queueSubscription = this.f97405qs;
            Predicate<? super T> predicate = this.f95585e;
            while (true) {
                T poll = queueSubscription.poll();
                if (poll == null) {
                    return null;
                }
                if (predicate.test(poll)) {
                    return poll;
                }
                if (this.sourceMode == 2) {
                    queueSubscription.request(1L);
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
                return false;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return true;
            }
            try {
                boolean test = this.f95585e.test(t);
                if (test) {
                    this.downstream.onNext(t);
                }
                return test;
            } catch (Throwable th) {
                fail(th);
                return true;
            }
        }
    }

    public FlowableFilter(Flowable<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f95583f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        if (s instanceof ConditionalSubscriber) {
            this.source.subscribe((FlowableSubscriber) new C17355a((ConditionalSubscriber) s, this.f95583f));
        } else {
            this.source.subscribe((FlowableSubscriber) new C17356b(s, this.f95583f));
        }
    }
}
