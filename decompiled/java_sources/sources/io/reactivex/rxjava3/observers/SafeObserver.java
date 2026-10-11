package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SafeObserver<T> implements Observer<T>, Disposable {

    /* renamed from: e */
    public final Observer<? super T> f97447e;

    /* renamed from: f */
    public Disposable f97448f;

    /* renamed from: g */
    public boolean f97449g;

    public SafeObserver(@NonNull Observer<? super T> downstream) {
        this.f97447e = downstream;
    }

    /* renamed from: a */
    public void m61294a() {
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f97447e.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f97447e.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            RxJavaPlugins.onError(new CompositeException(nullPointerException, th2));
        }
    }

    /* renamed from: b */
    public void m61295b() {
        this.f97449g = true;
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f97447e.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f97447e.onError(nullPointerException);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(nullPointerException, th));
            }
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            RxJavaPlugins.onError(new CompositeException(nullPointerException, th2));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        this.f97448f.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f97448f.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (this.f97449g) {
            return;
        }
        this.f97449g = true;
        if (this.f97448f == null) {
            m61294a();
            return;
        }
        try {
            this.f97447e.onComplete();
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            RxJavaPlugins.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(@NonNull Throwable t) {
        if (this.f97449g) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97449g = true;
        if (this.f97448f != null) {
            if (t == null) {
                t = ExceptionHelper.createNullPointerException("onError called with a null Throwable.");
            }
            try {
                this.f97447e.onError(t);
                return;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(new CompositeException(t, th));
                return;
            }
        }
        NullPointerException nullPointerException = new NullPointerException("Subscription not set!");
        try {
            this.f97447e.onSubscribe(EmptyDisposable.INSTANCE);
            try {
                this.f97447e.onError(new CompositeException(t, nullPointerException));
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                RxJavaPlugins.onError(new CompositeException(t, nullPointerException, th2));
            }
        } catch (Throwable th3) {
            Exceptions.throwIfFatal(th3);
            RxJavaPlugins.onError(new CompositeException(t, nullPointerException, th3));
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(@NonNull T t) {
        if (this.f97449g) {
            return;
        }
        if (this.f97448f == null) {
            m61295b();
            return;
        }
        if (t == null) {
            NullPointerException createNullPointerException = ExceptionHelper.createNullPointerException("onNext called with a null value.");
            try {
                this.f97448f.dispose();
                onError(createNullPointerException);
                return;
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(new CompositeException(createNullPointerException, th));
                return;
            }
        }
        try {
            this.f97447e.onNext(t);
        } catch (Throwable th2) {
            Exceptions.throwIfFatal(th2);
            try {
                this.f97448f.dispose();
                onError(th2);
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                onError(new CompositeException(th2, th3));
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(@NonNull Disposable d) {
        if (DisposableHelper.validate(this.f97448f, d)) {
            this.f97448f = d;
            try {
                this.f97447e.onSubscribe(this);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f97449g = true;
                try {
                    d.dispose();
                    RxJavaPlugins.onError(th);
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    RxJavaPlugins.onError(new CompositeException(th, th2));
                }
            }
        }
    }
}
