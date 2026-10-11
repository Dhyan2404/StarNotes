package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class SingleDetach<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<T> f97150e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDetach$a */
    /* loaded from: classes10.dex */
    public static final class C17591a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public SingleObserver<? super T> f97151e;

        /* renamed from: f */
        public Disposable f97152f;

        public C17591a(SingleObserver<? super T> downstream) {
            this.f97151e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97151e = null;
            this.f97152f.dispose();
            this.f97152f = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97152f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97152f = DisposableHelper.DISPOSED;
            SingleObserver<? super T> singleObserver = this.f97151e;
            if (singleObserver != null) {
                this.f97151e = null;
                singleObserver.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f97152f, d)) {
                this.f97152f = d;
                this.f97151e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f97152f = DisposableHelper.DISPOSED;
            SingleObserver<? super T> singleObserver = this.f97151e;
            if (singleObserver != null) {
                this.f97151e = null;
                singleObserver.onSuccess(value);
            }
        }
    }

    public SingleDetach(SingleSource<T> source) {
        this.f97150e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f97150e.subscribe(new C17591a(observer));
    }
}
