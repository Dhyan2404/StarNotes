package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSwitchIfEmpty<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Publisher<? extends T> f95882f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableSwitchIfEmpty$a */
    /* loaded from: classes10.dex */
    public static final class C17401a<T> implements FlowableSubscriber<T> {

        /* renamed from: e */
        public final Subscriber<? super T> f95883e;

        /* renamed from: f */
        public final Publisher<? extends T> f95884f;

        /* renamed from: h */
        public boolean f95886h = true;

        /* renamed from: g */
        public final SubscriptionArbiter f95885g = new SubscriptionArbiter(false);

        public C17401a(Subscriber<? super T> actual, Publisher<? extends T> other) {
            this.f95883e = actual;
            this.f95884f = other;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f95886h) {
                this.f95883e.onComplete();
            } else {
                this.f95886h = false;
                this.f95884f.subscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95883e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95886h) {
                this.f95886h = false;
            }
            this.f95883e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            this.f95885g.setSubscription(s);
        }
    }

    public FlowableSwitchIfEmpty(Flowable<T> source, Publisher<? extends T> other) {
        super(source);
        this.f95882f = other;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        C17401a c17401a = new C17401a(s, this.f95882f);
        s.onSubscribe(c17401a.f95885g);
        this.source.subscribe((FlowableSubscriber) c17401a);
    }
}
