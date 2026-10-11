package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableZipIterable<T, U, V> extends Observable<V> {

    /* renamed from: e */
    public final Observable<? extends T> f96991e;

    /* renamed from: f */
    public final Iterable<U> f96992f;

    /* renamed from: g */
    public final BiFunction<? super T, ? super U, ? extends V> f96993g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableZipIterable$a */
    /* loaded from: classes10.dex */
    public static final class C17567a<T, U, V> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super V> f96994e;

        /* renamed from: f */
        public final Iterator<U> f96995f;

        /* renamed from: g */
        public final BiFunction<? super T, ? super U, ? extends V> f96996g;

        /* renamed from: h */
        public Disposable f96997h;

        /* renamed from: i */
        public boolean f96998i;

        public C17567a(Observer<? super V> actual, Iterator<U> iterator, BiFunction<? super T, ? super U, ? extends V> zipper) {
            this.f96994e = actual;
            this.f96995f = iterator;
            this.f96996g = zipper;
        }

        /* renamed from: a */
        public void m61257a(Throwable e) {
            this.f96998i = true;
            this.f96997h.dispose();
            this.f96994e.onError(e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96997h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96997h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96998i) {
                return;
            }
            this.f96998i = true;
            this.f96994e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96998i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96998i = true;
                this.f96994e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96998i) {
                return;
            }
            try {
                U next = this.f96995f.next();
                Objects.requireNonNull(next, "The iterator returned a null value");
                try {
                    V apply = this.f96996g.apply(t, next);
                    Objects.requireNonNull(apply, "The zipper function returned a null value");
                    this.f96994e.onNext(apply);
                    try {
                        if (this.f96995f.hasNext()) {
                            return;
                        }
                        this.f96998i = true;
                        this.f96997h.dispose();
                        this.f96994e.onComplete();
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        m61257a(th);
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    m61257a(th2);
                }
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                m61257a(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96997h, d)) {
                this.f96997h = d;
                this.f96994e.onSubscribe(this);
            }
        }
    }

    public ObservableZipIterable(Observable<? extends T> source, Iterable<U> other, BiFunction<? super T, ? super U, ? extends V> zipper) {
        this.f96991e = source;
        this.f96992f = other;
        this.f96993g = zipper;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super V> t) {
        try {
            Iterator<U> it2 = this.f96992f.iterator();
            Objects.requireNonNull(it2, "The iterator returned by other is null");
            Iterator<U> it3 = it2;
            try {
                if (it3.hasNext()) {
                    this.f96991e.subscribe(new C17567a(t, it3, this.f96993g));
                } else {
                    EmptyDisposable.complete(t);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, t);
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            EmptyDisposable.error(th2, t);
        }
    }
}
