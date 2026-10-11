package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.LongConsumer;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableDoOnLifecycle<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Consumer<? super Subscription> f95553f;

    /* renamed from: g */
    public final LongConsumer f95554g;

    /* renamed from: h */
    public final Action f95555h;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDoOnLifecycle$a */
    /* loaded from: classes10.dex */
    public static final class C17352a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95556e;

        /* renamed from: f */
        public final Consumer<? super Subscription> f95557f;

        /* renamed from: g */
        public final LongConsumer f95558g;

        /* renamed from: h */
        public final Action f95559h;

        /* renamed from: i */
        public Subscription f95560i;

        public C17352a(Subscriber<? super T> actual, Consumer<? super Subscription> onSubscribe, LongConsumer onRequest, Action onCancel) {
            this.f95556e = actual;
            this.f95557f = onSubscribe;
            this.f95559h = onCancel;
            this.f95558g = onRequest;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Subscription subscription = this.f95560i;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                this.f95560i = subscriptionHelper;
                try {
                    this.f95559h.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
                subscription.cancel();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95560i != SubscriptionHelper.CANCELLED) {
                this.f95556e.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95560i != SubscriptionHelper.CANCELLED) {
                this.f95556e.onError(t);
            } else {
                RxJavaPlugins.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f95556e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            try {
                this.f95557f.accept(s);
                if (SubscriptionHelper.validate(this.f95560i, s)) {
                    this.f95560i = s;
                    this.f95556e.onSubscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                s.cancel();
                this.f95560i = SubscriptionHelper.CANCELLED;
                EmptySubscription.error(th, this.f95556e);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            try {
                this.f95558g.accept(n);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f95560i.request(n);
        }
    }

    public FlowableDoOnLifecycle(Flowable<T> source, Consumer<? super Subscription> onSubscribe, LongConsumer onRequest, Action onCancel) {
        super(source);
        this.f95553f = onSubscribe;
        this.f95554g = onRequest;
        this.f95555h = onCancel;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17352a(s, this.f95553f, this.f95554g, this.f95555h));
    }
}
