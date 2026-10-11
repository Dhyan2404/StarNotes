package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableWindowBoundarySelector<T, B, V> extends AbstractC17568a<T, Observable<T>> {

    /* renamed from: e */
    public final ObservableSource<B> f96953e;

    /* renamed from: f */
    public final Function<? super B, ? extends ObservableSource<V>> f96954f;

    /* renamed from: g */
    public final int f96955g;

    /* loaded from: classes10.dex */
    public static final class WindowBoundaryMainObserver<T, B, V> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = 8646217640096099753L;
        final int bufferSize;
        final Function<? super B, ? extends ObservableSource<V>> closingIndicator;
        final Observer<? super Observable<T>> downstream;
        long emitted;
        final ObservableSource<B> open;
        volatile boolean openDone;
        Disposable upstream;
        volatile boolean upstreamCanceled;
        volatile boolean upstreamDone;
        final SimplePlainQueue<Object> queue = new MpscLinkedQueue();
        final CompositeDisposable resources = new CompositeDisposable();
        final List<UnicastSubject<T>> windows = new ArrayList();
        final AtomicLong windowCount = new AtomicLong(1);
        final AtomicBoolean downstreamDisposed = new AtomicBoolean();
        final AtomicThrowable error = new AtomicThrowable();
        final WindowStartObserver<B> startObserver = new WindowStartObserver<>(this);
        final AtomicLong requested = new AtomicLong();

        /* loaded from: classes10.dex */
        public static final class WindowStartObserver<B> extends AtomicReference<Disposable> implements Observer<B> {
            private static final long serialVersionUID = -3326496781427702834L;
            final WindowBoundaryMainObserver<?, B, ?> parent;

            public WindowStartObserver(WindowBoundaryMainObserver<?, B, ?> parent) {
                this.parent = parent;
            }

            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onComplete() {
                this.parent.openComplete();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onError(Throwable t) {
                this.parent.openError(t);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onNext(B t) {
                this.parent.open(t);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onSubscribe(Disposable d) {
                DisposableHelper.setOnce(this, d);
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableWindowBoundarySelector$WindowBoundaryMainObserver$a */
        /* loaded from: classes10.dex */
        public static final class C17559a<T, V> extends Observable<T> implements Observer<V>, Disposable {

            /* renamed from: e */
            public final WindowBoundaryMainObserver<T, ?, V> f96956e;

            /* renamed from: f */
            public final UnicastSubject<T> f96957f;

            /* renamed from: g */
            public final AtomicReference<Disposable> f96958g = new AtomicReference<>();

            /* renamed from: h */
            public final AtomicBoolean f96959h = new AtomicBoolean();

            public C17559a(WindowBoundaryMainObserver<T, ?, V> parent, UnicastSubject<T> window) {
                this.f96956e = parent;
                this.f96957f = window;
            }

            /* renamed from: d */
            public boolean m61255d() {
                return !this.f96959h.get() && this.f96959h.compareAndSet(false, true);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this.f96958g);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public boolean isDisposed() {
                return this.f96958g.get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onComplete() {
                this.f96956e.close(this);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onError(Throwable t) {
                if (isDisposed()) {
                    RxJavaPlugins.onError(t);
                } else {
                    this.f96956e.closeError(t);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onNext(V t) {
                if (DisposableHelper.dispose(this.f96958g)) {
                    this.f96956e.close(this);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onSubscribe(Disposable d) {
                DisposableHelper.setOnce(this.f96958g, d);
            }

            @Override // io.reactivex.rxjava3.core.Observable
            public void subscribeActual(Observer<? super T> o) {
                this.f96957f.subscribe(o);
                this.f96959h.set(true);
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableWindowBoundarySelector$WindowBoundaryMainObserver$b */
        /* loaded from: classes10.dex */
        public static final class C17560b<B> {

            /* renamed from: a */
            public final B f96960a;

            public C17560b(B item) {
                this.f96960a = item;
            }
        }

        public WindowBoundaryMainObserver(Observer<? super Observable<T>> downstream, ObservableSource<B> open, Function<? super B, ? extends ObservableSource<V>> closingIndicator, int bufferSize) {
            this.downstream = downstream;
            this.open = open;
            this.closingIndicator = closingIndicator;
            this.bufferSize = bufferSize;
        }

        public void close(C17559a<T, V> what) {
            this.queue.offer(what);
            drain();
        }

        public void closeError(Throwable t) {
            this.upstream.dispose();
            this.startObserver.dispose();
            this.resources.dispose();
            if (this.error.tryAddThrowableOrReport(t)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.downstreamDisposed.compareAndSet(false, true)) {
                if (this.windowCount.decrementAndGet() != 0) {
                    this.startObserver.dispose();
                    return;
                }
                this.upstream.dispose();
                this.startObserver.dispose();
                this.resources.dispose();
                this.error.tryTerminateAndReport();
                this.upstreamCanceled = true;
                drain();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super Observable<T>> observer = this.downstream;
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            List<UnicastSubject<T>> list = this.windows;
            int i = 1;
            while (true) {
                if (this.upstreamCanceled) {
                    simplePlainQueue.clear();
                    list.clear();
                } else {
                    boolean z = this.upstreamDone;
                    Object poll = simplePlainQueue.poll();
                    boolean z2 = poll == null;
                    if (z && (z2 || this.error.get() != null)) {
                        terminateDownstream(observer);
                        this.upstreamCanceled = true;
                    } else if (z2) {
                        if (this.openDone && list.size() == 0) {
                            this.upstream.dispose();
                            this.startObserver.dispose();
                            this.resources.dispose();
                            terminateDownstream(observer);
                            this.upstreamCanceled = true;
                        }
                    } else if (poll instanceof C17560b) {
                        if (!this.downstreamDisposed.get()) {
                            try {
                                ObservableSource<V> apply = this.closingIndicator.apply(((C17560b) poll).f96960a);
                                Objects.requireNonNull(apply, "The closingIndicator returned a null ObservableSource");
                                ObservableSource<V> observableSource = apply;
                                this.windowCount.getAndIncrement();
                                UnicastSubject<T> create = UnicastSubject.create(this.bufferSize, this);
                                C17559a c17559a = new C17559a(this, create);
                                observer.onNext(c17559a);
                                if (c17559a.m61255d()) {
                                    create.onComplete();
                                } else {
                                    list.add(create);
                                    this.resources.add(c17559a);
                                    observableSource.subscribe(c17559a);
                                }
                            } catch (Throwable th) {
                                Exceptions.throwIfFatal(th);
                                this.upstream.dispose();
                                this.startObserver.dispose();
                                this.resources.dispose();
                                Exceptions.throwIfFatal(th);
                                this.error.tryAddThrowableOrReport(th);
                                this.upstreamDone = true;
                            }
                        }
                    } else if (poll instanceof C17559a) {
                        UnicastSubject<T> unicastSubject = ((C17559a) poll).f96957f;
                        list.remove(unicastSubject);
                        this.resources.delete((Disposable) poll);
                        unicastSubject.onComplete();
                    } else {
                        Iterator<UnicastSubject<T>> it2 = list.iterator();
                        while (it2.hasNext()) {
                            it2.next().onNext(poll);
                        }
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.downstreamDisposed.get();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.startObserver.dispose();
            this.resources.dispose();
            this.upstreamDone = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.startObserver.dispose();
            this.resources.dispose();
            if (this.error.tryAddThrowableOrReport(t)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
                this.open.subscribe(this.startObserver);
            }
        }

        public void open(B startValue) {
            this.queue.offer(new C17560b(startValue));
            drain();
        }

        public void openComplete() {
            this.openDone = true;
            drain();
        }

        public void openError(Throwable t) {
            this.upstream.dispose();
            this.resources.dispose();
            if (this.error.tryAddThrowableOrReport(t)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windowCount.decrementAndGet() == 0) {
                this.upstream.dispose();
                this.startObserver.dispose();
                this.resources.dispose();
                this.error.tryTerminateAndReport();
                this.upstreamCanceled = true;
                drain();
            }
        }

        public void terminateDownstream(Observer<?> downstream) {
            Throwable terminate = this.error.terminate();
            if (terminate == null) {
                Iterator<UnicastSubject<T>> it2 = this.windows.iterator();
                while (it2.hasNext()) {
                    it2.next().onComplete();
                }
                downstream.onComplete();
                return;
            }
            if (terminate != ExceptionHelper.TERMINATED) {
                Iterator<UnicastSubject<T>> it3 = this.windows.iterator();
                while (it3.hasNext()) {
                    it3.next().onError(terminate);
                }
                downstream.onError(terminate);
            }
        }
    }

    public ObservableWindowBoundarySelector(ObservableSource<T> source, ObservableSource<B> open, Function<? super B, ? extends ObservableSource<V>> closingIndicator, int bufferSize) {
        super(source);
        this.f96953e = open;
        this.f96954f = closingIndicator;
        this.f96955g = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Observable<T>> t) {
        this.source.subscribe(new WindowBoundaryMainObserver(t, this.f96953e, this.f96954f, this.f96955g));
    }
}
