package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class CompletableSubject extends Completable implements CompletableObserver {

    /* renamed from: h */
    public static final CompletableDisposable[] f97608h = new CompletableDisposable[0];

    /* renamed from: i */
    public static final CompletableDisposable[] f97609i = new CompletableDisposable[0];

    /* renamed from: g */
    public Throwable f97612g;

    /* renamed from: f */
    public final AtomicBoolean f97611f = new AtomicBoolean();

    /* renamed from: e */
    public final AtomicReference<CompletableDisposable[]> f97610e = new AtomicReference<>(f97608h);

    /* loaded from: classes10.dex */
    public static final class CompletableDisposable extends AtomicReference<CompletableSubject> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;
        final CompletableObserver downstream;

        public CompletableDisposable(CompletableObserver actual, CompletableSubject parent) {
            this.downstream = actual;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            CompletableSubject andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m61369g(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @CheckReturnValue
    @NonNull
    public static CompletableSubject create() {
        return new CompletableSubject();
    }

    /* renamed from: e */
    public boolean m61367e(CompletableDisposable inner) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f97610e.get();
            if (completableDisposableArr == f97609i) {
                return false;
            }
            int length = completableDisposableArr.length;
            completableDisposableArr2 = new CompletableDisposable[length + 1];
            System.arraycopy(completableDisposableArr, 0, completableDisposableArr2, 0, length);
            completableDisposableArr2[length] = inner;
        } while (!cyi.m53538a(this.f97610e, completableDisposableArr, completableDisposableArr2));
        return true;
    }

    /* renamed from: f */
    public int m61368f() {
        return this.f97610e.get().length;
    }

    /* renamed from: g */
    public void m61369g(CompletableDisposable inner) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f97610e.get();
            int length = completableDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (completableDisposableArr[i] == inner) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                completableDisposableArr2 = f97608h;
            } else {
                CompletableDisposable[] completableDisposableArr3 = new CompletableDisposable[length - 1];
                System.arraycopy(completableDisposableArr, 0, completableDisposableArr3, 0, i);
                System.arraycopy(completableDisposableArr, i + 1, completableDisposableArr3, i, (length - i) - 1);
                completableDisposableArr2 = completableDisposableArr3;
            }
        } while (!cyi.m53538a(this.f97610e, completableDisposableArr, completableDisposableArr2));
    }

    @Nullable
    public Throwable getThrowable() {
        if (this.f97610e.get() == f97609i) {
            return this.f97612g;
        }
        return null;
    }

    public boolean hasComplete() {
        return this.f97610e.get() == f97609i && this.f97612g == null;
    }

    public boolean hasObservers() {
        return this.f97610e.get().length != 0;
    }

    public boolean hasThrowable() {
        return this.f97610e.get() == f97609i && this.f97612g != null;
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        if (this.f97611f.compareAndSet(false, true)) {
            for (CompletableDisposable completableDisposable : this.f97610e.getAndSet(f97609i)) {
                completableDisposable.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onError(Throwable e) {
        ExceptionHelper.nullCheck(e, "onError called with a null Throwable.");
        if (!this.f97611f.compareAndSet(false, true)) {
            RxJavaPlugins.onError(e);
            return;
        }
        this.f97612g = e;
        for (CompletableDisposable completableDisposable : this.f97610e.getAndSet(f97609i)) {
            completableDisposable.downstream.onError(e);
        }
    }

    @Override // io.reactivex.rxjava3.core.CompletableObserver
    public void onSubscribe(Disposable d) {
        if (this.f97610e.get() == f97609i) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(CompletableObserver observer) {
        CompletableDisposable completableDisposable = new CompletableDisposable(observer, this);
        observer.onSubscribe(completableDisposable);
        if (m61367e(completableDisposable)) {
            if (completableDisposable.isDisposed()) {
                m61369g(completableDisposable);
            }
        } else {
            Throwable th = this.f97612g;
            if (th != null) {
                observer.onError(th);
            } else {
                observer.onComplete();
            }
        }
    }
}
