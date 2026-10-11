package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.QueueSubscription;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableIgnoreElements<T> extends AbstractC14025l3<T, T> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableIgnoreElements$a */
    /* loaded from: classes10.dex */
    public static final class C17362a<T> implements FlowableSubscriber<T>, QueueSubscription<T> {

        /* renamed from: e */
        public final Subscriber<? super T> f95646e;

        /* renamed from: f */
        public Subscription f95647f;

        public C17362a(Subscriber<? super T> downstream) {
            this.f95646e = downstream;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95647f.cancel();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean offer(T e) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95646e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95646e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95647f, s)) {
                this.f95647f = s;
                this.f95646e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() {
            return null;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return mode & 2;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean offer(T v1, T v2) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }

    public FlowableIgnoreElements(Flowable<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(final Subscriber<? super T> t) {
        this.source.subscribe((FlowableSubscriber) new C17362a(t));
    }
}
