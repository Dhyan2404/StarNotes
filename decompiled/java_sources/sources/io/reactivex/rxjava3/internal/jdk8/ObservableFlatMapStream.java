package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Stream;

/* loaded from: classes10.dex */
public final class ObservableFlatMapStream<T, R> extends Observable<R> {

    /* renamed from: e */
    public final Observable<T> f95109e;

    /* renamed from: f */
    public final Function<? super T, ? extends Stream<? extends R>> f95110f;

    /* loaded from: classes10.dex */
    public static final class FlatMapStreamObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5127032662980523968L;
        volatile boolean disposed;
        boolean done;
        final Observer<? super R> downstream;
        final Function<? super T, ? extends Stream<? extends R>> mapper;
        Disposable upstream;

        public FlatMapStreamObserver(Observer<? super R> downstream, Function<? super T, ? extends Stream<? extends R>> mapper) {
            this.downstream = downstream;
            this.mapper = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.upstream.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(@NonNull Throwable e) {
            if (this.done) {
                RxJavaPlugins.onError(e);
            } else {
                this.done = true;
                this.downstream.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(@NonNull T t) {
            if (this.done) {
                return;
            }
            try {
                Stream<? extends R> apply = this.mapper.apply(t);
                Objects.requireNonNull(apply, "The mapper returned a null Stream");
                Stream<? extends R> stream = apply;
                try {
                    Iterator<? extends R> it2 = stream.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        if (this.disposed) {
                            this.done = true;
                            break;
                        }
                        R next = it2.next();
                        Objects.requireNonNull(next, "The Stream's Iterator.next returned a null value");
                        if (this.disposed) {
                            this.done = true;
                            break;
                        }
                        this.downstream.onNext(next);
                        if (this.disposed) {
                            this.done = true;
                            break;
                        }
                    }
                    stream.close();
                } finally {
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.upstream.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(@NonNull Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapStream(Observable<T> source, Function<? super T, ? extends Stream<? extends R>> mapper) {
        this.f95109e = source;
        this.f95110f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        Stream<? extends R> stream;
        Observable<T> observable = this.f95109e;
        if (!(observable instanceof Supplier)) {
            observable.subscribe(new FlatMapStreamObserver(observer, this.f95110f));
            return;
        }
        try {
            Object obj = ((Supplier) observable).get();
            if (obj != null) {
                Stream<? extends R> apply = this.f95110f.apply(obj);
                Objects.requireNonNull(apply, "The mapper returned a null Stream");
                stream = apply;
            } else {
                stream = null;
            }
            if (stream != null) {
                ObservableFromStream.subscribeStream(observer, stream);
            } else {
                EmptyDisposable.complete(observer);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
