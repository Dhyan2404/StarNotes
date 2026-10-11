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
public final class FlowableElementAtSingle<T> extends Single<T> implements FuseToFlowable<T> {

    /* renamed from: e */
    public final Flowable<T> f95573e;

    /* renamed from: f */
    public final long f95574f;

    /* renamed from: g */
    public final T f95575g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17354a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f95576e;

        /* renamed from: f */
        public final long f95577f;

        /* renamed from: g */
        public final T f95578g;

        /* renamed from: h */
        public Subscription f95579h;

        /* renamed from: i */
        public long f95580i;

        /* renamed from: j */
        public boolean f95581j;

        public C17354a(SingleObserver<? super T> actual, long index, T defaultValue) {
            this.f95576e = actual;
            this.f95577f = index;
            this.f95578g = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95579h.cancel();
            this.f95579h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95579h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95579h = SubscriptionHelper.CANCELLED;
            if (this.f95581j) {
                return;
            }
            this.f95581j = true;
            T t = this.f95578g;
            if (t != null) {
                this.f95576e.onSuccess(t);
            } else {
                this.f95576e.onError(new NoSuchElementException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95581j) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95581j = true;
            this.f95579h = SubscriptionHelper.CANCELLED;
            this.f95576e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95581j) {
                return;
            }
            long j = this.f95580i;
            if (j != this.f95577f) {
                this.f95580i = j + 1;
                return;
            }
            this.f95581j = true;
            this.f95579h.cancel();
            this.f95579h = SubscriptionHelper.CANCELLED;
            this.f95576e.onSuccess(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95579h, s)) {
                this.f95579h = s;
                this.f95576e.onSubscribe(this);
                s.request(this.f95577f + 1);
            }
        }
    }

    public FlowableElementAtSingle(Flowable<T> source, long index, T defaultValue) {
        this.f95573e = source;
        this.f95574f = index;
        this.f95575g = defaultValue;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<T> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableElementAt(this.f95573e, this.f95574f, this.f95575g, true));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f95573e.subscribe((FlowableSubscriber) new C17354a(observer, this.f95574f, this.f95575g));
    }
}
