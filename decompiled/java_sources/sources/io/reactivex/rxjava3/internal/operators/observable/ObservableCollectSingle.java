package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableCollectSingle<T, U> extends Single<U> implements FuseToObservable<U> {

    /* renamed from: e */
    public final ObservableSource<T> f96423e;

    /* renamed from: f */
    public final Supplier<? extends U> f96424f;

    /* renamed from: g */
    public final BiConsumer<? super U, ? super T> f96425g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableCollectSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17474a<T, U> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super U> f96426e;

        /* renamed from: f */
        public final BiConsumer<? super U, ? super T> f96427f;

        /* renamed from: g */
        public final U f96428g;

        /* renamed from: h */
        public Disposable f96429h;

        /* renamed from: i */
        public boolean f96430i;

        public C17474a(SingleObserver<? super U> actual, U u, BiConsumer<? super U, ? super T> collector) {
            this.f96426e = actual;
            this.f96427f = collector;
            this.f96428g = u;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96429h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96429h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96430i) {
                return;
            }
            this.f96430i = true;
            this.f96426e.onSuccess(this.f96428g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96430i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96430i = true;
                this.f96426e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96430i) {
                return;
            }
            try {
                this.f96427f.accept(this.f96428g, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96429h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96429h, d)) {
                this.f96429h = d;
                this.f96426e.onSubscribe(this);
            }
        }
    }

    public ObservableCollectSingle(ObservableSource<T> source, Supplier<? extends U> initialSupplier, BiConsumer<? super U, ? super T> collector) {
        this.f96423e = source;
        this.f96424f = initialSupplier;
        this.f96425g = collector;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<U> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableCollect(this.f96423e, this.f96424f, this.f96425g));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super U> t) {
        try {
            U u = this.f96424f.get();
            Objects.requireNonNull(u, "The initialSupplier returned a null value");
            this.f96423e.subscribe(new C17474a(t, u, this.f96425g));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, t);
        }
    }
}
