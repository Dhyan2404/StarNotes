package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class MaybeDelaySubscriptionOtherPublisher<T, U> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Publisher<U> f96033e;

    /* loaded from: classes10.dex */
    public static final class DelayMaybeObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
        private static final long serialVersionUID = 706635022205076709L;
        final MaybeObserver<? super T> downstream;

        public DelayMaybeObserver(MaybeObserver<? super T> downstream) {
            this.downstream = downstream;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this, d);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.downstream.onSuccess(value);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDelaySubscriptionOtherPublisher$a */
    /* loaded from: classes10.dex */
    public static final class C17424a<T> implements FlowableSubscriber<Object>, Disposable {

        /* renamed from: e */
        public final DelayMaybeObserver<T> f96034e;

        /* renamed from: f */
        public MaybeSource<T> f96035f;

        /* renamed from: g */
        public Subscription f96036g;

        public C17424a(MaybeObserver<? super T> actual, MaybeSource<T> source) {
            this.f96034e = new DelayMaybeObserver<>(actual);
            this.f96035f = source;
        }

        /* renamed from: a */
        public void m61200a() {
            MaybeSource<T> maybeSource = this.f96035f;
            this.f96035f = null;
            maybeSource.subscribe(this.f96034e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96036g.cancel();
            this.f96036g = SubscriptionHelper.CANCELLED;
            DisposableHelper.dispose(this.f96034e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f96034e.get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = this.f96036g;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                this.f96036g = subscriptionHelper;
                m61200a();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            Subscription subscription = this.f96036g;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription == subscriptionHelper) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96036g = subscriptionHelper;
                this.f96034e.downstream.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object t) {
            Subscription subscription = this.f96036g;
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                subscription.cancel();
                this.f96036g = subscriptionHelper;
                m61200a();
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f96036g, s)) {
                this.f96036g = s;
                this.f96034e.downstream.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public MaybeDelaySubscriptionOtherPublisher(MaybeSource<T> source, Publisher<U> other) {
        super(source);
        this.f96033e = other;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f96033e.subscribe(new C17424a(observer, this.source));
    }
}
