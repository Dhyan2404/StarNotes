package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;

/* loaded from: classes10.dex */
public final class CompletableFromSingle<T> extends Completable {

    /* renamed from: e */
    public final SingleSource<T> f95251e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableFromSingle$a */
    /* loaded from: classes10.dex */
    public static final class C17310a<T> implements SingleObserver<T> {

        /* renamed from: e */
        public final CompletableObserver f95252e;

        public C17310a(CompletableObserver co) {
            this.f95252e = co;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f95252e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f95252e.onSubscribe(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            this.f95252e.onComplete();
        }
    }

    public CompletableFromSingle(SingleSource<T> single) {
        this.f95251e = single;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        this.f95251e.subscribe(new C17310a(observer));
    }
}
