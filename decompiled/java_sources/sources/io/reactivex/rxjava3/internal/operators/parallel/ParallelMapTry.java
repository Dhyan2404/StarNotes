package io.reactivex.rxjava3.internal.operators.parallel;

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
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelMapTry<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97065a;

    /* renamed from: b */
    public final Function<? super T, ? extends R> f97066b;

    /* renamed from: c */
    public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97067c;

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelMapTry$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17582a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f97068a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f97068a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f97068a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f97068a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelMapTry$b */
    /* loaded from: classes10.dex */
    public static final class C17583b<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final ConditionalSubscriber<? super R> f97069e;

        /* renamed from: f */
        public final Function<? super T, ? extends R> f97070f;

        /* renamed from: g */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97071g;

        /* renamed from: h */
        public Subscription f97072h;

        /* renamed from: i */
        public boolean f97073i;

        public C17583b(ConditionalSubscriber<? super R> actual, Function<? super T, ? extends R> mapper, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f97069e = actual;
            this.f97070f = mapper;
            this.f97071g = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f97072h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97073i) {
                return;
            }
            this.f97073i = true;
            this.f97069e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97073i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97073i = true;
                this.f97069e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f97073i) {
                return;
            }
            this.f97072h.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97072h, s)) {
                this.f97072h = s;
                this.f97069e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f97072h.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f97073i) {
                return false;
            }
            long j = 0;
            do {
                try {
                    R apply = this.f97070f.apply(t);
                    Objects.requireNonNull(apply, "The mapper returned a null value");
                    return this.f97069e.tryOnNext(apply);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    try {
                        j++;
                        ParallelFailureHandling apply2 = this.f97071g.apply(Long.valueOf(j), th);
                        Objects.requireNonNull(apply2, "The errorHandler returned a null ParallelFailureHandling");
                        i = C17582a.f97068a[apply2.ordinal()];
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

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelMapTry$c */
    /* loaded from: classes10.dex */
    public static final class C17584c<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super R> f97074e;

        /* renamed from: f */
        public final Function<? super T, ? extends R> f97075f;

        /* renamed from: g */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97076g;

        /* renamed from: h */
        public Subscription f97077h;

        /* renamed from: i */
        public boolean f97078i;

        public C17584c(Subscriber<? super R> actual, Function<? super T, ? extends R> mapper, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f97074e = actual;
            this.f97075f = mapper;
            this.f97076g = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f97077h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97078i) {
                return;
            }
            this.f97078i = true;
            this.f97074e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97078i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97078i = true;
                this.f97074e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f97078i) {
                return;
            }
            this.f97077h.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97077h, s)) {
                this.f97077h = s;
                this.f97074e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f97077h.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f97078i) {
                return false;
            }
            long j = 0;
            do {
                try {
                    R apply = this.f97075f.apply(t);
                    Objects.requireNonNull(apply, "The mapper returned a null value");
                    this.f97074e.onNext(apply);
                    return true;
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    try {
                        j++;
                        ParallelFailureHandling apply2 = this.f97076g.apply(Long.valueOf(j), th);
                        Objects.requireNonNull(apply2, "The errorHandler returned a null ParallelFailureHandling");
                        i = C17582a.f97068a[apply2.ordinal()];
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

    public ParallelMapTry(ParallelFlowable<T> source, Function<? super T, ? extends R> mapper, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f97065a = source;
        this.f97066b = mapper;
        this.f97067c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97065a.parallelism();
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
                    subscriberArr[i] = new C17583b((ConditionalSubscriber) subscriber, this.f97066b, this.f97067c);
                } else {
                    subscriberArr[i] = new C17584c(subscriber, this.f97066b, this.f97067c);
                }
            }
            this.f97065a.subscribe(subscriberArr);
        }
    }
}
