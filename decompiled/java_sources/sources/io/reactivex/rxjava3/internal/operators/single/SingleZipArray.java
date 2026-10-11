package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleZipArray<T, R> extends Single<R> {

    /* renamed from: e */
    public final SingleSource<? extends T>[] f97293e;

    /* renamed from: f */
    public final Function<? super Object[], ? extends R> f97294f;

    /* loaded from: classes10.dex */
    public static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -5556924161382950569L;
        final SingleObserver<? super R> downstream;
        final ZipSingleObserver<T>[] observers;
        Object[] values;
        final Function<? super Object[], ? extends R> zipper;

        public ZipCoordinator(SingleObserver<? super R> observer, int n, Function<? super Object[], ? extends R> zipper) {
            super(n);
            this.downstream = observer;
            this.zipper = zipper;
            ZipSingleObserver<T>[] zipSingleObserverArr = new ZipSingleObserver[n];
            for (int i = 0; i < n; i++) {
                zipSingleObserverArr[i] = new ZipSingleObserver<>(this, i);
            }
            this.observers = zipSingleObserverArr;
            this.values = new Object[n];
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipSingleObserver<T> zipSingleObserver : this.observers) {
                    zipSingleObserver.dispose();
                }
                this.values = null;
            }
        }

        public void disposeExcept(int index) {
            ZipSingleObserver<T>[] zipSingleObserverArr = this.observers;
            int length = zipSingleObserverArr.length;
            for (int i = 0; i < index; i++) {
                zipSingleObserverArr[i].dispose();
            }
            while (true) {
                index++;
                if (index >= length) {
                    return;
                } else {
                    zipSingleObserverArr[index].dispose();
                }
            }
        }

        public void innerError(Throwable ex, int index) {
            if (getAndSet(0) <= 0) {
                RxJavaPlugins.onError(ex);
                return;
            }
            disposeExcept(index);
            this.values = null;
            this.downstream.onError(ex);
        }

        public void innerSuccess(T value, int index) {
            Object[] objArr = this.values;
            if (objArr != null) {
                objArr[index] = value;
            }
            if (decrementAndGet() == 0) {
                try {
                    R apply = this.zipper.apply(objArr);
                    Objects.requireNonNull(apply, "The zipper returned a null value");
                    this.values = null;
                    this.downstream.onSuccess(apply);
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.values = null;
                    this.downstream.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* loaded from: classes10.dex */
    public static final class ZipSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
        private static final long serialVersionUID = 3323743579927613702L;
        final int index;
        final ZipCoordinator<T, ?> parent;

        public ZipSingleObserver(ZipCoordinator<T, ?> parent, int index) {
            this.parent = parent;
            this.index = index;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.parent.innerError(e, this.index);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this, d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.parent.innerSuccess(value, this.index);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleZipArray$a */
    /* loaded from: classes10.dex */
    public final class C17611a implements Function<T, R> {
        public C17611a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public R apply(T t) throws Throwable {
            R apply = SingleZipArray.this.f97294f.apply(new Object[]{t});
            Objects.requireNonNull(apply, "The zipper returned a null value");
            return apply;
        }
    }

    public SingleZipArray(SingleSource<? extends T>[] sources, Function<? super Object[], ? extends R> zipper) {
        this.f97293e = sources;
        this.f97294f = zipper;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super R> observer) {
        SingleSource<? extends T>[] singleSourceArr = this.f97293e;
        int length = singleSourceArr.length;
        if (length == 1) {
            singleSourceArr[0].subscribe(new SingleMap.C17608a(observer, new C17611a()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(observer, length, this.f97294f);
        observer.onSubscribe(zipCoordinator);
        for (int i = 0; i < length && !zipCoordinator.isDisposed(); i++) {
            SingleSource<? extends T> singleSource = singleSourceArr[i];
            if (singleSource == null) {
                zipCoordinator.innerError(new NullPointerException("One of the sources is null"), i);
                return;
            }
            singleSource.subscribe(zipCoordinator.observers[i]);
        }
    }
}
