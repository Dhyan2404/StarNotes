package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SafeMaybeObserver<T> implements MaybeObserver<T> {

    /* renamed from: e */
    public final MaybeObserver<? super T> f95193e;

    /* renamed from: f */
    public boolean f95194f;

    public SafeMaybeObserver(MaybeObserver<? super T> downstream) {
        this.f95193e = downstream;
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        if (this.f95194f) {
            return;
        }
        try {
            this.f95193e.onComplete();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onError(@NonNull Throwable e) {
        if (this.f95194f) {
            RxJavaPlugins.onError(e);
            return;
        }
        try {
            this.f95193e.onError(e);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(new CompositeException(e, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(@NonNull Disposable d) {
        try {
            this.f95193e.onSubscribe(d);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            this.f95194f = true;
            d.dispose();
            RxJavaPlugins.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(@NonNull T t) {
        if (this.f95194f) {
            return;
        }
        try {
            this.f95193e.onSuccess(t);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }
}
