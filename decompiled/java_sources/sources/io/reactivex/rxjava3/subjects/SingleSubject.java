package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleSubject<T> extends Single<T> implements SingleObserver<T> {

    /* renamed from: i */
    public static final SingleDisposable[] f97629i = new SingleDisposable[0];

    /* renamed from: j */
    public static final SingleDisposable[] f97630j = new SingleDisposable[0];

    /* renamed from: g */
    public T f97633g;

    /* renamed from: h */
    public Throwable f97634h;

    /* renamed from: f */
    public final AtomicBoolean f97632f = new AtomicBoolean();

    /* renamed from: e */
    public final AtomicReference<SingleDisposable<T>[]> f97631e = new AtomicReference<>(f97629i);

    /* loaded from: classes10.dex */
    public static final class SingleDisposable<T> extends AtomicReference<SingleSubject<T>> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;
        final SingleObserver<? super T> downstream;

        public SingleDisposable(SingleObserver<? super T> actual, SingleSubject<T> parent) {
            this.downstream = actual;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            SingleSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m61383e(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> SingleSubject<T> create() {
        return new SingleSubject<>();
    }

    /* renamed from: c */
    public boolean m61381c(@NonNull SingleDisposable<T> inner) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f97631e.get();
            if (singleDisposableArr == f97630j) {
                return false;
            }
            int length = singleDisposableArr.length;
            singleDisposableArr2 = new SingleDisposable[length + 1];
            System.arraycopy(singleDisposableArr, 0, singleDisposableArr2, 0, length);
            singleDisposableArr2[length] = inner;
        } while (!cyi.m53538a(this.f97631e, singleDisposableArr, singleDisposableArr2));
        return true;
    }

    /* renamed from: d */
    public int m61382d() {
        return this.f97631e.get().length;
    }

    /* renamed from: e */
    public void m61383e(@NonNull SingleDisposable<T> inner) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f97631e.get();
            int length = singleDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (singleDisposableArr[i] == inner) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                singleDisposableArr2 = f97629i;
            } else {
                SingleDisposable[] singleDisposableArr3 = new SingleDisposable[length - 1];
                System.arraycopy(singleDisposableArr, 0, singleDisposableArr3, 0, i);
                System.arraycopy(singleDisposableArr, i + 1, singleDisposableArr3, i, (length - i) - 1);
                singleDisposableArr2 = singleDisposableArr3;
            }
        } while (!cyi.m53538a(this.f97631e, singleDisposableArr, singleDisposableArr2));
    }

    @Nullable
    public Throwable getThrowable() {
        if (this.f97631e.get() == f97630j) {
            return this.f97634h;
        }
        return null;
    }

    @Nullable
    public T getValue() {
        if (this.f97631e.get() == f97630j) {
            return this.f97633g;
        }
        return null;
    }

    public boolean hasObservers() {
        return this.f97631e.get().length != 0;
    }

    public boolean hasThrowable() {
        return this.f97631e.get() == f97630j && this.f97634h != null;
    }

    public boolean hasValue() {
        return this.f97631e.get() == f97630j && this.f97633g != null;
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(@NonNull Throwable e) {
        ExceptionHelper.nullCheck(e, "onError called with a null Throwable.");
        if (!this.f97632f.compareAndSet(false, true)) {
            RxJavaPlugins.onError(e);
            return;
        }
        this.f97634h = e;
        for (SingleDisposable<T> singleDisposable : this.f97631e.getAndSet(f97630j)) {
            singleDisposable.downstream.onError(e);
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(@NonNull Disposable d) {
        if (this.f97631e.get() == f97630j) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(@NonNull T value) {
        ExceptionHelper.nullCheck(value, "onSuccess called with a null value.");
        if (this.f97632f.compareAndSet(false, true)) {
            this.f97633g = value;
            for (SingleDisposable<T> singleDisposable : this.f97631e.getAndSet(f97630j)) {
                singleDisposable.downstream.onSuccess(value);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(@NonNull SingleObserver<? super T> singleObserver) {
        SingleDisposable<T> singleDisposable = new SingleDisposable<>(singleObserver, this);
        singleObserver.onSubscribe(singleDisposable);
        if (m61381c(singleDisposable)) {
            if (singleDisposable.isDisposed()) {
                m61383e(singleDisposable);
            }
        } else {
            Throwable th = this.f97634h;
            if (th != null) {
                singleObserver.onError(th);
            } else {
                singleObserver.onSuccess(this.f97633g);
            }
        }
    }
}
