package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.ListCompositeDisposable;
import io.reactivex.rxjava3.internal.util.EndConsumerHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public abstract class ResourceObserver<T> implements Observer<T>, Disposable {

    /* renamed from: e */
    public final AtomicReference<Disposable> f97443e = new AtomicReference<>();

    /* renamed from: f */
    public final ListCompositeDisposable f97444f = new ListCompositeDisposable();

    public final void add(@NonNull Disposable resource) {
        Objects.requireNonNull(resource, "resource is null");
        this.f97444f.add(resource);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (DisposableHelper.dispose(this.f97443e)) {
            this.f97444f.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f97443e.get());
    }

    public void onStart() {
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable d) {
        if (EndConsumerHelper.setOnce(this.f97443e, d, getClass())) {
            onStart();
        }
    }
}
