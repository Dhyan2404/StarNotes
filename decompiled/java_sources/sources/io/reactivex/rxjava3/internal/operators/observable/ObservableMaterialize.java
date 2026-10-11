package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableMaterialize<T> extends AbstractC17568a<T, Notification<T>> {

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableMaterialize$a */
    /* loaded from: classes10.dex */
    public static final class C17518a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super Notification<T>> f96702e;

        /* renamed from: f */
        public Disposable f96703f;

        public C17518a(Observer<? super Notification<T>> downstream) {
            this.f96702e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96703f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96703f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96702e.onNext(Notification.createOnComplete());
            this.f96702e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96702e.onNext(Notification.createOnError(t));
            this.f96702e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96702e.onNext(Notification.createOnNext(t));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96703f, d)) {
                this.f96703f = d;
                this.f96702e.onSubscribe(this);
            }
        }
    }

    public ObservableMaterialize(ObservableSource<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Notification<T>> t) {
        this.source.subscribe(new C17518a(t));
    }
}
