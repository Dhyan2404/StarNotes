package io.reactivex.rxjava3.processors;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class AsyncProcessor<T> extends FlowableProcessor<T> {

    /* renamed from: i */
    public static final AsyncSubscription[] f97496i = new AsyncSubscription[0];

    /* renamed from: j */
    public static final AsyncSubscription[] f97497j = new AsyncSubscription[0];

    /* renamed from: f */
    public final AtomicReference<AsyncSubscription<T>[]> f97498f = new AtomicReference<>(f97496i);

    /* renamed from: g */
    public Throwable f97499g;

    /* renamed from: h */
    public T f97500h;

    /* loaded from: classes10.dex */
    public static final class AsyncSubscription<T> extends DeferredScalarSubscription<T> {
        private static final long serialVersionUID = 5629876084736248016L;
        final AsyncProcessor<T> parent;

        public AsyncSubscription(Subscriber<? super T> actual, AsyncProcessor<T> parent) {
            super(actual);
            this.parent = parent;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            if (super.tryCancel()) {
                this.parent.m61323f(this);
            }
        }

        public void onComplete() {
            if (isCancelled()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable t) {
            if (isCancelled()) {
                RxJavaPlugins.onError(t);
            } else {
                this.downstream.onError(t);
            }
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> AsyncProcessor<T> create() {
        return new AsyncProcessor<>();
    }

    /* renamed from: e */
    public boolean m61322e(AsyncSubscription<T> ps) {
        AsyncSubscription<T>[] asyncSubscriptionArr;
        AsyncSubscription[] asyncSubscriptionArr2;
        do {
            asyncSubscriptionArr = this.f97498f.get();
            if (asyncSubscriptionArr == f97497j) {
                return false;
            }
            int length = asyncSubscriptionArr.length;
            asyncSubscriptionArr2 = new AsyncSubscription[length + 1];
            System.arraycopy(asyncSubscriptionArr, 0, asyncSubscriptionArr2, 0, length);
            asyncSubscriptionArr2[length] = ps;
        } while (!cyi.m53538a(this.f97498f, asyncSubscriptionArr, asyncSubscriptionArr2));
        return true;
    }

    /* renamed from: f */
    public void m61323f(AsyncSubscription<T> ps) {
        AsyncSubscription<T>[] asyncSubscriptionArr;
        AsyncSubscription[] asyncSubscriptionArr2;
        do {
            asyncSubscriptionArr = this.f97498f.get();
            int length = asyncSubscriptionArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (asyncSubscriptionArr[i] == ps) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                asyncSubscriptionArr2 = f97496i;
            } else {
                AsyncSubscription[] asyncSubscriptionArr3 = new AsyncSubscription[length - 1];
                System.arraycopy(asyncSubscriptionArr, 0, asyncSubscriptionArr3, 0, i);
                System.arraycopy(asyncSubscriptionArr, i + 1, asyncSubscriptionArr3, i, (length - i) - 1);
                asyncSubscriptionArr2 = asyncSubscriptionArr3;
            }
        } while (!cyi.m53538a(this.f97498f, asyncSubscriptionArr, asyncSubscriptionArr2));
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        if (this.f97498f.get() == f97497j) {
            return this.f97499g;
        }
        return null;
    }

    @CheckReturnValue
    @Nullable
    public T getValue() {
        if (this.f97498f.get() == f97497j) {
            return this.f97500h;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97498f.get() == f97497j && this.f97499g == null;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasSubscribers() {
        return this.f97498f.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.FlowableProcessor
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97498f.get() == f97497j && this.f97499g != null;
    }

    @CheckReturnValue
    public boolean hasValue() {
        return this.f97498f.get() == f97497j && this.f97500h != null;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        AsyncSubscription<T>[] asyncSubscriptionArr = this.f97498f.get();
        AsyncSubscription<T>[] asyncSubscriptionArr2 = f97497j;
        if (asyncSubscriptionArr == asyncSubscriptionArr2) {
            return;
        }
        T t = this.f97500h;
        AsyncSubscription<T>[] andSet = this.f97498f.getAndSet(asyncSubscriptionArr2);
        int i = 0;
        if (t == null) {
            int length = andSet.length;
            while (i < length) {
                andSet[i].onComplete();
                i++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i < length2) {
            andSet[i].complete(t);
            i++;
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(@NonNull Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        AsyncSubscription<T>[] asyncSubscriptionArr = this.f97498f.get();
        AsyncSubscription<T>[] asyncSubscriptionArr2 = f97497j;
        if (asyncSubscriptionArr == asyncSubscriptionArr2) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97500h = null;
        this.f97499g = t;
        AsyncSubscription<T>[] andSet = this.f97498f.getAndSet(asyncSubscriptionArr2);
        for (AsyncSubscription<T> asyncSubscription : andSet) {
            asyncSubscription.onError(t);
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(@NonNull T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        if (this.f97498f.get() == f97497j) {
            return;
        }
        this.f97500h = t;
    }

    @Override // org.reactivestreams.Subscriber, io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(@NonNull Subscription s) {
        if (this.f97498f.get() == f97497j) {
            s.cancel();
        } else {
            s.request(Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(@NonNull Subscriber<? super T> s) {
        AsyncSubscription<T> asyncSubscription = new AsyncSubscription<>(s, this);
        s.onSubscribe(asyncSubscription);
        if (m61322e(asyncSubscription)) {
            if (asyncSubscription.isCancelled()) {
                m61323f(asyncSubscription);
                return;
            }
            return;
        }
        Throwable th = this.f97499g;
        if (th != null) {
            s.onError(th);
            return;
        }
        T t = this.f97500h;
        if (t != null) {
            asyncSubscription.complete(t);
        } else {
            asyncSubscription.onComplete();
        }
    }
}
