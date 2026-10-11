package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToFlowable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableCollectWithCollectorSingle<T, A, R> extends Single<R> implements FuseToFlowable<R> {

    /* renamed from: e */
    public final Flowable<T> f95062e;

    /* renamed from: f */
    public final Collector<? super T, A, R> f95063f;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.FlowableCollectWithCollectorSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17288a<T, A, R> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super R> f95064e;

        /* renamed from: f */
        public final BiConsumer<A, T> f95065f;

        /* renamed from: g */
        public final Function<A, R> f95066g;

        /* renamed from: h */
        public Subscription f95067h;

        /* renamed from: i */
        public boolean f95068i;

        /* renamed from: j */
        public A f95069j;

        public C17288a(SingleObserver<? super R> downstream, A container, BiConsumer<A, T> accumulator, Function<A, R> finisher) {
            this.f95064e = downstream;
            this.f95069j = container;
            this.f95065f = accumulator;
            this.f95066g = finisher;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95067h.cancel();
            this.f95067h = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95067h == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f95068i) {
                return;
            }
            this.f95068i = true;
            this.f95067h = SubscriptionHelper.CANCELLED;
            A a = this.f95069j;
            this.f95069j = null;
            try {
                R apply = this.f95066g.apply(a);
                Objects.requireNonNull(apply, "The finisher returned a null value");
                this.f95064e.onSuccess(apply);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95064e.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable t) {
            if (this.f95068i) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f95068i = true;
            this.f95067h = SubscriptionHelper.CANCELLED;
            this.f95069j = null;
            this.f95064e.onError(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f95068i) {
                return;
            }
            try {
                this.f95065f.accept(this.f95069j, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95067h.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.FlowableSubscriber
        public void onSubscribe(@NonNull Subscription s) {
            if (SubscriptionHelper.validate(this.f95067h, s)) {
                this.f95067h = s;
                this.f95064e.onSubscribe(this);
                s.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableCollectWithCollectorSingle(Flowable<T> source, Collector<? super T, A, R> collector) {
        this.f95062e = source;
        this.f95063f = collector;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToFlowable
    public Flowable<R> fuseToFlowable() {
        return new FlowableCollectWithCollector(this.f95062e, this.f95063f);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(@NonNull SingleObserver<? super R> observer) {
        try {
            this.f95062e.subscribe((FlowableSubscriber) new C17288a(observer, this.f95063f.supplier().get(), this.f95063f.accumulator(), this.f95063f.finisher()));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
