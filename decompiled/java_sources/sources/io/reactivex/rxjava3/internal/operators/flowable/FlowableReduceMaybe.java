package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableReduceMaybe<T> extends Maybe<T> implements HasUpstreamPublisher<T>, FuseToFlowable<T> {

    /* renamed from: e */
    public final Flowable<T> f95765e;

    /* renamed from: f */
    public final BiFunction<T, T, T> f95766f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableReduceMaybe$a */
    /* loaded from: classes10.dex */
    public static final class C17384a<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super T> f95767e;

        /* renamed from: f */
        public final BiFunction<T, T, T> f95768f;

        /* renamed from: g */
        public T f95769g;

        /* renamed from: h */
        public Subscription f95770h;

        /* renamed from: i */
        public boolean f95771i;

        public C17384a(MaybeObserver<? super T> actual, BiFunction<T, T, T> reducer) {
            this.f95767e = actual;
            this.f95768f = reducer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95770h.cancel();
            this.f95771i = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95771i;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95771i) {
                return;
            }
            this.f95771i = true;
            T t = this.f95769g;
            if (t != null) {
                this.f95767e.onSuccess(t);
            } else {
                this.f95767e.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95771i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f95771i = true;
                this.f95767e.onError(t);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95771i) {
                return;
            }
            T t2 = this.f95769g;
            if (t2 == null) {
                this.f95769g = t;
                return;
            }
            try {
                T apply = this.f95768f.apply(t2, t);
                Objects.requireNonNull(apply, "The reducer returned a null value");
                this.f95769g = apply;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95770h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(Subscription s) {
            if (SubscriptionHelper.validate(this.f95770h, s)) {
                this.f95770h = s;
                this.f95767e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableReduceMaybe(Flowable<T> source, BiFunction<T, T, T> reducer) {
        this.f95765e = source;
        this.f95766f = reducer;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<T> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableReduce(this.f95765e, this.f95766f));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.f95765e;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        this.f95765e.subscribe((FlowableSubscriber) new C17384a(observer, this.f95766f));
    }
}
