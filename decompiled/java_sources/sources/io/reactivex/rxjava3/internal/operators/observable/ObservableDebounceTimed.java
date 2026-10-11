package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableDebounceTimed<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final long f96470e;

    /* renamed from: f */
    public final TimeUnit f96471f;

    /* renamed from: g */
    public final Scheduler f96472g;

    /* renamed from: h */
    public final Consumer<? super T> f96473h;

    /* loaded from: classes10.dex */
    public static final class DebounceEmitter<T> extends AtomicReference<Disposable> implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;
        final long idx;
        final AtomicBoolean once = new AtomicBoolean();
        final C17478a<T> parent;
        final T value;

        public DebounceEmitter(T value, long idx, C17478a<T> parent) {
            this.value = value;
            this.idx = idx;
            this.parent = parent;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.once.compareAndSet(false, true)) {
                this.parent.m61233a(this.idx, this.value, this);
            }
        }

        public void setResource(Disposable d) {
            DisposableHelper.replace(this, d);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDebounceTimed$a */
    /* loaded from: classes10.dex */
    public static final class C17478a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96474e;

        /* renamed from: f */
        public final long f96475f;

        /* renamed from: g */
        public final TimeUnit f96476g;

        /* renamed from: h */
        public final Scheduler.Worker f96477h;

        /* renamed from: i */
        public final Consumer<? super T> f96478i;

        /* renamed from: j */
        public Disposable f96479j;

        /* renamed from: k */
        public DebounceEmitter<T> f96480k;

        /* renamed from: l */
        public volatile long f96481l;

        /* renamed from: m */
        public boolean f96482m;

        public C17478a(Observer<? super T> actual, long timeout, TimeUnit unit, Scheduler.Worker worker, Consumer<? super T> onDropped) {
            this.f96474e = actual;
            this.f96475f = timeout;
            this.f96476g = unit;
            this.f96477h = worker;
            this.f96478i = onDropped;
        }

        /* renamed from: a */
        public void m61233a(long idx, T t, DebounceEmitter<T> emitter) {
            if (idx == this.f96481l) {
                this.f96474e.onNext(t);
                emitter.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96479j.dispose();
            this.f96477h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96477h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96482m) {
                return;
            }
            this.f96482m = true;
            DebounceEmitter<T> debounceEmitter = this.f96480k;
            if (debounceEmitter != null) {
                debounceEmitter.dispose();
            }
            if (debounceEmitter != null) {
                debounceEmitter.run();
            }
            this.f96474e.onComplete();
            this.f96477h.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96482m) {
                RxJavaPlugins.onError(t);
                return;
            }
            DebounceEmitter<T> debounceEmitter = this.f96480k;
            if (debounceEmitter != null) {
                debounceEmitter.dispose();
            }
            this.f96482m = true;
            this.f96474e.onError(t);
            this.f96477h.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96482m) {
                return;
            }
            long j = this.f96481l + 1;
            this.f96481l = j;
            DebounceEmitter<T> debounceEmitter = this.f96480k;
            if (debounceEmitter != null) {
                debounceEmitter.dispose();
            }
            Consumer<? super T> consumer = this.f96478i;
            if (consumer != null && debounceEmitter != null) {
                try {
                    consumer.accept(this.f96480k.value);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f96479j.dispose();
                    this.f96474e.onError(th);
                    this.f96482m = true;
                }
            }
            DebounceEmitter<T> debounceEmitter2 = new DebounceEmitter<>(t, j, this);
            this.f96480k = debounceEmitter2;
            debounceEmitter2.setResource(this.f96477h.schedule(debounceEmitter2, this.f96475f, this.f96476g));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96479j, d)) {
                this.f96479j = d;
                this.f96474e.onSubscribe(this);
            }
        }
    }

    public ObservableDebounceTimed(ObservableSource<T> source, long timeout, TimeUnit unit, Scheduler scheduler, Consumer<? super T> onDropped) {
        super(source);
        this.f96470e = timeout;
        this.f96471f = unit;
        this.f96472g = scheduler;
        this.f96473h = onDropped;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17478a(new SerializedObserver(t), this.f96470e, this.f96471f, this.f96472g.createWorker(), this.f96473h));
    }
}
