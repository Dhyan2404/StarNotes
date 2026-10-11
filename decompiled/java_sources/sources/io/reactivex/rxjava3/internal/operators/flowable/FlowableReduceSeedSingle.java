package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableReduceSeedSingle<T, R> extends Single<R> {

    /* renamed from: e */
    public final Publisher<T> f95772e;

    /* renamed from: f */
    public final R f95773f;

    /* renamed from: g */
    public final BiFunction<R, ? super T, R> f95774g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReduceSeedSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17385a<T, R> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super R> f95775e;

        /* renamed from: f */
        public final BiFunction<R, ? super T, R> f95776f;

        /* renamed from: g */
        public R f95777g;

        /* renamed from: h */
        public Subscription f95778h;

        public C17385a(SingleObserver<? super R> actual, BiFunction<R, ? super T, R> reducer, R value) {
            this.f95775e = actual;
            this.f95777g = value;
            this.f95776f = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95778h.cancel();
            this.f95778h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95778h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            R r = this.f95777g;
            if (r != null) {
                this.f95777g = null;
                this.f95778h = SubscriptionHelper.CANCELLED;
                this.f95775e.onSuccess(r);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            if (this.f95777g == null) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.f95777g = null;
            this.f95778h = SubscriptionHelper.CANCELLED;
            this.f95775e.onError(e);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T value) {
            R r = this.f95777g;
            if (r != null) {
                try {
                    R apply = this.f95776f.apply(r, value);
                    Objects.requireNonNull(apply, "The reducer returned a null value");
                    this.f95777g = apply;
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f95778h.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95778h, s)) {
                this.f95778h = s;
                this.f95775e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableReduceSeedSingle(Publisher<T> source, R seed, BiFunction<R, ? super T, R> reducer) {
        this.f95772e = source;
        this.f95773f = seed;
        this.f95774g = reducer;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        this.f95772e.subscribe(new C17385a(observer, this.f95774g, this.f95773f));
    }
}
