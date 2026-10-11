package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSkip<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final long f95862f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableSkip$a */
    /* loaded from: classes10.dex */
    public static final class C17398a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95863e;

        /* renamed from: f */
        public long f95864f;

        /* renamed from: g */
        public Subscription f95865g;

        public C17398a(Subscriber<? super T> actual, long n) {
            this.f95863e = actual;
            this.f95864f = n;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95865g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95863e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95863e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f95864f;
            if (j != 0) {
                this.f95864f = j - 1;
            } else {
                this.f95863e.onNext(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95865g, s)) {
                long j = this.f95864f;
                this.f95865g = s;
                this.f95863e.onSubscribe(this);
                s.request(j);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95865g.request(n);
        }
    }

    public FlowableSkip(Flowable<T> source, long n) {
        super(source);
        this.f95862f = n;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17398a(s, this.f95862f));
    }
}
