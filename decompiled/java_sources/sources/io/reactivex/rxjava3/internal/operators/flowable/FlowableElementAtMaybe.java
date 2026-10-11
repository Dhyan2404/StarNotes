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
public final class FlowableElementAtMaybe<T> extends Maybe<T> implements FuseToFlowable<T> {

    /* renamed from: e */
    public final Flowable<T> f95564e;

    /* renamed from: f */
    public final long f95565f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17353a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f95566e;

        /* renamed from: f */
        public final long f95567f;

        /* renamed from: g */
        public Subscription f95568g;

        /* renamed from: h */
        public long f95569h;

        /* renamed from: i */
        public boolean f95570i;

        public C17353a(MaybeObserver<? super T> actual, long index) {
            this.f95566e = actual;
            this.f95567f = index;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95568g.cancel();
            this.f95568g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95568g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95568g = SubscriptionHelper.CANCELLED;
            if (this.f95570i) {
                return;
            }
            this.f95570i = true;
            this.f95566e.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95570i) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95570i = true;
            this.f95568g = SubscriptionHelper.CANCELLED;
            this.f95566e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95570i) {
                return;
            }
            long j = this.f95569h;
            if (j != this.f95567f) {
                this.f95569h = j + 1;
                return;
            }
            this.f95570i = true;
            this.f95568g.cancel();
            this.f95568g = SubscriptionHelper.CANCELLED;
            this.f95566e.onSuccess(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95568g, s)) {
                this.f95568g = s;
                this.f95566e.onSubscribe(this);
                s.request(this.f95567f + 1);
            }
        }
    }

    public FlowableElementAtMaybe(Flowable<T> source, long index) {
        this.f95564e = source;
        this.f95565f = index;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<T> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableElementAt(this.f95564e, this.f95565f, null, false));
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f95564e.subscribe((FlowableSubscriber) new C17353a(observer, this.f95565f));
    }
}
