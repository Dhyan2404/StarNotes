package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSingleMaybe<T> extends Maybe<T> implements FuseToFlowable<T> {

    /* renamed from: e */
    public final Flowable<T> f95850e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableSingleMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17396a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f95851e;

        /* renamed from: f */
        public Subscription f95852f;

        /* renamed from: g */
        public boolean f95853g;

        /* renamed from: h */
        public T f95854h;

        public C17396a(MaybeObserver<? super T> downstream) {
            this.f95851e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95852f.cancel();
            this.f95852f = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95852f == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95853g) {
                return;
            }
            this.f95853g = true;
            this.f95852f = SubscriptionHelper.CANCELLED;
            T t = this.f95854h;
            this.f95854h = null;
            if (t == null) {
                this.f95851e.onComplete();
            } else {
                this.f95851e.onSuccess(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95853g) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95853g = true;
            this.f95852f = SubscriptionHelper.CANCELLED;
            this.f95851e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95853g) {
                return;
            }
            if (this.f95854h == null) {
                this.f95854h = t;
                return;
            }
            this.f95853g = true;
            this.f95852f.cancel();
            this.f95852f = SubscriptionHelper.CANCELLED;
            this.f95851e.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95852f, s)) {
                this.f95852f = s;
                this.f95851e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableSingleMaybe(Flowable<T> source) {
        this.f95850e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<T> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableSingle(this.f95850e, null, false));
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f95850e.subscribe((FlowableSubscriber) new C17396a(observer));
    }
}
