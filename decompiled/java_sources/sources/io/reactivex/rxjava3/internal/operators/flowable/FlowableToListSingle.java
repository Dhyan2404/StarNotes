package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Collection;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableToListSingle<T, U extends Collection<? super T>> extends Single<U> implements FuseToFlowable<U> {

    /* renamed from: e */
    public final Flowable<T> f95942e;

    /* renamed from: f */
    public final Supplier<U> f95943f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableToListSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17409a<T, U extends Collection<? super T>> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super U> f95944e;

        /* renamed from: f */
        public Subscription f95945f;

        /* renamed from: g */
        public U f95946g;

        public C17409a(SingleObserver<? super U> actual, U collection) {
            this.f95944e = actual;
            this.f95946g = collection;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95945f.cancel();
            this.f95945f = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95945f == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95945f = SubscriptionHelper.CANCELLED;
            this.f95944e.onSuccess(this.f95946g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            this.f95946g = null;
            this.f95945f = SubscriptionHelper.CANCELLED;
            this.f95944e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f95946g.add(t);
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95945f, s)) {
                this.f95945f = s;
                this.f95944e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableToListSingle(Flowable<T> source) {
        this(source, ArrayListSupplier.asSupplier());
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<U> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableToList(this.f95942e, this.f95943f));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super U> observer) {
        try {
            this.f95942e.subscribe((FlowableSubscriber) new C17409a(observer, (Collection) ExceptionHelper.nullCheck(this.f95943f.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }

    public FlowableToListSingle(Flowable<T> source, Supplier<U> collectionSupplier) {
        this.f95942e = source;
        this.f95943f = collectionSupplier;
    }
}
