package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.EmptyComponent;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableDetach<T> extends AbstractC14025l3<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDetach$a */
    /* loaded from: classes10.dex */
    public static final class C17344a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public Subscriber<? super T> f95519e;

        /* renamed from: f */
        public Subscription f95520f;

        public C17344a(Subscriber<? super T> downstream) {
            this.f95519e = downstream;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Subscription subscription = this.f95520f;
            this.f95520f = EmptyComponent.INSTANCE;
            this.f95519e = EmptyComponent.asSubscriber();
            subscription.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscriber<? super T> subscriber = this.f95519e;
            this.f95520f = EmptyComponent.INSTANCE;
            this.f95519e = EmptyComponent.asSubscriber();
            subscriber.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            Subscriber<? super T> subscriber = this.f95519e;
            this.f95520f = EmptyComponent.INSTANCE;
            this.f95519e = EmptyComponent.asSubscriber();
            subscriber.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f95519e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95520f, s)) {
                this.f95520f = s;
                this.f95519e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95520f.request(n);
        }
    }

    public FlowableDetach(Flowable<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17344a(s));
    }
}
