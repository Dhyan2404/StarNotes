package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableOnErrorComplete<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Predicate<? super Throwable> f95732f;

    /* loaded from: classes10.dex */
    public static final class OnErrorCompleteSubscriber<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95733e;

        /* renamed from: f */
        public final Predicate<? super Throwable> f95734f;

        /* renamed from: g */
        public Subscription f95735g;

        public OnErrorCompleteSubscriber(Subscriber<? super T> actual, Predicate<? super Throwable> predicate) {
            this.f95733e = actual;
            this.f95734f = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95735g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95733e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            try {
                if (this.f95734f.test(e)) {
                    this.f95733e.onComplete();
                } else {
                    this.f95733e.onError(e);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95733e.onError(new CompositeException(e, th));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T value) {
            this.f95733e.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95735g, s)) {
                this.f95735g = s;
                this.f95733e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95735g.request(n);
        }
    }

    public FlowableOnErrorComplete(Flowable<T> source, Predicate<? super Throwable> predicate) {
        super(source);
        this.f95732f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> observer) {
        this.source.subscribe((FlowableSubscriber) new OnErrorCompleteSubscriber(observer, this.f95732f));
    }
}
