package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class SingleFlatMapPublisher<T, R> extends Flowable<R> {

    /* renamed from: f */
    public final SingleSource<T> f97228f;

    /* renamed from: g */
    public final Function<? super T, ? extends Publisher<? extends R>> f97229g;

    public SingleFlatMapPublisher(SingleSource<T> source, Function<? super T, ? extends Publisher<? extends R>> mapper) {
        this.f97228f = source;
        this.f97229g = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super R> downstream) {
        this.f97228f.subscribe(new SingleFlatMapPublisherObserver(downstream, this.f97229g));
    }

    /* loaded from: classes10.dex */
    public static final class SingleFlatMapPublisherObserver<S, T> extends AtomicLong implements SingleObserver<S>, FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 7759721921468635667L;
        Disposable disposable;
        final Subscriber<? super T> downstream;
        final Function<? super S, ? extends Publisher<? extends T>> mapper;
        final AtomicReference<Subscription> parent = new AtomicReference<>();

        public SingleFlatMapPublisherObserver(Subscriber<? super T> actual, Function<? super S, ? extends Publisher<? extends T>> mapper) {
            this.downstream = actual;
            this.mapper = mapper;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.disposable.dispose();
            SubscriptionHelper.cancel(this.parent);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.downstream.onError(e);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.disposable = d;
            this.downstream.onSubscribe(this);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(S value) {
            try {
                Publisher<? extends T> apply = this.mapper.apply(value);
                Objects.requireNonNull(apply, "the mapper returned a null Publisher");
                Publisher<? extends T> publisher = apply;
                if (this.parent.get() != SubscriptionHelper.CANCELLED) {
                    publisher.subscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            SubscriptionHelper.deferredRequest(this.parent, this, n);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            SubscriptionHelper.deferredSetOnce(this.parent, this, s);
        }
    }
}
