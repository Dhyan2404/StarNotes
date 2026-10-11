package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class DisposableLambdaObserver<T> implements Observer<T>, Disposable {

    /* renamed from: e */
    public final Observer<? super T> f95179e;

    /* renamed from: f */
    public final Consumer<? super Disposable> f95180f;

    /* renamed from: g */
    public final Action f95181g;

    /* renamed from: h */
    public Disposable f95182h;

    public DisposableLambdaObserver(Observer<? super T> actual, Consumer<? super Disposable> onSubscribe, Action onDispose) {
        this.f95179e = actual;
        this.f95180f = onSubscribe;
        this.f95181g = onDispose;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.f95182h;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            this.f95182h = disposableHelper;
            try {
                this.f95181g.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            disposable.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f95182h.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        Disposable disposable = this.f95182h;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            this.f95182h = disposableHelper;
            this.f95179e.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        Disposable disposable = this.f95182h;
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable == disposableHelper) {
            RxJavaPlugins.onError(t);
        } else {
            this.f95182h = disposableHelper;
            this.f95179e.onError(t);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        this.f95179e.onNext(t);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
        try {
            this.f95180f.accept(d);
            if (DisposableHelper.validate(this.f95182h, d)) {
                this.f95182h = d;
                this.f95179e.onSubscribe(this);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            d.dispose();
            this.f95182h = DisposableHelper.DISPOSED;
            EmptyDisposable.error(th, this.f95179e);
        }
    }
}
