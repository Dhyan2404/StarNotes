package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableAmb<T> extends Observable<T> {

    /* renamed from: e */
    public final ObservableSource<? extends T>[] f96327e;

    /* renamed from: f */
    public final Iterable<? extends ObservableSource<? extends T>> f96328f;

    /* loaded from: classes10.dex */
    public static final class AmbInnerObserver<T> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -1185974347409665484L;
        final Observer<? super T> downstream;
        final int index;
        final C17463a<T> parent;
        boolean won;

        public AmbInnerObserver(C17463a<T> parent, int index, Observer<? super T> downstream) {
            this.parent = parent;
            this.index = index;
            this.downstream = downstream;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.won) {
                this.downstream.onComplete();
            } else if (this.parent.m61216b(this.index)) {
                this.won = true;
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.won) {
                this.downstream.onError(t);
            } else if (!this.parent.m61216b(this.index)) {
                RxJavaPlugins.onError(t);
            } else {
                this.won = true;
                this.downstream.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.won) {
                this.downstream.onNext(t);
            } else if (!this.parent.m61216b(this.index)) {
                get().dispose();
            } else {
                this.won = true;
                this.downstream.onNext(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this, d);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableAmb$a */
    /* loaded from: classes10.dex */
    public static final class C17463a<T> implements Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96329e;

        /* renamed from: f */
        public final AmbInnerObserver<T>[] f96330f;

        /* renamed from: g */
        public final AtomicInteger f96331g = new AtomicInteger();

        public C17463a(Observer<? super T> actual, int count) {
            this.f96329e = actual;
            this.f96330f = new AmbInnerObserver[count];
        }

        /* renamed from: a */
        public void m61215a(ObservableSource<? extends T>[] sources) {
            AmbInnerObserver<T>[] ambInnerObserverArr = this.f96330f;
            int length = ambInnerObserverArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                ambInnerObserverArr[i] = new AmbInnerObserver<>(this, i2, this.f96329e);
                i = i2;
            }
            this.f96331g.lazySet(0);
            this.f96329e.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.f96331g.get() == 0; i3++) {
                sources[i3].subscribe(ambInnerObserverArr[i3]);
            }
        }

        /* renamed from: b */
        public boolean m61216b(int index) {
            int i = 0;
            if (this.f96331g.get() != 0 || !this.f96331g.compareAndSet(0, index)) {
                return false;
            }
            AmbInnerObserver<T>[] ambInnerObserverArr = this.f96330f;
            int length = ambInnerObserverArr.length;
            while (i < length) {
                int i2 = i + 1;
                if (i2 != index) {
                    ambInnerObserverArr[i].dispose();
                }
                i = i2;
            }
            return true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.f96331g.get() != -1) {
                this.f96331g.lazySet(-1);
                for (AmbInnerObserver<T> ambInnerObserver : this.f96330f) {
                    ambInnerObserver.dispose();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96331g.get() == -1;
        }
    }

    public ObservableAmb(ObservableSource<? extends T>[] sources, Iterable<? extends ObservableSource<? extends T>> sourcesIterable) {
        this.f96327e = sources;
        this.f96328f = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        int length;
        ObservableSource<? extends T>[] observableSourceArr = this.f96327e;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            try {
                length = 0;
                for (ObservableSource<? extends T> observableSource : this.f96328f) {
                    if (observableSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == observableSourceArr.length) {
                        ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                        System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                        observableSourceArr = observableSourceArr2;
                    }
                    int i = length + 1;
                    observableSourceArr[length] = observableSource;
                    length = i;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(observer);
        } else if (length == 1) {
            observableSourceArr[0].subscribe(observer);
        } else {
            new C17463a(observer, length).m61215a(observableSourceArr);
        }
    }
}
