package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class ObservableFromFuture<T> extends Observable<T> {

    /* renamed from: e */
    public final Future<? extends T> f96598e;

    /* renamed from: f */
    public final long f96599f;

    /* renamed from: g */
    public final TimeUnit f96600g;

    public ObservableFromFuture(Future<? extends T> future, long timeout, TimeUnit unit) {
        this.f96598e = future;
        this.f96599f = timeout;
        this.f96600g = unit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            TimeUnit timeUnit = this.f96600g;
            deferredScalarDisposable.complete(ExceptionHelper.nullCheck(timeUnit != null ? this.f96598e.get(this.f96599f, timeUnit) : this.f96598e.get(), "Future returned a null value."));
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            if (deferredScalarDisposable.isDisposed()) {
                return;
            }
            observer.onError(th);
        }
    }
}
