package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableCollect<T, U> extends AbstractC17568a<T, U> {

    /* renamed from: e */
    public final Supplier<? extends U> f96416e;

    /* renamed from: f */
    public final BiConsumer<? super U, ? super T> f96417f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableCollect$a */
    /* loaded from: classes10.dex */
    public static final class C17473a<T, U> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super U> f96418e;

        /* renamed from: f */
        public final BiConsumer<? super U, ? super T> f96419f;

        /* renamed from: g */
        public final U f96420g;

        /* renamed from: h */
        public Disposable f96421h;

        /* renamed from: i */
        public boolean f96422i;

        public C17473a(Observer<? super U> actual, U u, BiConsumer<? super U, ? super T> collector) {
            this.f96418e = actual;
            this.f96419f = collector;
            this.f96420g = u;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96421h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96421h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96422i) {
                return;
            }
            this.f96422i = true;
            this.f96418e.onNext(this.f96420g);
            this.f96418e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96422i) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96422i = true;
                this.f96418e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96422i) {
                return;
            }
            try {
                this.f96419f.accept(this.f96420g, t);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f96421h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96421h, d)) {
                this.f96421h = d;
                this.f96418e.onSubscribe(this);
            }
        }
    }

    public ObservableCollect(ObservableSource<T> source, Supplier<? extends U> initialSupplier, BiConsumer<? super U, ? super T> collector) {
        super(source);
        this.f96416e = initialSupplier;
        this.f96417f = collector;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super U> t) {
        try {
            U u = this.f96416e.get();
            Objects.requireNonNull(u, "The initialSupplier returned a null value");
            this.source.subscribe(new C17473a(t, u, this.f96417f));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, t);
        }
    }
}
