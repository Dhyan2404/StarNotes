package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableDistinct<T, K> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final Function<? super T, K> f96513e;

    /* renamed from: f */
    public final Supplier<? extends Collection<? super K>> f96514f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDistinct$a */
    /* loaded from: classes10.dex */
    public static final class C17483a<T, K> extends BasicFuseableObserver<T, T> {

        /* renamed from: e */
        public final Collection<? super K> f96515e;

        /* renamed from: f */
        public final Function<? super T, K> f96516f;

        public C17483a(Observer<? super T> actual, Function<? super T, K> keySelector, Collection<? super K> collection) {
            super(actual);
            this.f96516f = keySelector;
            this.f96515e = collection;
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicFuseableObserver, io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            this.f96515e.clear();
            super.clear();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicFuseableObserver, io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.f96515e.clear();
            this.downstream.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.observers.BasicFuseableObserver, io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            if (this.done) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.done = true;
            this.f96515e.clear();
            this.downstream.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T value) {
            if (this.done) {
                return;
            }
            if (this.sourceMode != 0) {
                this.downstream.onNext(null);
                return;
            }
            try {
                K apply = this.f96516f.apply(value);
                Objects.requireNonNull(apply, "The keySelector returned a null key");
                if (this.f96515e.add(apply)) {
                    this.downstream.onNext(value);
                }
            } catch (Throwable th) {
                fail(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() throws Throwable {
            T poll;
            Collection<? super K> collection;
            K apply;
            do {
                poll = this.f95167qd.poll();
                if (poll == null) {
                    break;
                }
                collection = this.f96515e;
                apply = this.f96516f.apply(poll);
                Objects.requireNonNull(apply, "The keySelector returned a null key");
            } while (!collection.add(apply));
            return poll;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            return transitiveBoundaryFusion(mode);
        }
    }

    public ObservableDistinct(ObservableSource<T> source, Function<? super T, K> keySelector, Supplier<? extends Collection<? super K>> collectionSupplier) {
        super(source);
        this.f96513e = keySelector;
        this.f96514f = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            this.source.subscribe(new C17483a(observer, this.f96513e, (Collection) ExceptionHelper.nullCheck(this.f96514f.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
