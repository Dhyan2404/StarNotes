package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableAny<T> extends AbstractC17568a<T, Boolean> {

    /* renamed from: e */
    public final Predicate<? super T> f96332e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableAny$a */
    /* loaded from: classes10.dex */
    public static final class C17464a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super Boolean> f96333e;

        /* renamed from: f */
        public final Predicate<? super T> f96334f;

        /* renamed from: g */
        public Disposable f96335g;

        /* renamed from: h */
        public boolean f96336h;

        public C17464a(Observer<? super Boolean> actual, Predicate<? super T> predicate) {
            this.f96333e = actual;
            this.f96334f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96335g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96335g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96336h) {
                return;
            }
            this.f96336h = true;
            this.f96333e.onNext(Boolean.FALSE);
            this.f96333e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96336h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96336h = true;
                this.f96333e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96336h) {
                return;
            }
            try {
                if (this.f96334f.test(t)) {
                    this.f96336h = true;
                    this.f96335g.dispose();
                    this.f96333e.onNext(Boolean.TRUE);
                    this.f96333e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96335g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96335g, d)) {
                this.f96335g = d;
                this.f96333e.onSubscribe(this);
            }
        }
    }

    public ObservableAny(ObservableSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96332e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Boolean> t) {
        this.source.subscribe(new C17464a(t, this.f96332e));
    }
}
