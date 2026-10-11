package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelDoOnNextTry<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97006a;

    /* renamed from: b */
    public final Consumer<? super T> f97007b;

    /* renamed from: c */
    public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97008c;

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelDoOnNextTry$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17569a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f97009a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f97009a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f97009a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f97009a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelDoOnNextTry$b */
    /* loaded from: classes10.dex */
    public static final class C17570b<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final ConditionalSubscriber<? super T> f97010e;

        /* renamed from: f */
        public final Consumer<? super T> f97011f;

        /* renamed from: g */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97012g;

        /* renamed from: h */
        public Subscription f97013h;

        /* renamed from: i */
        public boolean f97014i;

        public C17570b(ConditionalSubscriber<? super T> actual, Consumer<? super T> onNext, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f97010e = actual;
            this.f97011f = onNext;
            this.f97012g = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f97013h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97014i) {
                return;
            }
            this.f97014i = true;
            this.f97010e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97014i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97014i = true;
                this.f97010e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t) || this.f97014i) {
                return;
            }
            this.f97013h.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97013h, s)) {
                this.f97013h = s;
                this.f97010e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f97013h.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f97014i) {
                return false;
            }
            long j = 0;
            do {
                try {
                    this.f97011f.accept(t);
                    return this.f97010e.tryOnNext(t);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    try {
                        j++;
                        ParallelFailureHandling apply = this.f97012g.apply(Long.valueOf(j), th);
                        Objects.requireNonNull(apply, "The errorHandler returned a null ParallelFailureHandling");
                        i = C17569a.f97009a[apply.ordinal()];
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

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelDoOnNextTry$c */
    /* loaded from: classes10.dex */
    public static final class C17571c<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f97015e;

        /* renamed from: f */
        public final Consumer<? super T> f97016f;

        /* renamed from: g */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97017g;

        /* renamed from: h */
        public Subscription f97018h;

        /* renamed from: i */
        public boolean f97019i;

        public C17571c(Subscriber<? super T> actual, Consumer<? super T> onNext, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f97015e = actual;
            this.f97016f = onNext;
            this.f97017g = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f97018h.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97019i) {
                return;
            }
            this.f97019i = true;
            this.f97015e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97019i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97019i = true;
                this.f97015e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.f97018h.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97018h, s)) {
                this.f97018h = s;
                this.f97015e.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            this.f97018h.request(n);
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (this.f97019i) {
                return false;
            }
            long j = 0;
            do {
                try {
                    this.f97016f.accept(t);
                    this.f97015e.onNext(t);
                    return true;
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    try {
                        j++;
                        ParallelFailureHandling apply = this.f97017g.apply(Long.valueOf(j), th);
                        Objects.requireNonNull(apply, "The errorHandler returned a null ParallelFailureHandling");
                        i = C17569a.f97009a[apply.ordinal()];
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

    public ParallelDoOnNextTry(ParallelFlowable<T> source, Consumer<? super T> onNext, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f97006a = source;
        this.f97007b = onNext;
        this.f97008c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97006a.parallelism();
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
                    subscriberArr[i] = new C17570b((ConditionalSubscriber) subscriber, this.f97007b, this.f97008c);
                } else {
                    subscriberArr[i] = new C17571c(subscriber, this.f97007b, this.f97008c);
                }
            }
            this.f97006a.subscribe(subscriberArr);
        }
    }
}
