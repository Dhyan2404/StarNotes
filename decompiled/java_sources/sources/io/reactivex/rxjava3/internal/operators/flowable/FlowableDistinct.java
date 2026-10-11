package io.reactivex.rxjava3.internal.operators.flowable;

import com.sunia.HTREnginev2.AbstractC14025l3;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.Objects;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableDistinct<T, K> extends AbstractC14025l3<T, T> {

    /* renamed from: f */
    public final Function<? super T, K> f95521f;

    /* renamed from: g */
    public final Supplier<? extends Collection<? super K>> f95522g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableDistinct$a */
    /* loaded from: classes10.dex */
    public static final class C17345a<T, K> extends BasicFuseableSubscriber<T, T> {

        /* renamed from: e */
        public final Collection<? super K> f95523e;

        /* renamed from: f */
        public final Function<? super T, K> f95524f;

        public C17345a(Subscriber<? super T> actual, Function<? super T, K> keySelector, Collection<? super K> collection) {
            super(actual);
            this.f95524f = keySelector;
            this.f95523e = collection;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            this.f95523e.clear();
            super.clear();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.f95523e.clear();
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.BasicFuseableSubscriber, org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            if (this.done) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.done = true;
            this.f95523e.clear();
            this.downstream.onError(e);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T value) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                K apply = this.f95524f.apply(value);
                Objects.requireNonNull(apply, "The keySelector returned a null key");
                if (this.f95523e.add(apply)) {
                    this.downstream.onNext(value);
                } else {
                    this.upstream.request(1L);
                }
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            T poll;
            while (true) {
                poll = this.f97405qs.poll();
                if (poll == null) {
                    break;
                }
                Collection<? super K> collection = this.f95523e;
                K apply = this.f95524f.apply(poll);
                Objects.requireNonNull(apply, "The keySelector returned a null key");
                if (collection.add(apply)) {
                    break;
                }
                if (this.sourceMode == 2) {
                    this.upstream.request(1L);
                }
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public FlowableDistinct(Flowable<T> source, Function<? super T, K> keySelector, Supplier<? extends Collection<? super K>> collectionSupplier) {
        super(source);
        this.f95521f = keySelector;
        this.f95522g = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> subscriber) {
        try {
            this.source.subscribe((FlowableSubscriber) new C17345a(subscriber, this.f95521f, (Collection) ExceptionHelper.nullCheck(this.f95522g.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
