package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableLastSingle<T> extends Single<T> {

    /* renamed from: e */
    public final Publisher<T> f95696e;

    /* renamed from: f */
    public final T f95697f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableLastSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17378a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f95698e;

        /* renamed from: f */
        public final T f95699f;

        /* renamed from: g */
        public Subscription f95700g;

        /* renamed from: h */
        public T f95701h;

        public C17378a(SingleObserver<? super T> actual, T defaultItem) {
            this.f95698e = actual;
            this.f95699f = defaultItem;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95700g.cancel();
            this.f95700g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95700g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95700g = SubscriptionHelper.CANCELLED;
            T t = this.f95701h;
            if (t != null) {
                this.f95701h = null;
                this.f95698e.onSuccess(t);
                return;
            }
            T t2 = this.f95699f;
            if (t2 != null) {
                this.f95698e.onSuccess(t2);
            } else {
                this.f95698e.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95700g = SubscriptionHelper.CANCELLED;
            this.f95701h = null;
            this.f95698e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f95701h = t;
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95700g, s)) {
                this.f95700g = s;
                this.f95698e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableLastSingle(Publisher<T> source, T defaultItem) {
        this.f95696e = source;
        this.f95697f = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f95696e.subscribe(new C17378a(observer, this.f95697f));
    }
}
