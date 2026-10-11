package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class ObservableOnErrorReturn<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Function<? super Throwable, ? extends T> f96720e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableOnErrorReturn$a */
    /* loaded from: classes10.dex */
    public static final class C17520a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96721e;

        /* renamed from: f */
        public final Function<? super Throwable, ? extends T> f96722f;

        /* renamed from: g */
        public Disposable f96723g;

        public C17520a(Observer<? super T> actual, Function<? super Throwable, ? extends T> valueSupplier) {
            this.f96721e = actual;
            this.f96722f = valueSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96723g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96723g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96721e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            try {
                T apply = this.f96722f.apply(t);
                if (apply != null) {
                    this.f96721e.onNext(apply);
                    this.f96721e.onComplete();
                } else {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(t);
                    this.f96721e.onError(nullPointerException);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96721e.onError(new CompositeException(t, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96721e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96723g, d)) {
                this.f96723g = d;
                this.f96721e.onSubscribe(this);
            }
        }
    }

    public ObservableOnErrorReturn(ObservableSource<T> source, Function<? super Throwable, ? extends T> valueSupplier) {
        super(source);
        this.f96720e = valueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17520a(t, this.f96720e));
    }
}
