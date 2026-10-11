package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.Optional;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelMapTryOptional<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f95141a;

    /* renamed from: b */
    public final Function<? super T, Optional<? extends R>> f95142b;

    /* renamed from: c */
    public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f95143c;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ParallelMapTryOptional$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17298a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f95144a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f95144a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95144a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95144a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ParallelMapTryOptional$b */
    /* loaded from: classes10.dex */
    public static final class C17299b<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final ConditionalSubscriber<? super R> f95145e;

        /* renamed from: f */
        public final Function<? super T, Optional<? extends R>> f95146f;

        /* renamed from: g */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f95147g;

        /* renamed from: h */
        public Subscription f95148h;

        /* renamed from: i */
        public boolean f95149i;

        public C17299b(ConditionalSubscriber<? super R> actual, Function<? super T, Optional<? extends R>> mapper, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f95145e = actual;
            this.f95146f = mapper;
            this.f95147g = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95148h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95149i) {
                return;
            }
            this.f95149i = true;
            this.f95145e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95149i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95149i = true;
                this.f95145e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f95149i) {
                return;
            }
            this.f95148h.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95148h, s)) {
                this.f95148h = s;
                this.f95145e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95148h.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f95149i) {
                return false;
            }
            long j = 0;
            do {
                try {
                    Optional<? extends R> apply = this.f95146f.apply(t);
                    Objects.requireNonNull(apply, "The mapper returned a null Optional");
                    Optional<? extends R> optional = apply;
                    return optional.isPresent() && this.f95145e.tryOnNext(optional.get());
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    try {
                        j++;
                        ParallelFailureHandling apply2 = this.f95147g.apply(Long.valueOf(j), th);
                        Objects.requireNonNull(apply2, "The errorHandler returned a null ParallelFailureHandling");
                        i = C17298a.f95144a[apply2.ordinal()];
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        cancel();
                        onError(new CompositeException(th, th2));
                        return false;
                    }
                }
            } while (i == 1);
            if (i != 2) {
                if (i != 3) {
                    cancel();
                    onError(th);
                    return false;
                }
                cancel();
                onComplete();
            }
            return false;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ParallelMapTryOptional$c */
    /* loaded from: classes10.dex */
    public static final class C17300c<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super R> f95150e;

        /* renamed from: f */
        public final Function<? super T, Optional<? extends R>> f95151f;

        /* renamed from: g */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f95152g;

        /* renamed from: h */
        public Subscription f95153h;

        /* renamed from: i */
        public boolean f95154i;

        public C17300c(Subscriber<? super R> actual, Function<? super T, Optional<? extends R>> mapper, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f95150e = actual;
            this.f95151f = mapper;
            this.f95152g = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95153h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95154i) {
                return;
            }
            this.f95154i = true;
            this.f95150e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95154i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95154i = true;
                this.f95150e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f95154i) {
                return;
            }
            this.f95153h.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95153h, s)) {
                this.f95153h = s;
                this.f95150e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f95153h.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f95154i) {
                return false;
            }
            long j = 0;
            do {
                try {
                    Optional<? extends R> apply = this.f95151f.apply(t);
                    Objects.requireNonNull(apply, "The mapper returned a null Optional");
                    Optional<? extends R> optional = apply;
                    if (!optional.isPresent()) {
                        return false;
                    }
                    this.f95150e.onNext(optional.get());
                    return true;
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    try {
                        j++;
                        ParallelFailureHandling apply2 = this.f95152g.apply(Long.valueOf(j), th);
                        Objects.requireNonNull(apply2, "The errorHandler returned a null ParallelFailureHandling");
                        i = C17298a.f95144a[apply2.ordinal()];
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        cancel();
                        onError(new CompositeException(th, th2));
                        return false;
                    }
                }
            } while (i == 1);
            if (i != 2) {
                if (i != 3) {
                    cancel();
                    onError(th);
                    return false;
                }
                cancel();
                onComplete();
            }
            return false;
        }
    }

    public ParallelMapTryOptional(ParallelFlowable<T> source, Function<? super T, Optional<? extends R>> mapper, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f95141a = source;
        this.f95142b = mapper;
        this.f95143c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f95141a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super R>[] subscribers) {
        if (validate(subscribers)) {
            int length = subscribers.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super R> subscriber = subscribers[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr[i] = new C17299b((ConditionalSubscriber) subscriber, this.f95142b, this.f95143c);
                } else {
                    subscriberArr[i] = new C17300c(subscriber, this.f95142b, this.f95143c);
                }
            }
            this.f95141a.subscribe(subscriberArr);
        }
    }
}
