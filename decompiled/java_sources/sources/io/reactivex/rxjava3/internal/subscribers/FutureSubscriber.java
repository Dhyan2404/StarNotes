package io.reactivex.rxjava3.internal.subscribers;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BlockingHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FutureSubscriber<T> extends CountDownLatch implements FlowableSubscriber<T>, Future<T>, Subscription {

    /* renamed from: e */
    public T f97410e;

    /* renamed from: f */
    public Throwable f97411f;

    /* renamed from: g */
    public final AtomicReference<Subscription> f97412g;

    public FutureSubscriber() {
        super(1);
        this.f97412g = new AtomicReference<>();
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        if (getCount() != 0) {
            BlockingHelper.verifyNonBlocking();
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f97411f;
            if (th == null) {
                return this.f97410e;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f97412g.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return getCount() == 0;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f97410e == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        Subscription subscription = this.f97412g.get();
        if (subscription == this || subscription == SubscriptionHelper.CANCELLED || !cyi.m53538a(this.f97412g, subscription, this)) {
            return;
        }
        countDown();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable t) {
        Subscription subscription;
        if (this.f97411f != null || (subscription = this.f97412g.get()) == this || subscription == SubscriptionHelper.CANCELLED || !cyi.m53538a(this.f97412g, subscription, this)) {
            RxJavaPlugins.onError(t);
        } else {
            this.f97411f = t;
            countDown();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        if (this.f97410e == null) {
            this.f97410e = t;
        } else {
            this.f97412g.get().cancel();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override // io.reactivex.rxjava3.core.FlowableSubscriber
    public void onSubscribe(Subscription s) {
        SubscriptionHelper.setOnce(this.f97412g, s, Long.MAX_VALUE);
    }

    @Override // org.reactivestreams.Subscription
    public void request(long n) {
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean mayInterruptIfRunning) {
        Subscription subscription;
        SubscriptionHelper subscriptionHelper;
        do {
            subscription = this.f97412g.get();
            if (subscription == this || subscription == (subscriptionHelper = SubscriptionHelper.CANCELLED)) {
                return false;
            }
        } while (!cyi.m53538a(this.f97412g, subscription, subscriptionHelper));
        if (subscription != null) {
            subscription.cancel();
        }
        countDown();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get(long timeout, @NonNull TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        if (getCount() != 0) {
            BlockingHelper.verifyNonBlocking();
            if (!await(timeout, unit)) {
                throw new TimeoutException(ExceptionHelper.timeoutMessage(timeout, unit));
            }
        }
        if (!isCancelled()) {
            Throwable th = this.f97411f;
            if (th == null) {
                return this.f97410e;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
