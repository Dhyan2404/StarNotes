package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes10.dex */
public final class ObservableBuffer<T, U extends Collection<? super T>> extends AbstractC17568a<T, U> {

    /* renamed from: e */
    public final int f96347e;

    /* renamed from: f */
    public final int f96348f;

    /* renamed from: g */
    public final Supplier<U> f96349g;

    /* loaded from: classes10.dex */
    public static final class BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8223395059921494546L;
        final Supplier<U> bufferSupplier;
        final ArrayDeque<U> buffers = new ArrayDeque<>();
        final int count;
        final Observer<? super U> downstream;
        long index;
        final int skip;
        Disposable upstream;

        public BufferSkipObserver(Observer<? super U> actual, int count, int skip, Supplier<U> bufferSupplier) {
            this.downstream = actual;
            this.count = count;
            this.skip = skip;
            this.bufferSupplier = bufferSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.upstream.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            while (!this.buffers.isEmpty()) {
                this.downstream.onNext(this.buffers.poll());
            }
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.buffers.clear();
            this.downstream.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            long j = this.index;
            this.index = 1 + j;
            if (j % this.skip == 0) {
                try {
                    this.buffers.offer((Collection) ExceptionHelper.nullCheck(this.bufferSupplier.get(), "The bufferSupplier returned a null Collection."));
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.buffers.clear();
                    this.upstream.dispose();
                    this.downstream.onError(th);
                    return;
                }
            }
            Iterator<U> it2 = this.buffers.iterator();
            while (it2.hasNext()) {
                U next = it2.next();
                next.add(t);
                if (this.count <= next.size()) {
                    it2.remove();
                    this.downstream.onNext(next);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.upstream, d)) {
                this.upstream = d;
                this.downstream.onSubscribe(this);
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableBuffer$a */
    /* loaded from: classes10.dex */
    public static final class C17466a<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super U> f96350e;

        /* renamed from: f */
        public final int f96351f;

        /* renamed from: g */
        public final Supplier<U> f96352g;

        /* renamed from: h */
        public U f96353h;

        /* renamed from: i */
        public int f96354i;

        /* renamed from: j */
        public Disposable f96355j;

        public C17466a(Observer<? super U> actual, int count, Supplier<U> bufferSupplier) {
            this.f96350e = actual;
            this.f96351f = count;
            this.f96352g = bufferSupplier;
        }

        /* renamed from: a */
        public boolean m61217a() {
            try {
                U u = this.f96352g.get();
                Objects.requireNonNull(u, "Empty buffer supplied");
                this.f96353h = u;
                return true;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96353h = null;
                Disposable disposable = this.f96355j;
                if (disposable == null) {
                    EmptyDisposable.error(th, this.f96350e);
                    return false;
                }
                disposable.dispose();
                this.f96350e.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96355j.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96355j.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u = this.f96353h;
            if (u != null) {
                this.f96353h = null;
                if (!u.isEmpty()) {
                    this.f96350e.onNext(u);
                }
                this.f96350e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96353h = null;
            this.f96350e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            U u = this.f96353h;
            if (u != null) {
                u.add(t);
                int i = this.f96354i + 1;
                this.f96354i = i;
                if (i >= this.f96351f) {
                    this.f96350e.onNext(u);
                    this.f96354i = 0;
                    m61217a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96355j, d)) {
                this.f96355j = d;
                this.f96350e.onSubscribe(this);
            }
        }
    }

    public ObservableBuffer(ObservableSource<T> source, int count, int skip, Supplier<U> bufferSupplier) {
        super(source);
        this.f96347e = count;
        this.f96348f = skip;
        this.f96349g = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super U> t) {
        int i = this.f96348f;
        int i2 = this.f96347e;
        if (i != i2) {
            this.source.subscribe(new BufferSkipObserver(t, this.f96347e, this.f96348f, this.f96349g));
            return;
        }
        C17466a c17466a = new C17466a(t, i2, this.f96349g);
        if (c17466a.m61217a()) {
            this.source.subscribe(c17466a);
        }
    }
}
