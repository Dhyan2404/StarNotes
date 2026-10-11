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
public final class FlowableTakeWhile<T> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Predicate<? super T> f95906f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableTakeWhile$a */
    /* loaded from: classes10.dex */
    public static final class C17403a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95907e;

        /* renamed from: f */
        public final Predicate<? super T> f95908f;

        /* renamed from: g */
        public Subscription f95909g;

        /* renamed from: h */
        public boolean f95910h;

        public C17403a(Subscriber<? super T> actual, Predicate<? super T> predicate) {
            this.f95907e = actual;
            this.f95908f = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95909g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95910h) {
                return;
            }
            this.f95910h = true;
            this.f95907e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95910h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95910h = true;
                this.f95907e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95910h) {
                return;
            }
            try {
                if (this.f95908f.test(t)) {
                    this.f95907e.onNext(t);
                    return;
                }
                this.f95910h = true;
                this.f95909g.cancel();
                this.f95907e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95909g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95909g, s)) {
                this.f95909g = s;
                this.f95907e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95909g.request(n);
        }
    }

    public FlowableTakeWhile(Flowable<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f95906f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.source.subscribe((FlowableSubscriber) new C17403a(s, this.f95906f));
    }
}
