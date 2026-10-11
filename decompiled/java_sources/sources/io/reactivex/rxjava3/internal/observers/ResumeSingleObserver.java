package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ResumeSingleObserver<T> implements SingleObserver<T> {

    /* renamed from: e */
    public final AtomicReference<Disposable> f95189e;

    /* renamed from: f */
    public final SingleObserver<? super T> f95190f;

    public ResumeSingleObserver(AtomicReference<Disposable> parent, SingleObserver<? super T> downstream) {
        this.f95189e = parent;
        this.f95190f = downstream;
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onError(Throwable e) {
        this.f95190f.onError(e);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSubscribe(Disposable d) {
        DisposableHelper.replace(this.f95189e, d);
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public void onSuccess(T value) {
        this.f95190f.onSuccess(value);
    }
}
