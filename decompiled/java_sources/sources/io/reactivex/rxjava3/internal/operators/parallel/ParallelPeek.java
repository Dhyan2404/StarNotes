package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.LongConsumer;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.parallel.ParallelFlowable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ParallelPeek<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    public final ParallelFlowable<T> f97079a;

    /* renamed from: b */
    public final Consumer<? super T> f97080b;

    /* renamed from: c */
    public final Consumer<? super T> f97081c;

    /* renamed from: d */
    public final Consumer<? super Throwable> f97082d;

    /* renamed from: e */
    public final Action f97083e;

    /* renamed from: f */
    public final Action f97084f;

    /* renamed from: g */
    public final Consumer<? super Subscription> f97085g;

    /* renamed from: h */
    public final LongConsumer f97086h;

    /* renamed from: i */
    public final Action f97087i;

    /* renamed from: io.reactivex.rxjava3.internal.operators.parallel.ParallelPeek$a */
    /* loaded from: classes10.dex */
    public static final class C17585a<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f97088e;

        /* renamed from: f */
        public final ParallelPeek<T> f97089f;

        /* renamed from: g */
        public Subscription f97090g;

        /* renamed from: h */
        public boolean f97091h;

        public C17585a(Subscriber<? super T> actual, ParallelPeek<T> parent) {
            this.f97088e = actual;
            this.f97089f = parent;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            try {
                this.f97089f.f97087i.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f97090g.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97091h) {
                return;
            }
            this.f97091h = true;
            try {
                this.f97089f.f97083e.run();
                this.f97088e.onComplete();
                try {
                    this.f97089f.f97084f.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                this.f97088e.onError(th2);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97091h) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f97091h = true;
            try {
                this.f97089f.f97082d.accept(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                t = new CompositeException(t, th);
            }
            this.f97088e.onError(t);
            try {
                this.f97089f.f97084f.run();
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(th2);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f97091h) {
                return;
            }
            try {
                this.f97089f.f97080b.accept(t);
                this.f97088e.onNext(t);
                try {
                    this.f97089f.f97081c.accept(t);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97090g, s)) {
                this.f97090g = s;
                try {
                    this.f97089f.f97085g.accept(s);
                    this.f97088e.onSubscribe(this);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    s.cancel();
                    this.f97088e.onSubscribe(EmptySubscription.INSTANCE);
                    onError(th);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            try {
                this.f97089f.f97086h.accept(n);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f97090g.request(n);
        }
    }

    public ParallelPeek(ParallelFlowable<T> source, Consumer<? super T> onNext, Consumer<? super T> onAfterNext, Consumer<? super Throwable> onError, Action onComplete, Action onAfterTerminated, Consumer<? super Subscription> onSubscribe, LongConsumer onRequest, Action onCancel) {
        this.f97079a = source;
        Objects.requireNonNull(onNext, "onNext is null");
        this.f97080b = onNext;
        Objects.requireNonNull(onAfterNext, "onAfterNext is null");
        this.f97081c = onAfterNext;
        Objects.requireNonNull(onError, "onError is null");
        this.f97082d = onError;
        Objects.requireNonNull(onComplete, "onComplete is null");
        this.f97083e = onComplete;
        Objects.requireNonNull(onAfterTerminated, "onAfterTerminated is null");
        this.f97084f = onAfterTerminated;
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        this.f97085g = onSubscribe;
        Objects.requireNonNull(onRequest, "onRequest is null");
        this.f97086h = onRequest;
        Objects.requireNonNull(onCancel, "onCancel is null");
        this.f97087i = onCancel;
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public int parallelism() {
        return this.f97079a.parallelism();
    }

    @Override // io.reactivex.rxjava3.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super T>[] subscribers) {
        Subscriber<?>[] onSubscribe = RxJavaPlugins.onSubscribe(this, subscribers);
        if (validate(onSubscribe)) {
            int length = onSubscribe.length;
            Subscriber<? super T>[] subscriberArr = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr[i] = new C17585a(onSubscribe[i], this);
            }
            this.f97079a.subscribe(subscriberArr);
        }
    }
}
