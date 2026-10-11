package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.processors.FlowableProcessor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class dhm<T> extends FlowableProcessor<T> {

    /* renamed from: f */
    public final FlowableProcessor<T> f67879f;

    /* renamed from: g */
    public boolean f67880g;

    /* renamed from: h */
    public AppendOnlyLinkedArrayList<Object> f67881h;

    /* renamed from: i */
    public volatile boolean f67882i;

    public dhm(final FlowableProcessor<T> actual) {
        this.f67879f = actual;
    }

    /* renamed from: e */
    public void m53662e() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f67881h;
                if (appendOnlyLinkedArrayList == null) {
                    this.f67880g = false;
                    return;
                }
                this.f67881h = null;
            }
            appendOnlyLinkedArrayList.accept(this.f67879f);
        }
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @Nullable
    public Throwable getThrowable() {
        return this.f67879f.getThrowable();
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    public boolean hasComplete() {
        return this.f67879f.hasComplete();
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    public boolean hasSubscribers() {
        return this.f67879f.hasSubscribers();
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    public boolean hasThrowable() {
        return this.f67879f.hasThrowable();
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f67882i) {
            return;
        }
        synchronized (this) {
            if (this.f67882i) {
                return;
            }
            this.f67882i = true;
            if (!this.f67880g) {
                this.f67880g = true;
                this.f67879f.onComplete();
                return;
            }
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f67881h;
            if (appendOnlyLinkedArrayList == null) {
                appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                this.f67881h = appendOnlyLinkedArrayList;
            }
            appendOnlyLinkedArrayList.add(NotificationLite.complete());
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        if (this.f67882i) {
            RxJavaPlugins.onError(t);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f67882i) {
                this.f67882i = true;
                if (this.f67880g) {
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f67881h;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f67881h = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.setFirst(NotificationLite.error(t));
                    return;
                }
                this.f67880g = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.onError(t);
            } else {
                this.f67879f.onError(t);
            }
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f67882i) {
            return;
        }
        synchronized (this) {
            if (this.f67882i) {
                return;
            }
            if (!this.f67880g) {
                this.f67880g = true;
                this.f67879f.onNext(t);
                m53662e();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f67881h;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f67881h = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.add(NotificationLite.next(t));
            }
        }
    }

    @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(Subscription s) {
        boolean z = true;
        if (!this.f67882i) {
            synchronized (this) {
                if (!this.f67882i) {
                    if (this.f67880g) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f67881h;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.f67881h = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.add(NotificationLite.subscription(s));
                        return;
                    }
                    this.f67880g = true;
                    z = false;
                }
            }
        }
        if (z) {
            s.cancel();
        } else {
            this.f67879f.onSubscribe(s);
            m53662e();
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f67879f.subscribe(s);
    }
}
