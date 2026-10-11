package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableElementAtSingle<T> extends Single<T> implements FuseToObservable<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96557e;

    /* renamed from: f */
    public final long f96558f;

    /* renamed from: g */
    public final T f96559g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableElementAtSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17489a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f96560e;

        /* renamed from: f */
        public final long f96561f;

        /* renamed from: g */
        public final T f96562g;

        /* renamed from: h */
        public Disposable f96563h;

        /* renamed from: i */
        public long f96564i;

        /* renamed from: j */
        public boolean f96565j;

        public C17489a(SingleObserver<? super T> actual, long index, T defaultValue) {
            this.f96560e = actual;
            this.f96561f = index;
            this.f96562g = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96563h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96563h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96565j) {
                return;
            }
            this.f96565j = true;
            T t = this.f96562g;
            if (t != null) {
                this.f96560e.onSuccess(t);
            } else {
                this.f96560e.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96565j) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96565j = true;
                this.f96560e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96565j) {
                return;
            }
            long j = this.f96564i;
            if (j != this.f96561f) {
                this.f96564i = j + 1;
                return;
            }
            this.f96565j = true;
            this.f96563h.dispose();
            this.f96560e.onSuccess(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96563h, d)) {
                this.f96563h = d;
                this.f96560e.onSubscribe(this);
            }
        }
    }

    public ObservableElementAtSingle(ObservableSource<T> source, long index, T defaultValue) {
        this.f96557e = source;
        this.f96558f = index;
        this.f96559g = defaultValue;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public Observable<T> fuseToObservable() {
        return RxJavaPlugins.onAssembly(new ObservableElementAt(this.f96557e, this.f96558f, this.f96559g, true));
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> t) {
        this.f96557e.subscribe(new C17489a(t, this.f96558f, this.f96559g));
    }
}
