package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes4.dex */
public final class SafeSubscriber<T> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: e */
    public final Subscriber<? super T> f97650e;

    /* renamed from: f */
    public Subscription f97651f;

    /* renamed from: g */
    public boolean f97652g;

    public SafeSubscriber(@NonNull Subscriber<? super T> downstream) {
        this.f97650e = downstream;
    }

    /* renamed from: a */
    public void m61390a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f97650e.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f97650e.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            RxJavaPlugins.onError(new CompositeException(nullPointerException, th2));
        }
    }

    /* renamed from: b */
    public void m61391b() {
        this.f97652g = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f97650e.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f97650e.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            RxJavaPlugins.onError(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        try {
            this.f97651f.cancel();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f97652g) {
            return;
        }
        this.f97652g = true;
        if (this.f97651f == null) {
            m61390a();
            return;
        }
        try {
            this.f97650e.onComplete();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(@NonNull Throwable t) {
        if (this.f97652g) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97652g = true;
        if (this.f97651f != null) {
            if (t == null) {
                t = ExceptionHelper.createNullPointerException("onError called with a null Throwable.");
            }
            try {
                this.f97650e.onError(t);
                return;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(t, th));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f97650e.onSubscribe(EmptySubscription.INSTANCE);
            try {
                this.f97650e.onError(new CompositeException(t, nullPointerException));
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(new CompositeException(t, nullPointerException, th2));
            }
        } catch (Throwable th3) {
            Exceptions.throwIfFatal(th3);
            RxJavaPlugins.onError(new CompositeException(t, nullPointerException, th3));
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(@NonNull T t) {
        if (this.f97652g) {
            return;
        }
        if (this.f97651f == null) {
            m61391b();
            return;
        }
        if (t == null) {
            NullPointerException createNullPointerException = ExceptionHelper.createNullPointerException("onNext called with a null Throwable.");
            try {
                this.f97651f.cancel();
                onError(createNullPointerException);
                return;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(new CompositeException(createNullPointerException, th));
                return;
            }
        }
        try {
            this.f97650e.onNext(t);
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            try {
                this.f97651f.cancel();
                onError(th2);
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                onError(new CompositeException(th2, th3));
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(@NonNull Subscription s) {
        if (SubscriptionHelper.validate(this.f97651f, s)) {
            this.f97651f = s;
            try {
                this.f97650e.onSubscribe(this);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97652g = true;
                try {
                    s.cancel();
                    RxJavaPlugins.onError(th);
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    RxJavaPlugins.onError(new CompositeException(th, th2));
                }
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long n) {
        try {
            this.f97651f.request(n);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            try {
                this.f97651f.cancel();
                RxJavaPlugins.onError(th);
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(new CompositeException(th, th2));
            }
        }
    }
}
