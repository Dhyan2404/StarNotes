package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* loaded from: classes10.dex */
public final class SingleHide<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<? extends T> f97239e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleHide$a */
    /* loaded from: classes10.dex */
    public static final class C17605a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super T> f97240e;

        /* renamed from: f */
        public Disposable f97241f;

        public C17605a(SingleObserver<? super T> downstream) {
            this.f97240e = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97241f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97241f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f97240e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f97241f, d)) {
                this.f97241f = d;
                this.f97240e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f97240e.onSuccess(value);
        }
    }

    public SingleHide(SingleSource<? extends T> source) {
        this.f97239e = source;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(SingleObserver<? super T> observer) {
        this.f97239e.subscribe(new C17605a(observer));
    }
}
