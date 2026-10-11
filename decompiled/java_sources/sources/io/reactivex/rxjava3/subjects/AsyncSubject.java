package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class AsyncSubject<T> extends Subject<T> {

    /* renamed from: h */
    public static final AsyncDisposable[] f97586h = new AsyncDisposable[0];

    /* renamed from: i */
    public static final AsyncDisposable[] f97587i = new AsyncDisposable[0];

    /* renamed from: e */
    public final AtomicReference<AsyncDisposable<T>[]> f97588e = new AtomicReference<>(f97586h);

    /* renamed from: f */
    public Throwable f97589f;

    /* renamed from: g */
    public T f97590g;

    /* loaded from: classes10.dex */
    public static final class AsyncDisposable<T> extends DeferredScalarDisposable<T> {
        private static final long serialVersionUID = 5629876084736248016L;
        final AsyncSubject<T> parent;

        public AsyncDisposable(Observer<? super T> actual, AsyncSubject<T> parent) {
            super(actual);
            this.parent = parent;
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (super.tryDispose()) {
                this.parent.m61358e(this);
            }
        }

        public void onComplete() {
            if (isDisposed()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable t) {
            if (isDisposed()) {
                RxJavaPlugins.onError(t);
            } else {
                this.downstream.onError(t);
            }
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> AsyncSubject<T> create() {
        return new AsyncSubject<>();
    }

    /* renamed from: d */
    public boolean m61357d(AsyncDisposable<T> ps) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.f97588e.get();
            if (asyncDisposableArr == f97587i) {
                return false;
            }
            int length = asyncDisposableArr.length;
            asyncDisposableArr2 = new AsyncDisposable[length + 1];
            System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr2, 0, length);
            asyncDisposableArr2[length] = ps;
        } while (!cyi.m53538a(this.f97588e, asyncDisposableArr, asyncDisposableArr2));
        return true;
    }

    /* renamed from: e */
    public void m61358e(AsyncDisposable<T> ps) {
        AsyncDisposable<T>[] asyncDisposableArr;
        AsyncDisposable[] asyncDisposableArr2;
        do {
            asyncDisposableArr = this.f97588e.get();
            int length = asyncDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (asyncDisposableArr[i] == ps) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                asyncDisposableArr2 = f97586h;
            } else {
                AsyncDisposable[] asyncDisposableArr3 = new AsyncDisposable[length - 1];
                System.arraycopy(asyncDisposableArr, 0, asyncDisposableArr3, 0, i);
                System.arraycopy(asyncDisposableArr, i + 1, asyncDisposableArr3, i, (length - i) - 1);
                asyncDisposableArr2 = asyncDisposableArr3;
            }
        } while (!cyi.m53538a(this.f97588e, asyncDisposableArr, asyncDisposableArr2));
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public Throwable getThrowable() {
        if (this.f97588e.get() == f97587i) {
            return this.f97589f;
        }
        return null;
    }

    @CheckReturnValue
    @Nullable
    public T getValue() {
        if (this.f97588e.get() == f97587i) {
            return this.f97590g;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97588e.get() == f97587i && this.f97589f == null;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasObservers() {
        return this.f97588e.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97588e.get() == f97587i && this.f97589f != null;
    }

    @CheckReturnValue
    public boolean hasValue() {
        return this.f97588e.get() == f97587i && this.f97590g != null;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        AsyncDisposable<T>[] asyncDisposableArr = this.f97588e.get();
        AsyncDisposable<T>[] asyncDisposableArr2 = f97587i;
        if (asyncDisposableArr == asyncDisposableArr2) {
            return;
        }
        T t = this.f97590g;
        AsyncDisposable<T>[] andSet = this.f97588e.getAndSet(asyncDisposableArr2);
        int i = 0;
        if (t == null) {
            int length = andSet.length;
            while (i < length) {
                andSet[i].onComplete();
                i++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i < length2) {
            andSet[i].complete(t);
            i++;
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        AsyncDisposable<T>[] asyncDisposableArr = this.f97588e.get();
        AsyncDisposable<T>[] asyncDisposableArr2 = f97587i;
        if (asyncDisposableArr == asyncDisposableArr2) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97590g = null;
        this.f97589f = t;
        AsyncDisposable<T>[] andSet = this.f97588e.getAndSet(asyncDisposableArr2);
        for (AsyncDisposable<T> asyncDisposable : andSet) {
            asyncDisposable.onError(t);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        if (this.f97588e.get() == f97587i) {
            return;
        }
        this.f97590g = t;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
        if (this.f97588e.get() == f97587i) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        AsyncDisposable<T> asyncDisposable = new AsyncDisposable<>(observer, this);
        observer.onSubscribe(asyncDisposable);
        if (m61357d(asyncDisposable)) {
            if (asyncDisposable.isDisposed()) {
                m61358e(asyncDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f97589f;
        if (th != null) {
            observer.onError(th);
            return;
        }
        T t = this.f97590g;
        if (t != null) {
            asyncDisposable.complete(t);
        } else {
            asyncDisposable.onComplete();
        }
    }
}
