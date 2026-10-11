package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.Optional;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelMapOptional<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f95131a;

    /* renamed from: b */
    public final Function<? super T, Optional<? extends R>> f95132b;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ParallelMapOptional$a */
    /* loaded from: classes10.dex */
    public static final class C17296a<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final ConditionalSubscriber<? super R> f95133e;

        /* renamed from: f */
        public final Function<? super T, Optional<? extends R>> f95134f;

        /* renamed from: g */
        public Subscription f95135g;

        /* renamed from: h */
        public boolean f95136h;

        public C17296a(ConditionalSubscriber<? super R> actual, Function<? super T, Optional<? extends R>> mapper) {
            this.f95133e = actual;
            this.f95134f = mapper;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95135g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95136h) {
                return;
            }
            this.f95136h = true;
            this.f95133e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95136h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95136h = true;
                this.f95133e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.f95135g.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95135g, s)) {
                this.f95135g = s;
                this.f95133e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95135g.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f95136h) {
                return false;
            }
            try {
                Optional<? extends R> apply = this.f95134f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                Optional<? extends R> optional = apply;
                return optional.isPresent() && this.f95133e.tryOnNext(optional.get());
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ParallelMapOptional$b */
    /* loaded from: classes10.dex */
    public static final class C17297b<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super R> f95137e;

        /* renamed from: f */
        public final Function<? super T, Optional<? extends R>> f95138f;

        /* renamed from: g */
        public Subscription f95139g;

        /* renamed from: h */
        public boolean f95140h;

        public C17297b(Subscriber<? super R> actual, Function<? super T, Optional<? extends R>> mapper) {
            this.f95137e = actual;
            this.f95138f = mapper;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95139g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95140h) {
                return;
            }
            this.f95140h = true;
            this.f95137e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95140h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95140h = true;
                this.f95137e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.f95139g.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95139g, s)) {
                this.f95139g = s;
                this.f95137e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95139g.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f95140h) {
                return true;
            }
            try {
                Optional<? extends R> apply = this.f95138f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (!optional.isPresent()) {
                    return false;
                }
                this.f95137e.onNext(optional.get());
                return true;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
                return true;
            }
        }
    }

    public ParallelMapOptional(ParallelFlowable<T> source, Function<? super T, Optional<? extends R>> mapper) {
        this.f95131a = source;
        this.f95132b = mapper;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f95131a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        if (validate(subscribers)) {
            int length = subscribers.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super R> subscriber = subscribers[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr[i] = new C17296a((ConditionalSubscriber) subscriber, this.f95132b);
                } else {
                    subscriberArr[i] = new C17297b(subscriber, this.f95132b);
                }
            }
            this.f95131a.subscribe(subscriberArr);
        }
    }
}
