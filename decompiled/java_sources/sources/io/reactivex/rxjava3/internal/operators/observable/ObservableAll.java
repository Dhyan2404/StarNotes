package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableAll<T> extends AbstractC17568a<T, Boolean> {

    /* renamed from: e */
    public final Predicate<? super T> f96316e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableAll$a */
    /* loaded from: classes10.dex */
    public static final class C17461a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super Boolean> f96317e;

        /* renamed from: f */
        public final Predicate<? super T> f96318f;

        /* renamed from: g */
        public Disposable f96319g;

        /* renamed from: h */
        public boolean f96320h;

        public C17461a(Observer<? super Boolean> actual, Predicate<? super T> predicate) {
            this.f96317e = actual;
            this.f96318f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96319g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96319g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96320h) {
                return;
            }
            this.f96320h = true;
            this.f96317e.onNext(Boolean.TRUE);
            this.f96317e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96320h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96320h = true;
                this.f96317e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96320h) {
                return;
            }
            try {
                if (this.f96318f.test(t)) {
                    return;
                }
                this.f96320h = true;
                this.f96319g.dispose();
                this.f96317e.onNext(Boolean.FALSE);
                this.f96317e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96319g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96319g, d)) {
                this.f96319g = d;
                this.f96317e.onSubscribe(this);
            }
        }
    }

    public ObservableAll(ObservableSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96316e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Boolean> t) {
        this.source.subscribe(new C17461a(t, this.f96316e));
    }
}
