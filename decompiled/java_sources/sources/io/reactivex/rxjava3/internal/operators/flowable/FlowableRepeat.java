package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableRepeat<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final long f95788f;

    /* loaded from: classes10.dex */
    public static final class RepeatSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final Subscriber<? super T> downstream;
        long produced;
        long remaining;

        /* renamed from: sa */
        final SubscriptionArbiter f95789sa;
        final Publisher<? extends T> source;

        public RepeatSubscriber(Subscriber<? super T> actual, long count, SubscriptionArbiter sa, Publisher<? extends T> source) {
            this.downstream = actual;
            this.f95789sa = sa;
            this.source = source;
            this.remaining = count;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j != 0) {
                subscribeNext();
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.downstream.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            this.f95789sa.setSubscription(s);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f95789sa.isCancelled()) {
                    long j = this.produced;
                    if (j != 0) {
                        this.produced = 0L;
                        this.f95789sa.produced(j);
                    }
                    this.source.subscribe(this);
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
        }
    }

    public FlowableRepeat(Flowable<T> source, long count) {
        super(source);
        this.f95788f = count;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        SubscriptionArbiter subscriptionArbiter = new SubscriptionArbiter(false);
        s.onSubscribe(subscriptionArbiter);
        long j = this.f95788f;
        new RepeatSubscriber(s, j != Long.MAX_VALUE ? j - 1 : Long.MAX_VALUE, subscriptionArbiter, this.source).subscribeNext();
    }
}
