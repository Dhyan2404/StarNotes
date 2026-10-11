package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableSkipWhile<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Predicate<? super T> f96859e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableSkipWhile$a */
    /* loaded from: classes10.dex */
    public static final class C17543a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96860e;

        /* renamed from: f */
        public final Predicate<? super T> f96861f;

        /* renamed from: g */
        public Disposable f96862g;

        /* renamed from: h */
        public boolean f96863h;

        public C17543a(Observer<? super T> actual, Predicate<? super T> predicate) {
            this.f96860e = actual;
            this.f96861f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96862g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96862g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96860e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96860e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96863h) {
                this.f96860e.onNext(t);
                return;
            }
            try {
                if (this.f96861f.test(t)) {
                    return;
                }
                this.f96863h = true;
                this.f96860e.onNext(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96862g.dispose();
                this.f96860e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96862g, d)) {
                this.f96862g = d;
                this.f96860e.onSubscribe(this);
            }
        }
    }

    public ObservableSkipWhile(ObservableSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96859e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17543a(observer, this.f96859e));
    }
}
