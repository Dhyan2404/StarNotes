package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSkipWhile<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Predicate<? super T> f95873f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableSkipWhile$a */
    /* loaded from: classes10.dex */
    public static final class C17399a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95874e;

        /* renamed from: f */
        public final Predicate<? super T> f95875f;

        /* renamed from: g */
        public Subscription f95876g;

        /* renamed from: h */
        public boolean f95877h;

        public C17399a(Subscriber<? super T> actual, Predicate<? super T> predicate) {
            this.f95874e = actual;
            this.f95875f = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95876g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95874e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95874e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95877h) {
                this.f95874e.onNext(t);
                return;
            }
            try {
                if (this.f95875f.test(t)) {
                    this.f95876g.request(1L);
                } else {
                    this.f95877h = true;
                    this.f95874e.onNext(t);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95876g.cancel();
                this.f95874e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95876g, s)) {
                this.f95876g = s;
                this.f95874e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95876g.request(n);
        }
    }

    public FlowableSkipWhile(Flowable<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f95873f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17399a(s, this.f95873f));
    }
}
