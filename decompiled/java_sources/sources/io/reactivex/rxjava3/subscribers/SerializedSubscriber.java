package io.reactivex.rxjava3.subscribers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes4.dex */
public final class SerializedSubscriber<T> implements FlowableSubscriber<T>, Subscription {

    /* renamed from: k */
    public static final int f97653k = 4;

    /* renamed from: e */
    public final Subscriber<? super T> f97654e;

    /* renamed from: f */
    public final boolean f97655f;

    /* renamed from: g */
    public Subscription f97656g;

    /* renamed from: h */
    public boolean f97657h;

    /* renamed from: i */
    public AppendOnlyLinkedArrayList<Object> f97658i;

    /* renamed from: j */
    public volatile boolean f97659j;

    public SerializedSubscriber(Subscriber<? super T> downstream) {
        this(downstream, false);
    }

    /* renamed from: a */
    public void m61392a() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        do {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f97658i;
                if (appendOnlyLinkedArrayList == null) {
                    this.f97657h = false;
                    return;
                }
                this.f97658i = null;
            }
        } while (!appendOnlyLinkedArrayList.accept(this.f97654e));
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f97656g.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f97659j) {
            return;
        }
        synchronized (this) {
            if (this.f97659j) {
                return;
            }
            if (!this.f97657h) {
                this.f97659j = true;
                this.f97657h = true;
                this.f97654e.onComplete();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97658i;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f97658i = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.add(NotificationLite.complete());
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        if (this.f97659j) {
            RxJavaPlugins.onError(t);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f97659j) {
                if (this.f97657h) {
                    this.f97659j = true;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97658i;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f97658i = appendOnlyLinkedArrayList;
                    }
                    Object error = NotificationLite.error(t);
                    if (this.f97655f) {
                        appendOnlyLinkedArrayList.add(error);
                    } else {
                        appendOnlyLinkedArrayList.setFirst(error);
                    }
                    return;
                }
                this.f97659j = true;
                this.f97657h = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97654e.onError(t);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(@NonNull T t) {
        if (this.f97659j) {
            return;
        }
        if (t == null) {
            this.f97656g.cancel();
            onError(ExceptionHelper.createNullPointerException("onNext called with a null value."));
            return;
        }
        synchronized (this) {
            if (this.f97659j) {
                return;
            }
            if (!this.f97657h) {
                this.f97657h = true;
                this.f97654e.onNext(t);
                m61392a();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97658i;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f97658i = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.add(NotificationLite.next(t));
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(@NonNull Subscription s) {
        if (SubscriptionHelper.validate(this.f97656g, s)) {
            this.f97656g = s;
            this.f97654e.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long n) {
        this.f97656g.request(n);
    }

    public SerializedSubscriber(@NonNull Subscriber<? super T> actual, boolean delayError) {
        this.f97654e = actual;
        this.f97655f = delayError;
    }
}
