package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableOnErrorComplete<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Predicate<? super Throwable> f96710e;

    /* loaded from: classes10.dex */
    public static final class OnErrorCompleteObserver<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96711e;

        /* renamed from: f */
        public final Predicate<? super Throwable> f96712f;

        /* renamed from: g */
        public Disposable f96713g;

        public OnErrorCompleteObserver(Observer<? super T> actual, Predicate<? super Throwable> predicate) {
            this.f96711e = actual;
            this.f96712f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96713g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96713g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96711e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            try {
                if (this.f96712f.test(e)) {
                    this.f96711e.onComplete();
                } else {
                    this.f96711e.onError(e);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96711e.onError(new CompositeException(e, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
            this.f96711e.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96713g, d)) {
                this.f96713g = d;
                this.f96711e.onSubscribe(this);
            }
        }
    }

    public ObservableOnErrorComplete(ObservableSource<T> source, Predicate<? super Throwable> predicate) {
        super(source);
        this.f96710e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new OnErrorCompleteObserver(observer, this.f96710e));
    }
}
