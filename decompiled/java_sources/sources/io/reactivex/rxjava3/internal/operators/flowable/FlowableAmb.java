package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableAmb<T> extends Flowable<T> {

    /* renamed from: f */
    public final Publisher<? extends T>[] f95355f;

    /* renamed from: g */
    public final Iterable<? extends Publisher<? extends T>> f95356g;

    /* loaded from: classes10.dex */
    public static final class AmbInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -1185974347409665484L;
        final Subscriber<? super T> downstream;
        final int index;
        final AtomicLong missedRequested = new AtomicLong();
        final C17325a<T> parent;
        boolean won;

        public AmbInnerSubscriber(C17325a<T> parent, int index, Subscriber<? super T> downstream) {
            this.parent = parent;
            this.index = index;
            this.downstream = downstream;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.won) {
                this.downstream.onComplete();
            } else if (!this.parent.m61156b(this.index)) {
                get().cancel();
            } else {
                this.won = true;
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.won) {
                this.downstream.onError(t);
            } else if (this.parent.m61156b(this.index)) {
                this.won = true;
                this.downstream.onError(t);
            } else {
                get().cancel();
                RxJavaPlugins.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.won) {
                this.downstream.onNext(t);
            } else if (!this.parent.m61156b(this.index)) {
                get().cancel();
            } else {
                this.won = true;
                this.downstream.onNext(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            SubscriptionHelper.deferredSetOnce(this, this.missedRequested, s);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            SubscriptionHelper.deferredRequest(this, this.missedRequested, n);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableAmb$a */
    /* loaded from: classes10.dex */
    public static final class C17325a<T> implements Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95357e;

        /* renamed from: f */
        public final AmbInnerSubscriber<T>[] f95358f;

        /* renamed from: g */
        public final AtomicInteger f95359g = new AtomicInteger();

        public C17325a(Subscriber<? super T> actual, int count) {
            this.f95357e = actual;
            this.f95358f = new AmbInnerSubscriber[count];
        }

        /* renamed from: a */
        public void m61155a(Publisher<? extends T>[] sources) {
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.f95358f;
            int length = ambInnerSubscriberArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                ambInnerSubscriberArr[i] = new AmbInnerSubscriber<>(this, i2, this.f95357e);
                i = i2;
            }
            this.f95359g.lazySet(0);
            this.f95357e.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.f95359g.get() == 0; i3++) {
                sources[i3].subscribe(ambInnerSubscriberArr[i3]);
            }
        }

        /* renamed from: b */
        public boolean m61156b(int index) {
            int i = 0;
            if (this.f95359g.get() != 0 || !this.f95359g.compareAndSet(0, index)) {
                return false;
            }
            AmbInnerSubscriber<T>[] ambInnerSubscriberArr = this.f95358f;
            int length = ambInnerSubscriberArr.length;
            while (i < length) {
                int i2 = i + 1;
                if (i2 != index) {
                    ambInnerSubscriberArr[i].cancel();
                }
                i = i2;
            }
            return true;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.f95359g.get() != -1) {
                this.f95359g.lazySet(-1);
                for (AmbInnerSubscriber<T> ambInnerSubscriber : this.f95358f) {
                    ambInnerSubscriber.cancel();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                int i = this.f95359g.get();
                if (i > 0) {
                    this.f95358f[i - 1].request(n);
                    return;
                }
                if (i == 0) {
                    for (AmbInnerSubscriber<T> ambInnerSubscriber : this.f95358f) {
                        ambInnerSubscriber.request(n);
                    }
                }
            }
        }
    }

    public FlowableAmb(Publisher<? extends T>[] sources, Iterable<? extends Publisher<? extends T>> sourcesIterable) {
        this.f95355f = sources;
        this.f95356g = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        int length;
        Publisher<? extends T>[] publisherArr = this.f95355f;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            try {
                length = 0;
                for (Publisher<? extends T> publisher : this.f95356g) {
                    if (publisher == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), s);
                        return;
                    }
                    if (length == publisherArr.length) {
                        Publisher<? extends T>[] publisherArr2 = new Publisher[(length >> 2) + length];
                        System.arraycopy(publisherArr, 0, publisherArr2, 0, length);
                        publisherArr = publisherArr2;
                    }
                    int i = length + 1;
                    publisherArr[length] = publisher;
                    length = i;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptySubscription.error(th, s);
                return;
            }
        } else {
            length = publisherArr.length;
        }
        if (length == 0) {
            EmptySubscription.complete(s);
        } else if (length == 1) {
            publisherArr[0].subscribe(s);
        } else {
            new C17325a(s, length).m61155a(publisherArr);
        }
    }
}
