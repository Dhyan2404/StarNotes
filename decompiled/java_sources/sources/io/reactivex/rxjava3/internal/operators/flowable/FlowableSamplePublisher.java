package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.subscribers.SerializedSubscriber;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSamplePublisher<T> extends Flowable<T> {

    /* renamed from: f */
    public final Publisher<T> f95817f;

    /* renamed from: g */
    public final Publisher<?> f95818g;

    /* renamed from: h */
    public final boolean f95819h;

    /* loaded from: classes10.dex */
    public static final class SampleMainEmitLast<T> extends SamplePublisherSubscriber<T> {
        private static final long serialVersionUID = -3029755663834015785L;
        volatile boolean done;
        final AtomicInteger wip;

        public SampleMainEmitLast(Subscriber<? super T> actual, Publisher<?> other) {
            super(actual, other);
            this.wip = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        public void completion() {
            this.done = true;
            if (this.wip.getAndIncrement() == 0) {
                emit();
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        public void run() {
            if (this.wip.getAndIncrement() != 0) {
                return;
            }
            do {
                boolean z = this.done;
                emit();
                if (z) {
                    this.downstream.onComplete();
                    return;
                }
            } while (this.wip.decrementAndGet() != 0);
        }
    }

    /* loaded from: classes10.dex */
    public static final class SampleMainNoLast<T> extends SamplePublisherSubscriber<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        public SampleMainNoLast(Subscriber<? super T> actual, Publisher<?> other) {
            super(actual, other);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        public void completion() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.FlowableSamplePublisher.SamplePublisherSubscriber
        public void run() {
            emit();
        }
    }

    /* loaded from: classes10.dex */
    public static abstract class SamplePublisherSubscriber<T> extends AtomicReference<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3517602651313910099L;
        final Subscriber<? super T> downstream;
        final Publisher<?> sampler;
        Subscription upstream;
        final AtomicLong requested = new AtomicLong();
        final AtomicReference<Subscription> other = new AtomicReference<>();

        public SamplePublisherSubscriber(Subscriber<? super T> actual, Publisher<?> other) {
            this.downstream = actual;
            this.sampler = other;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this.other);
            this.upstream.cancel();
        }

        public void complete() {
            this.upstream.cancel();
            completion();
        }

        public abstract void completion();

        public void emit() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(andSet);
                    BackpressureHelper.produced(this.requested, 1L);
                } else {
                    cancel();
                    this.downstream.onError(MissingBackpressureException.createDefault());
                }
            }
        }

        public void error(Throwable e) {
            this.upstream.cancel();
            this.downstream.onError(e);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            SubscriptionHelper.cancel(this.other);
            completion();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            SubscriptionHelper.cancel(this.other);
            this.downstream.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.upstream, s)) {
                this.upstream = s;
                this.downstream.onSubscribe(this);
                if (this.other.get() == null) {
                    this.sampler.subscribe(new C17392a(this));
                    s.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this.requested, n);
            }
        }

        public abstract void run();

        public void setOther(Subscription o) {
            SubscriptionHelper.setOnce(this.other, o, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableSamplePublisher$a */
    /* loaded from: classes10.dex */
    public static final class C17392a<T> implements FlowableSubscriber<Object> {

        /* renamed from: e */
        public final SamplePublisherSubscriber<T> f95820e;

        public C17392a(SamplePublisherSubscriber<T> parent) {
            this.f95820e = parent;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95820e.complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95820e.error(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object t) {
            this.f95820e.run();
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            this.f95820e.setOther(s);
        }
    }

    public FlowableSamplePublisher(Publisher<T> source, Publisher<?> other, boolean emitLast) {
        this.f95817f = source;
        this.f95818g = other;
        this.f95819h = emitLast;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(s);
        if (this.f95819h) {
            this.f95817f.subscribe(new SampleMainEmitLast(serializedSubscriber, this.f95818g));
        } else {
            this.f95817f.subscribe(new SampleMainNoLast(serializedSubscriber, this.f95818g));
        }
    }
}
