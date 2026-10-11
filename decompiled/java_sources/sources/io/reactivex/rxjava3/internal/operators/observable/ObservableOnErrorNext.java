package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class ObservableOnErrorNext<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Function<? super Throwable, ? extends ObservableSource<? extends T>> f96714e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableOnErrorNext$a */
    /* loaded from: classes10.dex */
    public static final class C17519a<T> implements Observer<T> {

        /* renamed from: e */
        public final Observer<? super T> f96715e;

        /* renamed from: f */
        public final Function<? super Throwable, ? extends ObservableSource<? extends T>> f96716f;

        /* renamed from: g */
        public final SequentialDisposable f96717g = new SequentialDisposable();

        /* renamed from: h */
        public boolean f96718h;

        /* renamed from: i */
        public boolean f96719i;

        public C17519a(Observer<? super T> actual, Function<? super Throwable, ? extends ObservableSource<? extends T>> nextSupplier) {
            this.f96715e = actual;
            this.f96716f = nextSupplier;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96719i) {
                return;
            }
            this.f96719i = true;
            this.f96718h = true;
            this.f96715e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96718h) {
                if (this.f96719i) {
                    RxJavaPlugins.onError(t);
                    return;
                } else {
                    this.f96715e.onError(t);
                    return;
                }
            }
            this.f96718h = true;
            try {
                ObservableSource<? extends T> apply = this.f96716f.apply(t);
                if (apply != null) {
                    apply.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(t);
                this.f96715e.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96715e.onError(new CompositeException(t, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96719i) {
                return;
            }
            this.f96715e.onNext(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            this.f96717g.replace(d);
        }
    }

    public ObservableOnErrorNext(ObservableSource<T> source, Function<? super Throwable, ? extends ObservableSource<? extends T>> nextSupplier) {
        super(source);
        this.f96714e = nextSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        C17519a c17519a = new C17519a(t, this.f96714e);
        t.onSubscribe(c17519a.f96717g);
        this.source.subscribe(c17519a);
    }
}
