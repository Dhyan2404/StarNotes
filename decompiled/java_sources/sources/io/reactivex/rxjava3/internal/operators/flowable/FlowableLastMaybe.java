package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableLastMaybe<T> extends Maybe<T> {

    /* renamed from: e */
    public final Publisher<T> f95692e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableLastMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17377a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f95693e;

        /* renamed from: f */
        public Subscription f95694f;

        /* renamed from: g */
        public T f95695g;

        public C17377a(MaybeObserver<? super T> downstream) {
            this.f95693e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95694f.cancel();
            this.f95694f = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95694f == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95694f = SubscriptionHelper.CANCELLED;
            T t = this.f95695g;
            if (t == null) {
                this.f95693e.onComplete();
            } else {
                this.f95695g = null;
                this.f95693e.onSuccess(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95694f = SubscriptionHelper.CANCELLED;
            this.f95695g = null;
            this.f95693e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f95695g = t;
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95694f, s)) {
                this.f95694f = s;
                this.f95693e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableLastMaybe(Publisher<T> source) {
        this.f95692e = source;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f95692e.subscribe(new C17377a(observer));
    }
}
