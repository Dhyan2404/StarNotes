package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes10.dex */
public final class SingleAmb<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<? extends T>[] f97105e;

    /* renamed from: f */
    public final Iterable<? extends SingleSource<? extends T>> f97106f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleAmb$a */
    /* loaded from: classes10.dex */
    public static final class C17587a<T> implements SingleObserver<T> {

        /* renamed from: e */
        public final CompositeDisposable f97107e;

        /* renamed from: f */
        public final SingleObserver<? super T> f97108f;

        /* renamed from: g */
        public final AtomicBoolean f97109g;

        /* renamed from: h */
        public Disposable f97110h;

        public C17587a(SingleObserver<? super T> observer, CompositeDisposable set, AtomicBoolean winner) {
            this.f97108f = observer;
            this.f97107e = set;
            this.f97109g = winner;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            if (!this.f97109g.compareAndSet(false, true)) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.f97107e.delete(this.f97110h);
            this.f97107e.dispose();
            this.f97108f.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97110h = d;
            this.f97107e.add(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            if (this.f97109g.compareAndSet(false, true)) {
                this.f97107e.delete(this.f97110h);
                this.f97107e.dispose();
                this.f97108f.onSuccess(value);
            }
        }
    }

    public SingleAmb(SingleSource<? extends T>[] sources, Iterable<? extends SingleSource<? extends T>> sourcesIterable) {
        this.f97105e = sources;
        this.f97106f = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        int length;
        SingleSource<? extends T>[] singleSourceArr = this.f97105e;
        if (singleSourceArr == null) {
            singleSourceArr = new SingleSource[8];
            try {
                length = 0;
                for (SingleSource<? extends T> singleSource : this.f97106f) {
                    if (singleSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == singleSourceArr.length) {
                        SingleSource<? extends T>[] singleSourceArr2 = new SingleSource[(length >> 2) + length];
                        System.arraycopy(singleSourceArr, 0, singleSourceArr2, 0, length);
                        singleSourceArr = singleSourceArr2;
                    }
                    int i = length + 1;
                    singleSourceArr[length] = singleSource;
                    length = i;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = singleSourceArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        observer.onSubscribe(compositeDisposable);
        for (int i2 = 0; i2 < length; i2++) {
            SingleSource<? extends T> singleSource2 = singleSourceArr[i2];
            if (compositeDisposable.isDisposed()) {
                return;
            }
            if (singleSource2 == null) {
                compositeDisposable.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    observer.onError(nullPointerException);
                    return;
                } else {
                    RxJavaPlugins.onError(nullPointerException);
                    return;
                }
            }
            singleSource2.subscribe(new C17587a(observer, compositeDisposable, atomicBoolean));
        }
    }
}
