package io.reactivex.rxjava3.internal.operators.mixed;

import com.sunia.HTREnginev2.e1m;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.operators.SimpleQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableConcatMapMaybe<T, R> extends Observable<R> {

    /* renamed from: e */
    public final Observable<T> f96268e;

    /* renamed from: f */
    public final Function<? super T, ? extends MaybeSource<? extends R>> f96269f;

    /* renamed from: g */
    public final ErrorMode f96270g;

    /* renamed from: h */
    public final int f96271h;

    /* loaded from: classes10.dex */
    public static final class ConcatMapMaybeMainObserver<T, R> extends ConcatMapXMainObserver<T> {
        static final int STATE_ACTIVE = 1;
        static final int STATE_INACTIVE = 0;
        static final int STATE_RESULT_VALUE = 2;
        private static final long serialVersionUID = -9140123220065488293L;
        final Observer<? super R> downstream;
        final ConcatMapMaybeObserver<R> inner;
        R item;
        final Function<? super T, ? extends MaybeSource<? extends R>> mapper;
        volatile int state;

        /* loaded from: classes10.dex */
        public static final class ConcatMapMaybeObserver<R> extends AtomicReference<Disposable> implements MaybeObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;
            final ConcatMapMaybeMainObserver<?, R> parent;

            public ConcatMapMaybeObserver(ConcatMapMaybeMainObserver<?, R> parent) {
                this.parent = parent;
            }

            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
            public void onComplete() {
                this.parent.innerComplete();
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
            public void onError(Throwable e) {
                this.parent.innerError(e);
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
            public void onSubscribe(Disposable d) {
                DisposableHelper.replace(this, d);
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
            public void onSuccess(R t) {
                this.parent.innerSuccess(t);
            }
        }

        public ConcatMapMaybeMainObserver(Observer<? super R> downstream, Function<? super T, ? extends MaybeSource<? extends R>> mapper, int prefetch, ErrorMode errorMode) {
            super(prefetch, errorMode);
            this.downstream = downstream;
            this.mapper = mapper;
            this.inner = new ConcatMapMaybeObserver<>(this);
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public void clearValue() {
            this.item = null;
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public void disposeInner() {
            this.inner.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super R> observer = this.downstream;
            ErrorMode errorMode = this.errorMode;
            SimpleQueue<T> simpleQueue = this.queue;
            AtomicThrowable atomicThrowable = this.errors;
            int i = 1;
            while (true) {
                if (this.disposed) {
                    simpleQueue.clear();
                    this.item = null;
                } else {
                    int i2 = this.state;
                    if (atomicThrowable.get() == null || (errorMode != ErrorMode.IMMEDIATE && (errorMode != ErrorMode.BOUNDARY || i2 != 0))) {
                        if (i2 == 0) {
                            boolean z = this.done;
                            try {
                                T poll = simpleQueue.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    atomicThrowable.tryTerminateConsumer(observer);
                                    return;
                                }
                                if (!z2) {
                                    try {
                                        MaybeSource<? extends R> apply = this.mapper.apply(poll);
                                        Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                                        MaybeSource<? extends R> maybeSource = apply;
                                        this.state = 1;
                                        maybeSource.subscribe(this.inner);
                                    } catch (Throwable th) {
                                        Exceptions.throwIfFatal(th);
                                        this.upstream.dispose();
                                        simpleQueue.clear();
                                        atomicThrowable.tryAddThrowableOrReport(th);
                                        atomicThrowable.tryTerminateConsumer(observer);
                                        return;
                                    }
                                }
                            } catch (Throwable th2) {
                                Exceptions.throwIfFatal(th2);
                                this.disposed = true;
                                this.upstream.dispose();
                                atomicThrowable.tryAddThrowableOrReport(th2);
                                atomicThrowable.tryTerminateConsumer(observer);
                                return;
                            }
                        } else if (i2 == 2) {
                            R r = this.item;
                            this.item = null;
                            observer.onNext(r);
                            this.state = 0;
                        }
                    }
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
            }
            simpleQueue.clear();
            this.item = null;
            atomicThrowable.tryTerminateConsumer(observer);
        }

        public void innerComplete() {
            this.state = 0;
            drain();
        }

        public void innerError(Throwable ex) {
            if (this.errors.tryAddThrowableOrReport(ex)) {
                if (this.errorMode != ErrorMode.END) {
                    this.upstream.dispose();
                }
                this.state = 0;
                drain();
            }
        }

        public void innerSuccess(R item) {
            this.item = item;
            this.state = 2;
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.mixed.ConcatMapXMainObserver
        public void onSubscribeDownstream() {
            this.downstream.onSubscribe(this);
        }
    }

    public ObservableConcatMapMaybe(Observable<T> source, Function<? super T, ? extends MaybeSource<? extends R>> mapper, ErrorMode errorMode, int prefetch) {
        this.f96268e = source;
        this.f96269f = mapper;
        this.f96270g = errorMode;
        this.f96271h = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        if (e1m.m53901b(this.f96268e, this.f96269f, observer)) {
            return;
        }
        this.f96268e.subscribe(new ConcatMapMaybeMainObserver(observer, this.f96269f, this.f96271h, this.f96270g));
    }
}
