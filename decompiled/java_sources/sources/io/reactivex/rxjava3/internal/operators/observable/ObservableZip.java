package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableZip<T, R> extends Observable<R> {

    /* renamed from: e */
    public final ObservableSource<? extends T>[] f96981e;

    /* renamed from: f */
    public final Iterable<? extends ObservableSource<? extends T>> f96982f;

    /* renamed from: g */
    public final Function<? super Object[], ? extends R> f96983g;

    /* renamed from: h */
    public final int f96984h;

    /* renamed from: i */
    public final boolean f96985i;

    /* loaded from: classes10.dex */
    public static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2983708048395377667L;
        volatile boolean cancelled;
        final boolean delayError;
        final Observer<? super R> downstream;
        final C17566a<T, R>[] observers;
        final T[] row;
        final Function<? super Object[], ? extends R> zipper;

        public ZipCoordinator(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, boolean z) {
            this.downstream = observer;
            this.zipper = function;
            this.observers = new C17566a[i];
            this.row = (T[]) new Object[i];
            this.delayError = z;
        }

        public void cancel() {
            clear();
            cancelSources();
        }

        public void cancelSources() {
            for (C17566a<T, R> c17566a : this.observers) {
                c17566a.m61256a();
            }
        }

        public boolean checkTerminated(boolean d, boolean empty, Observer<? super R> a, boolean delayError, C17566a<?, ?> source) {
            if (this.cancelled) {
                cancel();
                return true;
            }
            if (!d) {
                return false;
            }
            if (delayError) {
                if (!empty) {
                    return false;
                }
                Throwable th = source.f96989h;
                this.cancelled = true;
                cancel();
                if (th != null) {
                    a.onError(th);
                } else {
                    a.onComplete();
                }
                return true;
            }
            Throwable th2 = source.f96989h;
            if (th2 != null) {
                this.cancelled = true;
                cancel();
                a.onError(th2);
                return true;
            }
            if (!empty) {
                return false;
            }
            this.cancelled = true;
            cancel();
            a.onComplete();
            return true;
        }

        public void clear() {
            for (C17566a<T, R> c17566a : this.observers) {
                c17566a.f96987f.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear();
            }
        }

        public void drain() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            C17566a<T, R>[] c17566aArr = this.observers;
            Observer<? super R> observer = this.downstream;
            T[] tArr = this.row;
            boolean z = this.delayError;
            int i = 1;
            while (true) {
                int i2 = 0;
                int i3 = 0;
                for (C17566a<T, R> c17566a : c17566aArr) {
                    if (tArr[i3] == null) {
                        boolean z2 = c17566a.f96988g;
                        T poll = c17566a.f96987f.poll();
                        boolean z3 = poll == null;
                        if (checkTerminated(z2, z3, observer, z, c17566a)) {
                            return;
                        }
                        if (z3) {
                            i2++;
                        } else {
                            tArr[i3] = poll;
                        }
                    } else if (c17566a.f96988g && !z && (th = c17566a.f96989h) != null) {
                        this.cancelled = true;
                        cancel();
                        observer.onError(th);
                        return;
                    }
                    i3++;
                }
                if (i2 != 0) {
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                } else {
                    try {
                        R apply = this.zipper.apply(tArr.clone());
                        Objects.requireNonNull(apply, "The zipper returned a null value");
                        observer.onNext(apply);
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        cancel();
                        observer.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(ObservableSource<? extends T>[] sources, int bufferSize) {
            C17566a<T, R>[] c17566aArr = this.observers;
            int length = c17566aArr.length;
            for (int i = 0; i < length; i++) {
                c17566aArr[i] = new C17566a<>(this, bufferSize);
            }
            lazySet(0);
            this.downstream.onSubscribe(this);
            for (int i2 = 0; i2 < length && !this.cancelled; i2++) {
                sources[i2].subscribe(c17566aArr[i2]);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableZip$a */
    /* loaded from: classes10.dex */
    public static final class C17566a<T, R> implements Observer<T> {

        /* renamed from: e */
        public final ZipCoordinator<T, R> f96986e;

        /* renamed from: f */
        public final SpscLinkedArrayQueue<T> f96987f;

        /* renamed from: g */
        public volatile boolean f96988g;

        /* renamed from: h */
        public Throwable f96989h;

        /* renamed from: i */
        public final AtomicReference<Disposable> f96990i = new AtomicReference<>();

        public C17566a(ZipCoordinator<T, R> parent, int bufferSize) {
            this.f96986e = parent;
            this.f96987f = new SpscLinkedArrayQueue<>(bufferSize);
        }

        /* renamed from: a */
        public void m61256a() {
            DisposableHelper.dispose(this.f96990i);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96988g = true;
            this.f96986e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96989h = t;
            this.f96988g = true;
            this.f96986e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96987f.offer(t);
            this.f96986e.drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this.f96990i, d);
        }
    }

    public ObservableZip(ObservableSource<? extends T>[] sources, Iterable<? extends ObservableSource<? extends T>> sourcesIterable, Function<? super Object[], ? extends R> zipper, int bufferSize, boolean delayError) {
        this.f96981e = sources;
        this.f96982f = sourcesIterable;
        this.f96983g = zipper;
        this.f96984h = bufferSize;
        this.f96985i = delayError;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        int length;
        ObservableSource<? extends T>[] observableSourceArr = this.f96981e;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            length = 0;
            for (ObservableSource<? extends T> observableSource : this.f96982f) {
                if (length == observableSourceArr.length) {
                    ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                    System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                    observableSourceArr = observableSourceArr2;
                }
                observableSourceArr[length] = observableSource;
                length++;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(observer);
        } else {
            new ZipCoordinator(observer, this.f96983g, length, this.f96985i).subscribe(observableSourceArr, this.f96984h);
        }
    }
}
