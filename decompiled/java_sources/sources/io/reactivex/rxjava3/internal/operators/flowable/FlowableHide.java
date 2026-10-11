package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableHide<T> extends AbstractC14025l3<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableHide$a */
    /* loaded from: classes10.dex */
    public static final class C17361a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95644e;

        /* renamed from: f */
        public Subscription f95645f;

        public C17361a(Subscriber<? super T> downstream) {
            this.f95644e = downstream;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95645f.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95644e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95644e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f95644e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95645f, s)) {
                this.f95645f = s;
                this.f95644e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95645f.request(n);
        }
    }

    public FlowableHide(Flowable<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17361a(s));
    }
}
