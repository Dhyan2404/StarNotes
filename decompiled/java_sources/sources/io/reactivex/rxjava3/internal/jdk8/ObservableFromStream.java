package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* loaded from: classes10.dex */
public final class ObservableFromStream<T> extends Observable<T> {

    /* renamed from: e */
    public final Stream<T> f95112e;

    /* renamed from: io.reactivex.rxjava3.internal.jdk8.ObservableFromStream$a */
    /* loaded from: classes10.dex */
    public static final class C17294a<T> implements QueueDisposable<T> {

        /* renamed from: e */
        public final Observer<? super T> f95113e;

        /* renamed from: f */
        public Iterator<T> f95114f;

        /* renamed from: g */
        public AutoCloseable f95115g;

        /* renamed from: h */
        public volatile boolean f95116h;

        /* renamed from: i */
        public boolean f95117i;

        /* renamed from: j */
        public boolean f95118j;

        public C17294a(Observer<? super T> downstream, Iterator<T> iterator, AutoCloseable closeable) {
            this.f95113e = downstream;
            this.f95114f = iterator;
            this.f95115g = closeable;
        }

        /* renamed from: a */
        public void m61142a() {
            if (this.f95118j) {
                return;
            }
            Iterator<T> it2 = this.f95114f;
            Observer<? super T> observer = this.f95113e;
            while (!this.f95116h) {
                try {
                    T next = it2.next();
                    Objects.requireNonNull(next, "The Stream's Iterator.next returned a null value");
                    if (!this.f95116h) {
                        observer.onNext(next);
                        if (!this.f95116h) {
                            try {
                                if (!it2.hasNext()) {
                                    observer.onComplete();
                                    this.f95116h = true;
                                }
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                observer.onError(th);
                                this.f95116h = true;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    observer.onError(th2);
                    this.f95116h = true;
                }
            }
            clear();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            this.f95114f = null;
            AutoCloseable autoCloseable = this.f95115g;
            this.f95115g = null;
            if (autoCloseable != null) {
                ObservableFromStream.m61141d(autoCloseable);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95116h = true;
            m61142a();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95116h;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            Iterator<T> it2 = this.f95114f;
            if (it2 == null) {
                return true;
            }
            if (!this.f95117i || it2.hasNext()) {
                return false;
            }
            clear();
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean offer(@NonNull T value) {
            throw new UnsupportedOperationException();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() {
            Iterator<T> it2 = this.f95114f;
            if (it2 == null) {
                return null;
            }
            if (!this.f95117i) {
                this.f95117i = true;
            } else if (!it2.hasNext()) {
                clear();
                return null;
            }
            T next = this.f95114f.next();
            Objects.requireNonNull(next, "The Stream's Iterator.next() returned a null value");
            return next;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            if ((mode & 1) == 0) {
                return 0;
            }
            this.f95118j = true;
            return 1;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean offer(@NonNull T v1, @NonNull T v2) {
            throw new UnsupportedOperationException();
        }
    }

    public ObservableFromStream(Stream<T> stream) {
        this.f95112e = stream;
    }

    /* renamed from: d */
    public static void m61141d(AutoCloseable c) {
        try {
            c.close();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }

    public static <T> void subscribeStream(Observer<? super T> observer, Stream<T> stream) {
        try {
            Iterator<T> it2 = stream.iterator();
            if (!it2.hasNext()) {
                EmptyDisposable.complete(observer);
                m61141d(stream);
            } else {
                C17294a c17294a = new C17294a(observer, it2, stream);
                observer.onSubscribe(c17294a);
                c17294a.m61142a();
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
            m61141d(stream);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        subscribeStream(observer, this.f95112e);
    }
}
