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
public final class FlowableAllSingle<T> extends Single<Boolean> implements FuseToFlowable<Boolean> {

    /* renamed from: e */
    public final Flowable<T> f95349e;

    /* renamed from: f */
    public final Predicate<? super T> f95350f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableAllSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17324a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Boolean> f95351e;

        /* renamed from: f */
        public final Predicate<? super T> f95352f;

        /* renamed from: g */
        public Subscription f95353g;

        /* renamed from: h */
        public boolean f95354h;

        public C17324a(SingleObserver<? super Boolean> actual, Predicate<? super T> predicate) {
            this.f95351e = actual;
            this.f95352f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95353g.cancel();
            this.f95353g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95353g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95354h) {
                return;
            }
            this.f95354h = true;
            this.f95353g = SubscriptionHelper.CANCELLED;
            this.f95351e.onSuccess(Boolean.TRUE);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95354h) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95354h = true;
            this.f95353g = SubscriptionHelper.CANCELLED;
            this.f95351e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95354h) {
                return;
            }
            try {
                if (this.f95352f.test(t)) {
                    return;
                }
                this.f95354h = true;
                this.f95353g.cancel();
                this.f95353g = SubscriptionHelper.CANCELLED;
                this.f95351e.onSuccess(Boolean.FALSE);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95353g.cancel();
                this.f95353g = SubscriptionHelper.CANCELLED;
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95353g, s)) {
                this.f95353g = s;
                this.f95351e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableAllSingle(Flowable<T> source, Predicate<? super T> predicate) {
        this.f95349e = source;
        this.f95350f = predicate;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<Boolean> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableAll(this.f95349e, this.f95350f));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super Boolean> observer) {
        this.f95349e.subscribe((FlowableSubscriber) new C17324a(observer, this.f95350f));
    }
}
