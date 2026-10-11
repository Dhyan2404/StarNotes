package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableTakeUntilPredicate<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Predicate<? super T> f95901f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableTakeUntilPredicate$a */
    /* loaded from: classes10.dex */
    public static final class C17402a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95902e;

        /* renamed from: f */
        public final Predicate<? super T> f95903f;

        /* renamed from: g */
        public Subscription f95904g;

        /* renamed from: h */
        public boolean f95905h;

        public C17402a(Subscriber<? super T> actual, Predicate<? super T> predicate) {
            this.f95902e = actual;
            this.f95903f = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95904g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95905h) {
                return;
            }
            this.f95905h = true;
            this.f95902e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95905h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95905h = true;
                this.f95902e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95905h) {
                return;
            }
            this.f95902e.onNext(t);
            try {
                if (this.f95903f.test(t)) {
                    this.f95905h = true;
                    this.f95904g.cancel();
                    this.f95902e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95904g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95904g, s)) {
                this.f95904g = s;
                this.f95902e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95904g.request(n);
        }
    }

    public FlowableTakeUntilPredicate(Flowable<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f95901f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17402a(s, this.f95901f));
    }
}
