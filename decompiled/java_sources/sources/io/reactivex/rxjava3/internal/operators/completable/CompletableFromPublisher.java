package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class CompletableFromPublisher<T> extends Completable {

    /* renamed from: e */
    public final Publisher<T> f95247e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableFromPublisher$a */
    /* loaded from: classes10.dex */
    public static final class C17309a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final CompletableObserver f95248e;

        /* renamed from: f */
        public Subscription f95249f;

        public C17309a(CompletableObserver downstream) {
            this.f95248e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95249f.cancel();
            this.f95249f = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95249f == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95248e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95248e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95249f, s)) {
                this.f95249f = s;
                this.f95248e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public CompletableFromPublisher(Publisher<T> flowable) {
        this.f95247e = flowable;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver downstream) {
        this.f95247e.subscribe(new C17309a(downstream));
    }
}
