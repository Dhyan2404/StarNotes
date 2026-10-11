package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableTakeUntilPredicate<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Predicate<? super T> f96891e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableTakeUntilPredicate$a */
    /* loaded from: classes10.dex */
    public static final class C17548a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96892e;

        /* renamed from: f */
        public final Predicate<? super T> f96893f;

        /* renamed from: g */
        public Disposable f96894g;

        /* renamed from: h */
        public boolean f96895h;

        public C17548a(Observer<? super T> downstream, Predicate<? super T> predicate) {
            this.f96892e = downstream;
            this.f96893f = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96894g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96894g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96895h) {
                return;
            }
            this.f96895h = true;
            this.f96892e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96895h) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96895h = true;
                this.f96892e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96895h) {
                return;
            }
            this.f96892e.onNext(t);
            try {
                if (this.f96893f.test(t)) {
                    this.f96895h = true;
                    this.f96894g.dispose();
                    this.f96892e.onComplete();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96894g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96894g, d)) {
                this.f96894g = d;
                this.f96892e.onSubscribe(this);
            }
        }
    }

    public ObservableTakeUntilPredicate(ObservableSource<T> source, Predicate<? super T> predicate) {
        super(source);
        this.f96891e = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new C17548a(observer, this.f96891e));
    }
}
