package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableDelaySubscriptionOther<T, U> extends Observable<T> {

    /* renamed from: e */
    public final ObservableSource<? extends T> f96499e;

    /* renamed from: f */
    public final ObservableSource<U> f96500f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDelaySubscriptionOther$a */
    /* loaded from: classes10.dex */
    public final class C17480a implements Observer<U> {

        /* renamed from: e */
        public final SequentialDisposable f96501e;

        /* renamed from: f */
        public final Observer<? super T> f96502f;

        /* renamed from: g */
        public boolean f96503g;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDelaySubscriptionOther$a$a */
        /* loaded from: classes10.dex */
        public final class a implements Observer<T> {
            public a() {
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onComplete() {
                C17480a.this.f96502f.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onError(Throwable e) {
                C17480a.this.f96502f.onError(e);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onNext(T value) {
                C17480a.this.f96502f.onNext(value);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onSubscribe(Disposable d) {
                C17480a.this.f96501e.update(d);
            }
        }

        public C17480a(SequentialDisposable serial, Observer<? super T> child) {
            this.f96501e = serial;
            this.f96502f = child;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96503g) {
                return;
            }
            this.f96503g = true;
            ObservableDelaySubscriptionOther.this.f96499e.subscribe(new a());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            if (this.f96503g) {
                RxJavaPlugins.onError(e);
            } else {
                this.f96503g = true;
                this.f96502f.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(U t) {
            onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f96501e.update(d);
        }
    }

    public ObservableDelaySubscriptionOther(ObservableSource<? extends T> main, ObservableSource<U> other) {
        this.f96499e = main;
        this.f96500f = other;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(final Observer<? super T> child) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        child.onSubscribe(sequentialDisposable);
        this.f96500f.subscribe(new C17480a(sequentialDisposable, child));
    }
}
