package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.EndConsumerHelper;

/* loaded from: classes10.dex */
public abstract class DefaultObserver<T> implements Observer<T> {

    /* renamed from: e */
    public Disposable f97434e;

    public final void cancel() {
        Disposable disposable = this.f97434e;
        this.f97434e = DisposableHelper.DISPOSED;
        disposable.dispose();
    }

    public void onStart() {
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(@NonNull Disposable d) {
        if (EndConsumerHelper.validate(this.f97434e, d, getClass())) {
            this.f97434e = d;
            onStart();
        }
    }
}
