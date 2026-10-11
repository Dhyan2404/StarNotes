package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableTakeWhile<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Predicate<? super T> f96896e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableTakeWhile$a */
    /* loaded from: classes10.dex */
    public static final class C17549a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96897e;

        /* renamed from: f */
        public final Predicate<? super T> f96898f;

        /* renamed from: g */
        public Disposable f96899g;

        /* renamed from: h */
        public boolean f96900h;

        public C17549a(Observer<? super T> actual, Predicate<? super T> predicate) {
            this.f96897e = actual;
            this.f96898f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96899g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96899g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96900h) {
                return;
            }
            this.f96900h = true;
            this.f96897e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96900h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96900h = true;
                this.f96897e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96900h) {
                return;
            }
            try {
                if (this.f96898f.test(t)) {
                    this.f96897e.onNext(t);
                    return;
                }
                this.f96900h = true;
                this.f96899g.dispose();
                this.f96897e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96899g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96899g, d)) {
                this.f96899g = d;
                this.f96897e.onSubscribe(this);
            }
        }
    }

    public ObservableTakeWhile(ObservableSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96896e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17549a(t, this.f96896e));
    }
}
