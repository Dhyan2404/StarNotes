package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableTimeInterval<T> extends AbstractC14025l3<T, Timed<T>> {

    /* renamed from: f */
    public final Scheduler f95920f;

    /* renamed from: g */
    public final TimeUnit f95921g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableTimeInterval$a */
    /* loaded from: classes10.dex */
    public static final class C17404a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super Timed<T>> f95922e;

        /* renamed from: f */
        public final TimeUnit f95923f;

        /* renamed from: g */
        public final Scheduler f95924g;

        /* renamed from: h */
        public Subscription f95925h;

        /* renamed from: i */
        public long f95926i;

        public C17404a(Subscriber<? super Timed<T>> actual, TimeUnit unit, Scheduler scheduler) {
            this.f95922e = actual;
            this.f95924g = scheduler;
            this.f95923f = unit;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95925h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95922e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95922e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long now = this.f95924g.now(this.f95923f);
            long j = this.f95926i;
            this.f95926i = now;
            this.f95922e.onNext(new Timed(t, now - j, this.f95923f));
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95925h, s)) {
                this.f95926i = this.f95924g.now(this.f95923f);
                this.f95925h = s;
                this.f95922e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95925h.request(n);
        }
    }

    public FlowableTimeInterval(Flowable<T> source, TimeUnit unit, Scheduler scheduler) {
        super(source);
        this.f95920f = scheduler;
        this.f95921g = unit;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super Timed<T>> s) {
        this.source.subscribe((FlowableSubscriber) new C17404a(s, this.f95921g, this.f95920f));
    }
}
