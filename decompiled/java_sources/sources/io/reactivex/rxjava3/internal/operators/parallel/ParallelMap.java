package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelMap<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97055a;

    /* renamed from: b */
    public final Function<? super T, ? extends R> f97056b;

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelMap$a */
    /* loaded from: classes10.dex */
    public static final class C17580a<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final ConditionalSubscriber<? super R> f97057e;

        /* renamed from: f */
        public final Function<? super T, ? extends R> f97058f;

        /* renamed from: g */
        public Subscription f97059g;

        /* renamed from: h */
        public boolean f97060h;

        public C17580a(ConditionalSubscriber<? super R> actual, Function<? super T, ? extends R> mapper) {
            this.f97057e = actual;
            this.f97058f = mapper;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f97059g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97060h) {
                return;
            }
            this.f97060h = true;
            this.f97057e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97060h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97060h = true;
                this.f97057e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f97060h) {
                return;
            }
            try {
                R apply = this.f97058f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                this.f97057e.onNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97059g, s)) {
                this.f97059g = s;
                this.f97057e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f97059g.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f97060h) {
                return false;
            }
            try {
                R apply = this.f97058f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                return this.f97057e.tryOnNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelMap$b */
    /* loaded from: classes10.dex */
    public static final class C17581b<T, R> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super R> f97061e;

        /* renamed from: f */
        public final Function<? super T, ? extends R> f97062f;

        /* renamed from: g */
        public Subscription f97063g;

        /* renamed from: h */
        public boolean f97064h;

        public C17581b(Subscriber<? super R> actual, Function<? super T, ? extends R> mapper) {
            this.f97061e = actual;
            this.f97062f = mapper;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f97063g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97064h) {
                return;
            }
            this.f97064h = true;
            this.f97061e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97064h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97064h = true;
                this.f97061e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f97064h) {
                return;
            }
            try {
                R apply = this.f97062f.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                this.f97061e.onNext(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97063g, s)) {
                this.f97063g = s;
                this.f97061e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f97063g.request(n);
        }
    }

    public ParallelMap(ParallelFlowable<T> source, Function<? super T, ? extends R> mapper) {
        this.f97055a = source;
        this.f97056b = mapper;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97055a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        Subscriber<?>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<?> subscriber = onSubscribe[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr[i] = new C17580a((ConditionalSubscriber) subscriber, this.f97056b);
                } else {
                    subscriberArr[i] = new C17581b(subscriber, this.f97056b);
                }
            }
            this.f97055a.subscribe(subscriberArr);
        }
    }
}
