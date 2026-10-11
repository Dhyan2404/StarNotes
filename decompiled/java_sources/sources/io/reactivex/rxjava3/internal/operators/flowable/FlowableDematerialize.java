package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableDematerialize<T, R> extends AbstractC14025l3<T, R> {

    /* renamed from: f */
    public final Function<? super T, ? extends Notification<R>> f95514f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDematerialize$a */
    /* loaded from: classes10.dex */
    public static final class C17343a<T, R> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super R> f95515e;

        /* renamed from: f */
        public final Function<? super T, ? extends Notification<R>> f95516f;

        /* renamed from: g */
        public boolean f95517g;

        /* renamed from: h */
        public Subscription f95518h;

        public C17343a(Subscriber<? super R> downstream, Function<? super T, ? extends Notification<R>> selector) {
            this.f95515e = downstream;
            this.f95516f = selector;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95518h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95517g) {
                return;
            }
            this.f95517g = true;
            this.f95515e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95517g) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95517g = true;
                this.f95515e.onError(t);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T item) {
            if (this.f95517g) {
                if (item instanceof Notification) {
                    Notification notification = (Notification) item;
                    if (notification.isOnError()) {
                        RxJavaPlugins.onError(notification.getError());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                Notification<R> apply = this.f95516f.apply(item);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                Notification<R> notification2 = apply;
                if (notification2.isOnError()) {
                    this.f95518h.cancel();
                    onError(notification2.getError());
                } else if (!notification2.isOnComplete()) {
                    this.f95515e.onNext(notification2.getValue());
                } else {
                    this.f95518h.cancel();
                    onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95518h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95518h, s)) {
                this.f95518h = s;
                this.f95515e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95518h.request(n);
        }
    }

    public FlowableDematerialize(Flowable<T> source, Function<? super T, ? extends Notification<R>> selector) {
        super(source);
        this.f95514f = selector;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> subscriber) {
        this.source.subscribe((FlowableSubscriber) new C17343a(subscriber, this.f95514f));
    }
}
