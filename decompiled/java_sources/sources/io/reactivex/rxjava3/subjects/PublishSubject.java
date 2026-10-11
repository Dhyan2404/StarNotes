package io.reactivex.rxjava3.subjects;

import com.sunia.HTREnginev2.cyi;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class PublishSubject<T> extends Subject<T> {

    /* renamed from: g */
    public static final PublishDisposable[] f97619g = new PublishDisposable[0];

    /* renamed from: h */
    public static final PublishDisposable[] f97620h = new PublishDisposable[0];

    /* renamed from: e */
    public final AtomicReference<PublishDisposable<T>[]> f97621e = new AtomicReference<>(f97620h);

    /* renamed from: f */
    public Throwable f97622f;

    /* loaded from: classes10.dex */
    public static final class PublishDisposable<T> extends AtomicBoolean implements Disposable {
        private static final long serialVersionUID = 3562861878281475070L;
        final Observer<? super T> downstream;
        final PublishSubject<T> parent;

        public PublishDisposable(Observer<? super T> actual, PublishSubject<T> parent) {
            this.downstream = actual;
            this.parent = parent;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.parent.m61374e(this);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }

        public void onComplete() {
            if (get()) {
                return;
            }
            this.downstream.onComplete();
        }

        public void onError(Throwable t) {
            if (get()) {
                RxJavaPlugins.onError(t);
            } else {
                this.downstream.onError(t);
            }
        }

        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }
    }

    @CheckReturnValue
    @NonNull
    public static <T> PublishSubject<T> create() {
        return new PublishSubject<>();
    }

    /* renamed from: d */
    public boolean m61373d(PublishDisposable<T> ps) {
        PublishDisposable<T>[] publishDisposableArr;
        PublishDisposable[] publishDisposableArr2;
        do {
            publishDisposableArr = this.f97621e.get();
            if (publishDisposableArr == f97619g) {
                return false;
            }
            int length = publishDisposableArr.length;
            publishDisposableArr2 = new PublishDisposable[length + 1];
            System.arraycopy(publishDisposableArr, 0, publishDisposableArr2, 0, length);
            publishDisposableArr2[length] = ps;
        } while (!cyi.m53538a(this.f97621e, publishDisposableArr, publishDisposableArr2));
        return true;
    }

    /* renamed from: e */
    public void m61374e(PublishDisposable<T> ps) {
        PublishDisposable<T>[] publishDisposableArr;
        PublishDisposable[] publishDisposableArr2;
        do {
            publishDisposableArr = this.f97621e.get();
            if (publishDisposableArr == f97619g || publishDisposableArr == f97620h) {
                return;
            }
            int length = publishDisposableArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (publishDisposableArr[i] == ps) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length == 1) {
                publishDisposableArr2 = f97620h;
            } else {
                PublishDisposable[] publishDisposableArr3 = new PublishDisposable[length - 1];
                System.arraycopy(publishDisposableArr, 0, publishDisposableArr3, 0, i);
                System.arraycopy(publishDisposableArr, i + 1, publishDisposableArr3, i, (length - i) - 1);
                publishDisposableArr2 = publishDisposableArr3;
            }
        } while (!cyi.m53538a(this.f97621e, publishDisposableArr, publishDisposableArr2));
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    @Nullable
    public Throwable getThrowable() {
        if (this.f97621e.get() == f97619g) {
            return this.f97622f;
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasComplete() {
        return this.f97621e.get() == f97619g && this.f97622f == null;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasObservers() {
        return this.f97621e.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @CheckReturnValue
    public boolean hasThrowable() {
        return this.f97621e.get() == f97619g && this.f97622f != null;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        PublishDisposable<T>[] publishDisposableArr = this.f97621e.get();
        PublishDisposable<T>[] publishDisposableArr2 = f97619g;
        if (publishDisposableArr == publishDisposableArr2) {
            return;
        }
        PublishDisposable<T>[] andSet = this.f97621e.getAndSet(publishDisposableArr2);
        for (PublishDisposable<T> publishDisposable : andSet) {
            publishDisposable.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        ExceptionHelper.nullCheck(t, "onError called with a null Throwable.");
        PublishDisposable<T>[] publishDisposableArr = this.f97621e.get();
        PublishDisposable<T>[] publishDisposableArr2 = f97619g;
        if (publishDisposableArr == publishDisposableArr2) {
            RxJavaPlugins.onError(t);
            return;
        }
        this.f97622f = t;
        PublishDisposable<T>[] andSet = this.f97621e.getAndSet(publishDisposableArr2);
        for (PublishDisposable<T> publishDisposable : andSet) {
            publishDisposable.onError(t);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        ExceptionHelper.nullCheck(t, "onNext called with a null value.");
        for (PublishDisposable<T> publishDisposable : this.f97621e.get()) {
            publishDisposable.onNext(t);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
        if (this.f97621e.get() == f97619g) {
            d.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        PublishDisposable<T> publishDisposable = new PublishDisposable<>(t, this);
        t.onSubscribe(publishDisposable);
        if (m61373d(publishDisposable)) {
            if (publishDisposable.isDisposed()) {
                m61374e(publishDisposable);
            }
        } else {
            Throwable th = this.f97622f;
            if (th != null) {
                t.onError(th);
            } else {
                t.onComplete();
            }
        }
    }
}
