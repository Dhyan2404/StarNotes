package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableDoOnEach<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Consumer<? super T> f96527e;

    /* renamed from: f */
    public final Consumer<? super Throwable> f96528f;

    /* renamed from: g */
    public final Action f96529g;

    /* renamed from: h */
    public final Action f96530h;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDoOnEach$a */
    /* loaded from: classes10.dex */
    public static final class C17486a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96531e;

        /* renamed from: f */
        public final Consumer<? super T> f96532f;

        /* renamed from: g */
        public final Consumer<? super Throwable> f96533g;

        /* renamed from: h */
        public final Action f96534h;

        /* renamed from: i */
        public final Action f96535i;

        /* renamed from: j */
        public Disposable f96536j;

        /* renamed from: k */
        public boolean f96537k;

        public C17486a(Observer<? super T> actual, Consumer<? super T> onNext, Consumer<? super Throwable> onError, Action onComplete, Action onAfterTerminate) {
            this.f96531e = actual;
            this.f96532f = onNext;
            this.f96533g = onError;
            this.f96534h = onComplete;
            this.f96535i = onAfterTerminate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96536j.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96536j.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96537k) {
                return;
            }
            try {
                this.f96534h.run();
                this.f96537k = true;
                this.f96531e.onComplete();
                try {
                    this.f96535i.run();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaPlugins.onError(th);
                }
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96537k) {
                RxJavaPlugins.onError(t);
                return;
            }
            this.f96537k = true;
            try {
                this.f96533g.accept(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                t = new CompositeException(t, th);
            }
            this.f96531e.onError(t);
            try {
                this.f96535i.run();
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96537k) {
                return;
            }
            try {
                this.f96532f.accept(t);
                this.f96531e.onNext(t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96536j.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96536j, d)) {
                this.f96536j = d;
                this.f96531e.onSubscribe(this);
            }
        }
    }

    public ObservableDoOnEach(ObservableSource<T> source, Consumer<? super T> onNext, Consumer<? super Throwable> onError, Action onComplete, Action onAfterTerminate) {
        super(source);
        this.f96527e = onNext;
        this.f96528f = onError;
        this.f96529g = onComplete;
        this.f96530h = onAfterTerminate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17486a(t, this.f96527e, this.f96528f, this.f96529g, this.f96530h));
    }
}
