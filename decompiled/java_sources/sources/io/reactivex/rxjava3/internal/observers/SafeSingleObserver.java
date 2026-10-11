package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SafeSingleObserver<T> implements SingleObserver<T> {

    /* renamed from: e */
    public final SingleObserver<? super T> f95195e;

    /* renamed from: f */
    public boolean f95196f;

    public SafeSingleObserver(SingleObserver<? super T> downstream) {
        this.f95195e = downstream;
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(@NonNull Throwable e) {
        if (this.f95196f) {
            RxJavaPlugins.onError(e);
            return;
        }
        try {
            this.f95195e.onError(e);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(new CompositeException(e, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(@NonNull Disposable d) {
        try {
            this.f95195e.onSubscribe(d);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            this.f95196f = true;
            d.dispose();
            RxJavaPlugins.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(@NonNull T t) {
        if (this.f95196f) {
            return;
        }
        try {
            this.f95195e.onSuccess(t);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }
}
