package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable;
import io.reactivex.rxjava3.internal.fuseable.HasUpstreamCompletableSource;
import org.reactivestreams.Subscriber;

/* loaded from: classes10.dex */
public final class FlowableFromCompletable<T> extends Flowable<T> implements HasUpstreamCompletableSource {

    /* renamed from: f */
    public final CompletableSource f95617f;

    /* loaded from: classes10.dex */
    public static final class FromCompletableObserver<T> extends AbstractEmptyQueueFuseable<T> implements CompletableObserver {

        /* renamed from: e */
        public final Subscriber<? super T> f95618e;

        /* renamed from: f */
        public Disposable f95619f;

        public FromCompletableObserver(Subscriber<? super T> downstream) {
            this.f95618e = downstream;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.AbstractEmptyQueueFuseable, org.reactivestreams.Subscription
        public void cancel() {
            this.f95619f.dispose();
            this.f95619f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95619f = DisposableHelper.DISPOSED;
            this.f95618e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            this.f95619f = DisposableHelper.DISPOSED;
            this.f95618e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f95619f, d)) {
                this.f95619f = d;
                this.f95618e.onSubscribe(this);
            }
        }
    }

    public FlowableFromCompletable(CompletableSource source) {
        this.f95617f = source;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.HasUpstreamCompletableSource
    public CompletableSource source() {
        return this.f95617f;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> observer) {
        this.f95617f.subscribe(new FromCompletableObserver(observer));
    }
}
