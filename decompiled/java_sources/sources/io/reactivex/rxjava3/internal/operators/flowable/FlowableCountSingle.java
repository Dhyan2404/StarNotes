package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableCountSingle<T> extends Single<Long> implements FuseToFlowable<Long> {

    /* renamed from: e */
    public final Flowable<T> f95479e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableCountSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17339a implements FlowableSubscriber<Object>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Long> f95480e;

        /* renamed from: f */
        public Subscription f95481f;

        /* renamed from: g */
        public long f95482g;

        public C17339a(SingleObserver<? super Long> downstream) {
            this.f95480e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95481f.cancel();
            this.f95481f = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95481f == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95481f = SubscriptionHelper.CANCELLED;
            this.f95480e.onSuccess(Long.valueOf(this.f95482g));
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95481f = SubscriptionHelper.CANCELLED;
            this.f95480e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object t) {
            this.f95482g++;
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95481f, s)) {
                this.f95481f = s;
                this.f95480e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableCountSingle(Flowable<T> source) {
        this.f95479e = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<Long> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableCount(this.f95479e));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Long> observer) {
        this.f95479e.subscribe((FlowableSubscriber) new C17339a(observer));
    }
}
