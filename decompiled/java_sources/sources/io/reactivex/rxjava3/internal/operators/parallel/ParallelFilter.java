package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelFilter<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97020a;

    /* renamed from: b */
    public final Predicate<? super T> f97021b;

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilter$a */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17572a<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Predicate<? super T> f97022e;

        /* renamed from: f */
        public Subscription f97023f;

        /* renamed from: g */
        public boolean f97024g;

        public AbstractC17572a(Predicate<? super T> predicate) {
            this.f97022e = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f97023f.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (tryOnNext(t) || this.f97024g) {
                return;
            }
            this.f97023f.request(1L);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long n) {
            this.f97023f.request(n);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilter$b */
    /* loaded from: classes10.dex */
    public static final class C17573b<T> extends AbstractC17572a<T> {

        /* renamed from: h */
        public final ConditionalSubscriber<? super T> f97025h;

        public C17573b(ConditionalSubscriber<? super T> actual, Predicate<? super T> predicate) {
            super(predicate);
            this.f97025h = actual;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97024g) {
                return;
            }
            this.f97024g = true;
            this.f97025h.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97024g) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97024g = true;
                this.f97025h.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97023f, s)) {
                this.f97023f = s;
                this.f97025h.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (!this.f97024g) {
                try {
                    if (this.f97022e.test(t)) {
                        return this.f97025h.tryOnNext(t);
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilter$c */
    /* loaded from: classes10.dex */
    public static final class C17574c<T> extends AbstractC17572a<T> {

        /* renamed from: h */
        public final Subscriber<? super T> f97026h;

        public C17574c(Subscriber<? super T> actual, Predicate<? super T> predicate) {
            super(predicate);
            this.f97026h = actual;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97024g) {
                return;
            }
            this.f97024g = true;
            this.f97026h.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97024g) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97024g = true;
                this.f97026h.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97023f, s)) {
                this.f97023f = s;
                this.f97026h.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (!this.f97024g) {
                try {
                    if (this.f97022e.test(t)) {
                        this.f97026h.onNext(t);
                        return true;
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }
    }

    public ParallelFilter(ParallelFlowable<T> source, Predicate<? super T> predicate) {
        this.f97020a = source;
        this.f97021b = predicate;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97020a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super T>[] subscribers) {
        Subscriber<?>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<?> subscriber = onSubscribe[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr[i] = new C17573b((ConditionalSubscriber) subscriber, this.f97021b);
                } else {
                    subscriberArr[i] = new C17574c(subscriber, this.f97021b);
                }
            }
            this.f97020a.subscribe(subscriberArr);
        }
    }
}
