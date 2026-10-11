package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableCollectSingle<T, U> extends Single<U> implements FuseToFlowable<U> {

    /* renamed from: e */
    public final Flowable<T> f95442e;

    /* renamed from: f */
    public final Supplier<? extends U> f95443f;

    /* renamed from: g */
    public final BiConsumer<? super U, ? super T> f95444g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableCollectSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17334a<T, U> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super U> f95445e;

        /* renamed from: f */
        public final BiConsumer<? super U, ? super T> f95446f;

        /* renamed from: g */
        public final U f95447g;

        /* renamed from: h */
        public Subscription f95448h;

        /* renamed from: i */
        public boolean f95449i;

        public C17334a(SingleObserver<? super U> actual, U u, BiConsumer<? super U, ? super T> collector) {
            this.f95445e = actual;
            this.f95446f = collector;
            this.f95447g = u;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95448h.cancel();
            this.f95448h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95448h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95449i) {
                return;
            }
            this.f95449i = true;
            this.f95448h = SubscriptionHelper.CANCELLED;
            this.f95445e.onSuccess(this.f95447g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95449i) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95449i = true;
            this.f95448h = SubscriptionHelper.CANCELLED;
            this.f95445e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95449i) {
                return;
            }
            try {
                this.f95446f.accept(this.f95447g, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95448h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95448h, s)) {
                this.f95448h = s;
                this.f95445e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableCollectSingle(Flowable<T> source, Supplier<? extends U> initialSupplier, BiConsumer<? super U, ? super T> collector) {
        this.f95442e = source;
        this.f95443f = initialSupplier;
        this.f95444g = collector;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<U> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableCollect(this.f95442e, this.f95443f, this.f95444g));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super U> observer) {
        try {
            U u = this.f95443f.get();
            Objects.requireNonNull(u, "The initialSupplier returned a null value");
            this.f95442e.subscribe((FlowableSubscriber) new C17334a(observer, u, this.f95444g));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
