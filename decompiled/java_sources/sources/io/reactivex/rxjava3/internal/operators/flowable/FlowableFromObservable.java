package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableFromObservable<T> extends Flowable<T> {

    /* renamed from: f */
    public final ObservableSource<T> f95624f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.FlowableFromObservable$a */
    /* loaded from: classes10.dex */
    public static final class C17357a<T> implements Observer<T>, Subscription {

        /* renamed from: e */
        public final Subscriber<? super T> f95625e;

        /* renamed from: f */
        public Disposable f95626f;

        public C17357a(Subscriber<? super T> s) {
            this.f95625e = s;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f95626f.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f95625e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            this.f95625e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
            this.f95625e.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f95626f = d;
            this.f95625e.onSubscribe(this);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
        }
    }

    public FlowableFromObservable(ObservableSource<T> upstream) {
        this.f95624f = upstream;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super T> s) {
        this.f95624f.subscribe(new C17357a(s));
    }
}
