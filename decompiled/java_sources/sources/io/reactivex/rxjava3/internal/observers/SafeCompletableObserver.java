package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SafeCompletableObserver implements CompletableObserver {

    /* renamed from: e */
    public final CompletableObserver f95191e;

    /* renamed from: f */
    public boolean f95192f;

    public SafeCompletableObserver(CompletableObserver downstream) {
        this.f95191e = downstream;
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        if (this.f95192f) {
            return;
        }
        try {
            this.f95191e.onComplete();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onError(@NonNull Throwable e) {
        if (this.f95192f) {
            RxJavaPlugins.onError(e);
            return;
        }
        try {
            this.f95191e.onError(e);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(new CompositeException(e, th));
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onSubscribe(@NonNull Disposable d) {
        try {
            this.f95191e.onSubscribe(d);
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            this.f95192f = true;
            d.dispose();
            RxJavaPlugins.onError(th);
        }
    }
}
