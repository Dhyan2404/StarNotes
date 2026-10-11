package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableLastSingle<T> extends Single<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96685e;

    /* renamed from: f */
    public final T f96686f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableLastSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17515a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f96687e;

        /* renamed from: f */
        public final T f96688f;

        /* renamed from: g */
        public Disposable f96689g;

        /* renamed from: h */
        public T f96690h;

        public C17515a(SingleObserver<? super T> actual, T defaultItem) {
            this.f96687e = actual;
            this.f96688f = defaultItem;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96689g.dispose();
            this.f96689g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96689g == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96689g = DisposableHelper.DISPOSED;
            T t = this.f96690h;
            if (t != null) {
                this.f96690h = null;
                this.f96687e.onSuccess(t);
                return;
            }
            T t2 = this.f96688f;
            if (t2 != null) {
                this.f96687e.onSuccess(t2);
            } else {
                this.f96687e.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96689g = DisposableHelper.DISPOSED;
            this.f96690h = null;
            this.f96687e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.f96690h = t;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96689g, d)) {
                this.f96689g = d;
                this.f96687e.onSubscribe(this);
            }
        }
    }

    public ObservableLastSingle(ObservableSource<T> source, T defaultItem) {
        this.f96685e = source;
        this.f96686f = defaultItem;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f96685e.subscribe(new C17515a(observer, this.f96686f));
    }
}
