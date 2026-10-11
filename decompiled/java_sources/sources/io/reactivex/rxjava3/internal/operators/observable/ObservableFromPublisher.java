package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class ObservableFromPublisher<T> extends Observable<T> {

    /* renamed from: e */
    public final Publisher<? extends T> f96608e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableFromPublisher$a */
    /* loaded from: classes10.dex */
    public static final class C17494a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96609e;

        /* renamed from: f */
        public Subscription f96610f;

        public C17494a(Observer<? super T> o) {
            this.f96609e = o;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96610f.cancel();
            this.f96610f = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96610f == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f96609e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f96609e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f96609e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f96610f, s)) {
                this.f96610f = s;
                this.f96609e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public ObservableFromPublisher(Publisher<? extends T> publisher) {
        this.f96608e = publisher;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(final Observer<? super T> o) {
        this.f96608e.subscribe(new C17494a(o));
    }
}
