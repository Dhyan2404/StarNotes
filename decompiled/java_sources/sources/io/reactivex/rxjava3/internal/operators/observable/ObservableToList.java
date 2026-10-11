package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.Collection;

/* loaded from: classes10.dex */
public final class ObservableToList<T, U extends Collection<? super T>> extends AbstractC17568a<T, U> {

    /* renamed from: e */
    public final Supplier<U> f96931e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableToList$a */
    /* loaded from: classes10.dex */
    public static final class C17555a<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super U> f96932e;

        /* renamed from: f */
        public Disposable f96933f;

        /* renamed from: g */
        public U f96934g;

        public C17555a(Observer<? super U> actual, U collection) {
            this.f96932e = actual;
            this.f96934g = collection;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96933f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96933f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u = this.f96934g;
            this.f96934g = null;
            this.f96932e.onNext(u);
            this.f96932e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96934g = null;
            this.f96932e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96934g.add(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96933f, d)) {
                this.f96933f = d;
                this.f96932e.onSubscribe(this);
            }
        }
    }

    public ObservableToList(ObservableSource<T> source, Supplier<U> collectionSupplier) {
        super(source);
        this.f96931e = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super U> t) {
        try {
            this.source.subscribe(new C17555a(t, (Collection) ExceptionHelper.nullCheck(this.f96931e.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, t);
        }
    }
}
