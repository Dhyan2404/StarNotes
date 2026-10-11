package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class MaybeSubject<T> extends Maybe<T> implements MaybeObserver<T> {

    /* renamed from: i */
    public static final MaybeDisposable[] f97613i = new MaybeDisposable[0];

    /* renamed from: j */
    public static final MaybeDisposable[] f97614j = new MaybeDisposable[0];

    /* renamed from: g */
    public T f97617g;

    /* renamed from: h */
    public Throwable f97618h;

    /* renamed from: f */
    public final AtomicBoolean f97616f = new AtomicBoolean();

    /* renamed from: e */
    public final AtomicReference<MaybeDisposable<T>[]> f97615e = new AtomicReference<>(f97613i);

    /* loaded from: classes10.dex */
    public static final class MaybeDisposable<T> extends AtomicReference<MaybeSubject<T>> implements Disposable {
        private static final long serialVersionUID = -7650903191002190468L;
        final MaybeObserver<? super T> downstream;

        public MaybeDisposable(MaybeObserver<? super T> actual, MaybeSubject<T> parent) {
            this.downstream = actual;
            lazySet(parent);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            MaybeSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m61372c(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == null;
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> MaybeSubject<T> create() {
        return new MaybeSubject<>();
    }

    /* renamed from: a */
    public boolean m61370a(MaybeDisposable<T> inner) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f97615e.get();
            if (maybeDisposableArr == f97614j) {
                return false;
            }
            int length = maybeDisposableArr.length;
            maybeDisposableArr2 = new MaybeDisposable[length + 1];
            System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr2, 0, length);
            maybeDisposableArr2[length] = inner;
        } while (!cyi.m53538a(this.f97615e, maybeDisposableArr, maybeDisposableArr2));
        return true;
    }

    /* renamed from: b */
    public int m61371b() {
        return this.f97615e.get().length;
    }

    /* renamed from: c */
    public void m61372c(MaybeDisposable<T> inner) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f97615e.get();
            int length = maybeDisposableArr.length;
            if (length == 0) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (maybeDisposableArr[i] == inner) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                maybeDisposableArr2 = f97613i;
            } else {
                MaybeDisposable[] maybeDisposableArr3 = new MaybeDisposable[length - 1];
                System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr3, 0, i);
                System.arraycopy(maybeDisposableArr, i + 1, maybeDisposableArr3, i, (length - i) - 1);
                maybeDisposableArr2 = maybeDisposableArr3;
            }
        } while (!cyi.m53538a(this.f97615e, maybeDisposableArr, maybeDisposableArr2));
    }

    @Nullable
    public Throwable getThrowable() {
        if (this.f97615e.get() == f97614j) {
            return this.f97618h;
        }
        return null;
    }

    @Nullable
    public T getValue() {
        if (this.f97615e.get() == f97614j) {
            return this.f97617g;
        }
        return null;
    }

    public boolean hasComplete() {
        return this.f97615e.get() == f97614j && this.f97617g == null && this.f97618h == null;
    }

    public boolean hasObservers() {
        return this.f97615e.get().length != 0;
    }

    public boolean hasThrowable() {
        return this.f97615e.get() == f97614j && this.f97618h != null;
    }

    public boolean hasValue() {
        return this.f97615e.get() == f97614j && this.f97617g != null;
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
    public void onComplete() {
        if (this.f97616f.compareAndSet(false, true)) {
            for (MaybeDisposable<T> maybeDisposable : this.f97615e.getAndSet(f97614j)) {
                maybeDisposable.downstream.onComplete();
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable e) {
        ExceptionHelper.nullCheck(e, "onError called with a null Throwable.");
        if (!this.f97616f.compareAndSet(false, true)) {
            RxJavaPlugins.onError(e);
            return;
        }
        this.f97618h = e;
        for (MaybeDisposable<T> maybeDisposable : this.f97615e.getAndSet(f97614j)) {
            maybeDisposable.downstream.onError(e);
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable d) {
        if (this.f97615e.get() == f97614j) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(T value) {
        ExceptionHelper.nullCheck(value, "onSuccess called with a null value.");
        if (this.f97616f.compareAndSet(false, true)) {
            this.f97617g = value;
            for (MaybeDisposable<T> maybeDisposable : this.f97615e.getAndSet(f97614j)) {
                maybeDisposable.downstream.onSuccess(value);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> maybeObserver) {
        MaybeDisposable<T> maybeDisposable = new MaybeDisposable<>(maybeObserver, this);
        maybeObserver.onSubscribe(maybeDisposable);
        if (m61370a(maybeDisposable)) {
            if (maybeDisposable.isDisposed()) {
                m61372c(maybeDisposable);
                return;
            }
            return;
        }
        Throwable th = this.f97618h;
        if (th != null) {
            maybeObserver.onError(th);
            return;
        }
        T t = this.f97617g;
        if (t == null) {
            maybeObserver.onComplete();
        } else {
            maybeObserver.onSuccess(t);
        }
    }
}
