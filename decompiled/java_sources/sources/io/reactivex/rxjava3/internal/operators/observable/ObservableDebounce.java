package io.reactivex.rxjava3.internal.operators.observable;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.observers.SerializedObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableDebounce<T, U> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Function<? super T, ? extends ObservableSource<U>> f96458e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDebounce$a */
    /* loaded from: classes10.dex */
    public static final class C17477a<T, U> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96459e;

        /* renamed from: f */
        public final Function<? super T, ? extends ObservableSource<U>> f96460f;

        /* renamed from: g */
        public Disposable f96461g;

        /* renamed from: h */
        public final AtomicReference<Disposable> f96462h = new AtomicReference<>();

        /* renamed from: i */
        public volatile long f96463i;

        /* renamed from: j */
        public boolean f96464j;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDebounce$a$a */
        /* loaded from: classes10.dex */
        public static final class a<T, U> extends DisposableObserver<U> {

            /* renamed from: f */
            public final C17477a<T, U> f96465f;

            /* renamed from: g */
            public final long f96466g;

            /* renamed from: h */
            public final T f96467h;

            /* renamed from: i */
            public boolean f96468i;

            /* renamed from: j */
            public final AtomicBoolean f96469j = new AtomicBoolean();

            public a(C17477a<T, U> parent, long index, T value) {
                this.f96465f = parent;
                this.f96466g = index;
                this.f96467h = value;
            }

            /* renamed from: a */
            public void m61232a() {
                if (this.f96469j.compareAndSet(false, true)) {
                    this.f96465f.m61231a(this.f96466g, this.f96467h);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onComplete() {
                if (this.f96468i) {
                    return;
                }
                this.f96468i = true;
                m61232a();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onError(Throwable t) {
                if (this.f96468i) {
                    RxJavaPlugins.onError(t);
                } else {
                    this.f96468i = true;
                    this.f96465f.onError(t);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onNext(U t) {
                if (this.f96468i) {
                    return;
                }
                this.f96468i = true;
                dispose();
                m61232a();
            }
        }

        public C17477a(Observer<? super T> actual, Function<? super T, ? extends ObservableSource<U>> debounceSelector) {
            this.f96459e = actual;
            this.f96460f = debounceSelector;
        }

        /* renamed from: a */
        public void m61231a(long idx, T value) {
            if (idx == this.f96463i) {
                this.f96459e.onNext(value);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96461g.dispose();
            DisposableHelper.dispose(this.f96462h);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96461g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96464j) {
                return;
            }
            this.f96464j = true;
            Disposable disposable = this.f96462h.get();
            if (disposable != DisposableHelper.DISPOSED) {
                a aVar = (a) disposable;
                if (aVar != null) {
                    aVar.m61232a();
                }
                DisposableHelper.dispose(this.f96462h);
                this.f96459e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            DisposableHelper.dispose(this.f96462h);
            this.f96459e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96464j) {
                return;
            }
            long j = this.f96463i + 1;
            this.f96463i = j;
            Disposable disposable = this.f96462h.get();
            if (disposable != null) {
                disposable.dispose();
            }
            try {
                ObservableSource<U> apply = this.f96460f.apply(t);
                Objects.requireNonNull(apply, "The ObservableSource supplied is null");
                ObservableSource<U> observableSource = apply;
                a aVar = new a(this, j, t);
                if (cyi.m53538a(this.f96462h, disposable, aVar)) {
                    observableSource.subscribe(aVar);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                dispose();
                this.f96459e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96461g, d)) {
                this.f96461g = d;
                this.f96459e.onSubscribe(this);
            }
        }
    }

    public ObservableDebounce(ObservableSource<T> source, Function<? super T, ? extends ObservableSource<U>> debounceSelector) {
        super(source);
        this.f96458e = debounceSelector;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17477a(new SerializedObserver(t), this.f96458e));
    }
}
