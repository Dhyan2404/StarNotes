package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class SingleFromPublisher<T> extends Single<T> {

    /* renamed from: e */
    public final Publisher<? extends T> f97231e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleFromPublisher$a */
    /* loaded from: classes10.dex */
    public static final class C17604a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f97232e;

        /* renamed from: f */
        public Subscription f97233f;

        /* renamed from: g */
        public T f97234g;

        /* renamed from: h */
        public boolean f97235h;

        /* renamed from: i */
        public volatile boolean f97236i;

        public C17604a(SingleObserver<? super T> downstream) {
            this.f97232e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97236i = true;
            this.f97233f.cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97236i;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f97235h) {
                return;
            }
            this.f97235h = true;
            T t = this.f97234g;
            this.f97234g = null;
            if (t == null) {
                this.f97232e.onError(new NoSuchElementException("The source Publisher is empty"));
            } else {
                this.f97232e.onSuccess(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f97235h) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f97235h = true;
            this.f97234g = null;
            this.f97232e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f97235h) {
                return;
            }
            if (this.f97234g == null) {
                this.f97234g = t;
                return;
            }
            this.f97233f.cancel();
            this.f97235h = true;
            this.f97234g = null;
            this.f97232e.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f97233f, s)) {
                this.f97233f = s;
                this.f97232e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public SingleFromPublisher(Publisher<? extends T> publisher) {
        this.f97231e = publisher;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        this.f97231e.subscribe(new C17604a(observer));
    }
}
