package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.QueueDrainObserver;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.QueueDrainHelper;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableBufferExactBoundary<T, U extends Collection<? super T>, B> extends AbstractC17568a<T, U> {

    /* renamed from: e */
    public final ObservableSource<B> f96359e;

    /* renamed from: f */
    public final Supplier<U> f96360f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferExactBoundary$a */
    /* loaded from: classes10.dex */
    public static final class C17467a<T, U extends Collection<? super T>, B> extends DisposableObserver<B> {

        /* renamed from: f */
        public final C17468b<T, U, B> f96361f;

        public C17467a(C17468b<T, U, B> parent) {
            this.f96361f = parent;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96361f.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96361f.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(B t) {
            this.f96361f.m61219b();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferExactBoundary$b */
    /* loaded from: classes10.dex */
    public static final class C17468b<T, U extends Collection<? super T>, B> extends QueueDrainObserver<T, U, U> implements Disposable {

        /* renamed from: A0 */
        public U f96362A0;

        /* renamed from: w0 */
        public final Supplier<U> f96363w0;

        /* renamed from: x0 */
        public final ObservableSource<B> f96364x0;

        /* renamed from: y0 */
        public Disposable f96365y0;

        /* renamed from: z0 */
        public Disposable f96366z0;

        public C17468b(Observer<? super U> actual, Supplier<U> bufferSupplier, ObservableSource<B> boundary) {
            super(actual, new MpscLinkedQueue());
            this.f96363w0 = bufferSupplier;
            this.f96364x0 = boundary;
        }

        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Observer<? super U> a, U v) {
            this.downstream.onNext(v);
        }

        /* renamed from: b */
        public void m61219b() {
            try {
                U u = this.f96363w0.get();
                Objects.requireNonNull(u, "The buffer supplied is null");
                U u2 = u;
                synchronized (this) {
                    U u3 = this.f96362A0;
                    if (u3 == null) {
                        return;
                    }
                    this.f96362A0 = u2;
                    fastPathEmit(u3, false, this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                dispose();
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.f96366z0.dispose();
            this.f96365y0.dispose();
            if (enter()) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            synchronized (this) {
                U u = this.f96362A0;
                if (u == null) {
                    return;
                }
                this.f96362A0 = null;
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.drainLoop(this.queue, this.downstream, false, this, this);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            dispose();
            this.downstream.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f96362A0;
                if (u == null) {
                    return;
                }
                u.add(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96365y0, d)) {
                this.f96365y0 = d;
                try {
                    U u = this.f96363w0.get();
                    Objects.requireNonNull(u, "The buffer supplied is null");
                    this.f96362A0 = u;
                    C17467a c17467a = new C17467a(this);
                    this.f96366z0 = c17467a;
                    this.downstream.onSubscribe(this);
                    if (this.cancelled) {
                        return;
                    }
                    this.f96364x0.subscribe(c17467a);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.cancelled = true;
                    d.dispose();
                    EmptyDisposable.error(th, this.downstream);
                }
            }
        }
    }

    public ObservableBufferExactBoundary(ObservableSource<T> source, ObservableSource<B> boundary, Supplier<U> bufferSupplier) {
        super(source);
        this.f96359e = boundary;
        this.f96360f = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super U> t) {
        this.source.subscribe(new C17468b(new SerializedObserver(t), this.f96360f, this.f96359e));
    }
}
