package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableAnySingle<T> extends Single<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: e */
    public final Flowable<T> f95361e;

    /* renamed from: f */
    public final Predicate<? super T> f95362f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableAnySingle$a */
    /* loaded from: classes10.dex */
    public static final class C17326a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Boolean> f95363e;

        /* renamed from: f */
        public final Predicate<? super T> f95364f;

        /* renamed from: g */
        public Subscription f95365g;

        /* renamed from: h */
        public boolean f95366h;

        public C17326a(SingleObserver<? super Boolean> actual, Predicate<? super T> predicate) {
            this.f95363e = actual;
            this.f95364f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95365g.cancel();
            this.f95365g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95365g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95366h) {
                return;
            }
            this.f95366h = true;
            this.f95365g = SubscriptionHelper.CANCELLED;
            this.f95363e.onSuccess(Boolean.FALSE);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95366h) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95366h = true;
            this.f95365g = SubscriptionHelper.CANCELLED;
            this.f95363e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95366h) {
                return;
            }
            try {
                if (this.f95364f.test(t)) {
                    this.f95366h = true;
                    this.f95365g.cancel();
                    this.f95365g = SubscriptionHelper.CANCELLED;
                    this.f95363e.onSuccess(Boolean.TRUE);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95365g.cancel();
                this.f95365g = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95365g, s)) {
                this.f95365g = s;
                this.f95363e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableAnySingle(Flowable<T> source, Predicate<? super T> predicate) {
        this.f95361e = source;
        this.f95362f = predicate;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<Boolean> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableAny(this.f95361e, this.f95362f));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Boolean> observer) {
        this.f95361e.subscribe((FlowableSubscriber) new C17326a(observer, this.f95362f));
    }
}
