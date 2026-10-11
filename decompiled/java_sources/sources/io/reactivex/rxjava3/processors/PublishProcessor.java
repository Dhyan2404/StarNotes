package io.reactivex.rxjava3.processors;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class PublishProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: h */
    public static final PublishSubscription[] f97524h = new PublishSubscription[0];

    /* renamed from: i */
    public static final PublishSubscription[] f97525i = new PublishSubscription[0];

    /* renamed from: f */
    public final AtomicReference<PublishSubscription<T>[]> f97526f = new AtomicReference<>(f97525i);

    /* renamed from: g */
    public Throwable f97527g;

    /* loaded from: classes10.dex */
    public static final class PublishSubscription<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = 3562861878281475070L;
        final Subscriber<? super T> downstream;
        final PublishProcessor<T> parent;

        public PublishSubscription(Subscriber<? super T> actual, PublishProcessor<T> parent) {
            this.downstream = actual;
            this.parent = parent;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.m61333f(this);
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        public boolean isFull() {
            return get() == 0;
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onComplete();
            }
        }

        public void onError(Throwable t) {
            if (get() != Long.MIN_VALUE) {
                this.downstream.onError(t);
            } else {
                RxJavaPlugins.onError(t);
            }
        }

        public void onNext(T t) {
            long j = get();
            if (j == Long.MIN_VALUE) {
                return;
            }
            if (j != 0) {
                this.downstream.onNext(t);
                BackpressureHelper.producedCancel(this, 1L);
            } else {
                cancel();
                this.downstream.onError(MissingBackpressureException.createDefault());
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.addCancel(this, n);
            }
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> PublishProcessor<T> create() {
        return new PublishProcessor<>();
    }

    /* renamed from: e */
    public boolean m61332e(PublishSubscription<T> ps) {
        PublishSubscription<T>[] publishSubscriptionArr;
        PublishSubscription[] publishSubscriptionArr2;
        do {
            publishSubscriptionArr = this.f97526f.get();
            if (publishSubscriptionArr == f97524h) {
                return false;
            }
            int length = publishSubscriptionArr.length;
            publishSubscriptionArr2 = new PublishSubscription[length + 1];
            System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr2, 0, length);
            publishSubscriptionArr2[length] = ps;
        } while (!cyi.m53538a(this.f97526f, publishSubscriptionArr, publishSubscriptionArr2));
        return true;
    }

    /* renamed from: f */
    public void m61333f(PublishSubscription<T> ps) {
        PublishSubscription<T>[] publishSubscriptionArr;
        PublishSubscription[] publishSubscriptionArr2;
        do {
            publishSubscriptionArr = this.f97526f.get();
            if (publishSubscriptionArr == f97524h || publishSubscriptionArr == f97525i) {
                return;
            }
            int length = publishSubscriptionArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (publishSubscriptionArr[i] == ps) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                publishSubscriptionArr2 = f97525i;
            } else {
                PublishSubscription[] publishSubscriptionArr3 = new PublishSubscription[length - 1];
                System.arraycopy(publishSubscriptionArr, 0, publishSubscriptionArr3, 0, i);
                System.arraycopy(publishSubscriptionArr, i + 1, publishSubscriptionArr3, i, (length - i) - 1);
                publishSubscriptionArr2 = publishSubscriptionArr3;
            }
        } while (!cyi.m53538a(this.f97526f, publishSubscriptionArr, publishSubscriptionArr2));
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        if (this.f97526f.get() == f97524h) {
            return this.f97527g;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97526f.get() == f97524h && this.f97527g == null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasSubscribers() {
        return this.f97526f.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97526f.get() == f97524h && this.f97527g != null;
    }

    @CheckReturnValue
    public boolean offer(@NonNull T t) {
        ExceptionHelper.nullCheck(t, "offer called with a null value.");
        PublishSubscription<T>[] publishSubscriptionArr = this.f97526f.get();
        for (PublishSubscription<T> publishSubscription : publishSubscriptionArr) {
            if (publishSubscription.isFull()) {
                return false;
            }
        }
        for (PublishSubscription<T> publishSubscription2 : publishSubscriptionArr) {
            publishSubscription2.onNext(t);
        }
        return true;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        PublishSubscription<T>[] publishSubscriptionArr = this.f97526f.get();
        PublishSubscription<T>[] publishSubscriptionArr2 = f97524h;
        if (publishSubscriptionArr == publishSubscriptionArr2) {
            return;
        }
        PublishSubscription<T>[] andSet = this.f97526f.getAndSet(publishSubscriptionArr2);
        for (PublishSubscription<T> publishSubscription : andSet) {
            publishSubscription.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(@NonNull Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        PublishSubscription<T>[] publishSubscriptionArr = this.f97526f.get();
        PublishSubscription<T>[] publishSubscriptionArr2 = f97524h;
        if (publishSubscriptionArr == publishSubscriptionArr2) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97527g = t;
        PublishSubscription<T>[] andSet = this.f97526f.getAndSet(publishSubscriptionArr2);
        for (PublishSubscription<T> publishSubscription : andSet) {
            publishSubscription.onError(t);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(@NonNull T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        for (PublishSubscription<T> publishSubscription : this.f97526f.get()) {
            publishSubscription.onNext(t);
        }
    }

    @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(@NonNull Subscription s) {
        if (this.f97526f.get() == f97524h) {
            s.cancel();
        } else {
            s.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(@NonNull Subscriber<? super T> t) {
        PublishSubscription<T> publishSubscription = new PublishSubscription<>(t, this);
        t.onSubscribe(publishSubscription);
        if (m61332e(publishSubscription)) {
            if (publishSubscription.isCancelled()) {
                m61333f(publishSubscription);
            }
        } else {
            Throwable th = this.f97527g;
            if (th != null) {
                t.onError(th);
            } else {
                t.onComplete();
            }
        }
    }
}
