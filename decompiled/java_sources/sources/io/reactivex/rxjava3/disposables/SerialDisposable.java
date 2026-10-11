package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class SerialDisposable implements Disposable {

    /* renamed from: e */
    public final AtomicReference<Disposable> f95012e;

    public SerialDisposable() {
        this.f95012e = new AtomicReference<>();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        DisposableHelper.dispose(this.f95012e);
    }

    @Nullable
    public Disposable get() {
        Disposable disposable = this.f95012e.get();
        return disposable == DisposableHelper.DISPOSED ? Disposable.disposed() : disposable;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f95012e.get());
    }

    public boolean replace(@Nullable Disposable next) {
        return DisposableHelper.replace(this.f95012e, next);
    }

    public boolean set(@Nullable Disposable next) {
        return DisposableHelper.set(this.f95012e, next);
    }

    public SerialDisposable(@Nullable Disposable initialDisposable) {
        this.f95012e = new AtomicReference<>(initialDisposable);
    }
}
