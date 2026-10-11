package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.operators.ConditionalSubscriber;
import io.reactivex.rxjava3.parallel.ParallelFailureHandling;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelFilterTry<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97027a;

    /* renamed from: b */
    public final Predicate<? super T> f97028b;

    /* renamed from: c */
    public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97029c;

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilterTry$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17575a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f97030a;

        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f97030a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f97030a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f97030a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilterTry$b */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17576b<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Predicate<? super T> f97031e;

        /* renamed from: f */
        public final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f97032f;

        /* renamed from: g */
        public Subscription f97033g;

        /* renamed from: h */
        public boolean f97034h;

        public AbstractC17576b(Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            this.f97031e = predicate;
            this.f97032f = errorHandler;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f97033g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (tryOnNext(t) || this.f97034h) {
                return;
            }
            this.f97033g.request(1L);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long n) {
            this.f97033g.request(n);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilterTry$c */
    /* loaded from: classes10.dex */
    public static final class C17577c<T> extends AbstractC17576b<T> {

        /* renamed from: i */
        public final ConditionalSubscriber<? super T> f97035i;

        public C17577c(ConditionalSubscriber<? super T> actual, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            super(predicate, errorHandler);
            this.f97035i = actual;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97034h) {
                return;
            }
            this.f97034h = true;
            this.f97035i.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97034h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97034h = true;
                this.f97035i.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97033g, s)) {
                this.f97033g = s;
                this.f97035i.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (!this.f97034h) {
                long j = 0;
                do {
                    try {
                        return this.f97031e.test(t) && this.f97035i.tryOnNext(t);
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        try {
                            j++;
                            ParallelFailureHandling apply = this.f97032f.apply(Long.valueOf(j), th);
                            Objects.requireNonNull(apply, "The errorHandler returned a null ParallelFailureHandling");
                            i = C17575a.f97030a[apply.ordinal()];
                        } catch (Throwable th2) {
                            Exceptions.throwIfFatal(th2);
                            cancel();
                            onError(new CompositeException(th, th2));
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
            return false;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelFilterTry$d */
    /* loaded from: classes10.dex */
    public static final class C17578d<T> extends AbstractC17576b<T> {

        /* renamed from: i */
        public final Subscriber<? super T> f97036i;

        public C17578d(Subscriber<? super T> actual, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
            super(predicate, errorHandler);
            this.f97036i = actual;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97034h) {
                return;
            }
            this.f97034h = true;
            this.f97036i.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97034h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97034h = true;
                this.f97036i.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97033g, s)) {
                this.f97033g = s;
                this.f97036i.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.operators.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            int i;
            if (!this.f97034h) {
                long j = 0;
                do {
                    try {
                        if (!this.f97031e.test(t)) {
                            return false;
                        }
                        this.f97036i.onNext(t);
                        return true;
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        try {
                            j++;
                            ParallelFailureHandling apply = this.f97032f.apply(Long.valueOf(j), th);
                            Objects.requireNonNull(apply, "The errorHandler returned a null ParallelFailureHandling");
                            i = C17575a.f97030a[apply.ordinal()];
                        } catch (Throwable th2) {
                            Exceptions.throwIfFatal(th2);
                            cancel();
                            onError(new CompositeException(th, th2));
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
            return false;
        }
    }

    public ParallelFilterTry(ParallelFlowable<T> source, Predicate<? super T> predicate, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> errorHandler) {
        this.f97027a = source;
        this.f97028b = predicate;
        this.f97029c = errorHandler;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97027a.parallelism();
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
                    subscriberArr[i] = new C17577c((ConditionalSubscriber) subscriber, this.f97028b, this.f97029c);
                } else {
                    subscriberArr[i] = new C17578d(subscriber, this.f97028b, this.f97029c);
                }
            }
            this.f97027a.subscribe(subscriberArr);
        }
    }
}
