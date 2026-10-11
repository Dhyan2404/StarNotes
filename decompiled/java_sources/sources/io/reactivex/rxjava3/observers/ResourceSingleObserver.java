package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.ListCompositeDisposable;
import io.reactivex.rxjava3.internal.util.EndConsumerHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public abstract class ResourceSingleObserver<T> implements SingleObserver<T>, Disposable {

    /* renamed from: e */
    public final AtomicReference<Disposable> f97445e = new AtomicReference<>();

    /* renamed from: f */
    public final ListCompositeDisposable f97446f = new ListCompositeDisposable();

    public final void add(@NonNull Disposable resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f97446f.add(resource);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (DisposableHelper.dispose(this.f97445e)) {
            this.f97446f.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f97445e.get());
    }

    public void onStart() {
    }

    @Override // io.reactivex.rxjava3.core.SingleObserver
    public final void onSubscribe(@NonNull Disposable d) {
        if (EndConsumerHelper.setOnce(this.f97445e, d, getClass())) {
            onStart();
        }
    }
}
