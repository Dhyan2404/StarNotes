package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Collection;

/* loaded from: classes10.dex */
public final class ObservableToListSingle<T, U extends Collection<? super T>> extends Single<U> implements FuseToObservable<U> {

    /* renamed from: e */
    public final ObservableSource<T> f96935e;

    /* renamed from: f */
    public final Supplier<U> f96936f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableToListSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17556a<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super U> f96937e;

        /* renamed from: f */
        public U f96938f;

        /* renamed from: g */
        public Disposable f96939g;

        public C17556a(SingleObserver<? super U> actual, U collection) {
            this.f96937e = actual;
            this.f96938f = collection;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96939g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96939g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u = this.f96938f;
            this.f96938f = null;
            this.f96937e.onSuccess(u);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96938f = null;
            this.f96937e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96938f.add(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96939g, d)) {
                this.f96939g = d;
                this.f96937e.onSubscribe(this);
            }
        }
    }

    public ObservableToListSingle(ObservableSource<T> source, final int defaultCapacityHint) {
        this.f96935e = source;
        this.f96936f = Functions.createArrayList(defaultCapacityHint);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<U> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableToList(this.f96935e, this.f96936f));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super U> t) {
        try {
            this.f96935e.subscribe(new C17556a(t, (Collection) ExceptionHelper.nullCheck(this.f96936f.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, t);
        }
    }

    public ObservableToListSingle(ObservableSource<T> source, Supplier<U> collectionSupplier) {
        this.f96935e = source;
        this.f96936f = collectionSupplier;
    }
}
