package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableSingleSingle<T> extends Single<T> implements FuseToFlowable<T> {

    /* renamed from: e */
    public final Flowable<T> f95855e;

    /* renamed from: f */
    public final T f95856f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableSingleSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17397a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f95857e;

        /* renamed from: f */
        public final T f95858f;

        /* renamed from: g */
        public Subscription f95859g;

        /* renamed from: h */
        public boolean f95860h;

        /* renamed from: i */
        public T f95861i;

        public C17397a(SingleObserver<? super T> actual, T defaultValue) {
            this.f95857e = actual;
            this.f95858f = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95859g.cancel();
            this.f95859g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95859g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95860h) {
                return;
            }
            this.f95860h = true;
            this.f95859g = SubscriptionHelper.CANCELLED;
            T t = this.f95861i;
            this.f95861i = null;
            if (t == null) {
                t = this.f95858f;
            }
            if (t != null) {
                this.f95857e.onSuccess(t);
            } else {
                this.f95857e.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95860h) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95860h = true;
            this.f95859g = SubscriptionHelper.CANCELLED;
            this.f95857e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95860h) {
                return;
            }
            if (this.f95861i == null) {
                this.f95861i = t;
                return;
            }
            this.f95860h = true;
            this.f95859g.cancel();
            this.f95859g = SubscriptionHelper.CANCELLED;
            this.f95857e.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95859g, s)) {
                this.f95859g = s;
                this.f95857e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableSingleSingle(Flowable<T> source, T defaultValue) {
        this.f95855e = source;
        this.f95856f = defaultValue;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<T> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableSingle(this.f95855e, this.f95856f, true));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f95855e.subscribe((FlowableSubscriber) new C17397a(observer, this.f95856f));
    }
}
