package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.BasicQueueDisposable;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableFromIterable<T> extends Observable<T> {

    /* renamed from: e */
    public final Iterable<? extends T> f96601e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableFromIterable$a */
    /* loaded from: classes10.dex */
    public static final class C17493a<T> extends BasicQueueDisposable<T> {

        /* renamed from: e */
        public final Observer<? super T> f96602e;

        /* renamed from: f */
        public final Iterator<? extends T> f96603f;

        /* renamed from: g */
        public volatile boolean f96604g;

        /* renamed from: h */
        public boolean f96605h;

        /* renamed from: i */
        public boolean f96606i;

        /* renamed from: j */
        public boolean f96607j;

        public C17493a(Observer<? super T> actual, Iterator<? extends T> it2) {
            this.f96602e = actual;
            this.f96603f = it2;
        }

        /* renamed from: a */
        public void m61235a() {
            while (!isDisposed()) {
                try {
                    T next = this.f96603f.next();
                    Objects.requireNonNull(next, "The iterator returned a null value");
                    this.f96602e.onNext(next);
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f96603f.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.f96602e.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        Exceptions.throwIfFatal(th);
                        this.f96602e.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    this.f96602e.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            this.f96606i = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96604g = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96604g;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            return this.f96606i;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() {
            if (this.f96606i) {
                return null;
            }
            if (!this.f96607j) {
                this.f96607j = true;
            } else if (!this.f96603f.hasNext()) {
                this.f96606i = true;
                return null;
            }
            T next = this.f96603f.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            return next;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            if ((mode & 1) == 0) {
                return 0;
            }
            this.f96605h = true;
            return 1;
        }
    }

    public ObservableFromIterable(Iterable<? extends T> source) {
        this.f96601e = source;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Iterator<? extends T> it2 = this.f96601e.iterator();
            try {
                if (!it2.hasNext()) {
                    EmptyDisposable.complete(observer);
                    return;
                }
                C17493a c17493a = new C17493a(observer, it2);
                observer.onSubscribe(c17493a);
                if (c17493a.f96605h) {
                    return;
                }
                c17493a.m61235a();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            EmptyDisposable.error(th2, observer);
        }
    }
}
