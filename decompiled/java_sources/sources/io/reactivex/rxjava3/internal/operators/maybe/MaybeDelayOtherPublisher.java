package io.reactivex.rxjava3.internal.operators.maybe;

import com.sunia.HTREnginev2.AbstractC13470a4;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class MaybeDelayOtherPublisher<T, U> extends AbstractC13470a4<T, T> {

    /* renamed from: e */
    public final Publisher<U> f96029e;

    /* loaded from: classes10.dex */
    public static final class OtherSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = -1215060610805418006L;
        final MaybeObserver<? super T> downstream;
        Throwable error;
        T value;

        public OtherSubscriber(MaybeObserver<? super T> downstream) {
            this.downstream = downstream;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Throwable th = this.error;
            if (th != null) {
                this.downstream.onError(th);
                return;
            }
            T t = this.value;
            if (t != null) {
                this.downstream.onSuccess(t);
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            Throwable th = this.error;
            if (th == null) {
                this.downstream.onError(t);
            } else {
                this.downstream.onError(new CompositeException(th, t));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object t) {
            Subscription subscription = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                lazySet(subscriptionHelper);
                subscription.cancel();
                onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            SubscriptionHelper.setOnce(this, s, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeDelayOtherPublisher$a */
    /* loaded from: classes10.dex */
    public static final class C17423a<T, U> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final OtherSubscriber<T> f96030e;

        /* renamed from: f */
        public final Publisher<U> f96031f;

        /* renamed from: g */
        public Disposable f96032g;

        public C17423a(MaybeObserver<? super T> actual, Publisher<U> otherSource) {
            this.f96030e = new OtherSubscriber<>(actual);
            this.f96031f = otherSource;
        }

        /* renamed from: a */
        public void m61199a() {
            this.f96031f.subscribe(this.f96030e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96032g.dispose();
            this.f96032g = DisposableHelper.DISPOSED;
            SubscriptionHelper.cancel(this.f96030e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96030e.get() == SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96032g = DisposableHelper.DISPOSED;
            m61199a();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96032g = DisposableHelper.DISPOSED;
            this.f96030e.error = e;
            m61199a();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96032g, d)) {
                this.f96032g = d;
                this.f96030e.downstream.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f96032g = DisposableHelper.DISPOSED;
            this.f96030e.value = value;
            m61199a();
        }
    }

    public MaybeDelayOtherPublisher(MaybeSource<T> source, Publisher<U> other) {
        super(source);
        this.f96029e = other;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.source.subscribe(new C17423a(observer, this.f96029e));
    }
}
