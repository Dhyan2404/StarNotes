package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class CompositeDisposable implements Disposable, DisposableContainer {

    /* renamed from: e */
    public OpenHashSet<Disposable> f95010e;

    /* renamed from: f */
    public volatile boolean f95011f;

    public CompositeDisposable() {
    }

    /* renamed from: a */
    public void m61113a(@Nullable OpenHashSet<Disposable> set) {
        if (set == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : set.keys()) {
            if (obj instanceof Disposable) {
                try {
                    ((Disposable) obj).dispose();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw ExceptionHelper.wrapOrThrow((Throwable) arrayList.get(0));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public boolean add(@NonNull Disposable disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        if (!this.f95011f) {
            synchronized (this) {
                if (!this.f95011f) {
                    OpenHashSet<Disposable> openHashSet = this.f95010e;
                    if (openHashSet == null) {
                        openHashSet = new OpenHashSet<>();
                        this.f95010e = openHashSet;
                    }
                    openHashSet.add(disposable);
                    return true;
                }
            }
        }
        disposable.dispose();
        return false;
    }

    public boolean addAll(@NonNull Disposable... disposables) {
        Objects.requireNonNull(disposables, "disposables is null");
        if (!this.f95011f) {
            synchronized (this) {
                if (!this.f95011f) {
                    OpenHashSet<Disposable> openHashSet = this.f95010e;
                    if (openHashSet == null) {
                        openHashSet = new OpenHashSet<>(disposables.length + 1);
                        this.f95010e = openHashSet;
                    }
                    for (Disposable disposable : disposables) {
                        Objects.requireNonNull(disposable, "A Disposable in the disposables array is null");
                        openHashSet.add(disposable);
                    }
                    return true;
                }
            }
        }
        for (Disposable disposable2 : disposables) {
            disposable2.dispose();
        }
        return false;
    }

    public void clear() {
        if (this.f95011f) {
            return;
        }
        synchronized (this) {
            if (this.f95011f) {
                return;
            }
            OpenHashSet<Disposable> openHashSet = this.f95010e;
            this.f95010e = null;
            m61113a(openHashSet);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public boolean delete(@NonNull Disposable disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        if (this.f95011f) {
            return false;
        }
        synchronized (this) {
            if (this.f95011f) {
                return false;
            }
            OpenHashSet<Disposable> openHashSet = this.f95010e;
            if (openHashSet != null && openHashSet.remove(disposable)) {
                return true;
            }
            return false;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        if (this.f95011f) {
            return;
        }
        synchronized (this) {
            if (this.f95011f) {
                return;
            }
            this.f95011f = true;
            OpenHashSet<Disposable> openHashSet = this.f95010e;
            this.f95010e = null;
            m61113a(openHashSet);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f95011f;
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public boolean remove(@NonNull Disposable disposable) {
        if (!delete(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    public int size() {
        if (this.f95011f) {
            return 0;
        }
        synchronized (this) {
            if (this.f95011f) {
                return 0;
            }
            OpenHashSet<Disposable> openHashSet = this.f95010e;
            return openHashSet != null ? openHashSet.size() : 0;
        }
    }

    public CompositeDisposable(@NonNull Disposable... disposables) {
        Objects.requireNonNull(disposables, "disposables is null");
        this.f95010e = new OpenHashSet<>(disposables.length + 1);
        for (Disposable disposable : disposables) {
            Objects.requireNonNull(disposable, "A Disposable in the disposables array is null");
            this.f95010e.add(disposable);
        }
    }

    public CompositeDisposable(@NonNull Iterable<? extends Disposable> disposables) {
        Objects.requireNonNull(disposables, "disposables is null");
        this.f95010e = new OpenHashSet<>();
        for (Disposable disposable : disposables) {
            Objects.requireNonNull(disposable, "A Disposable item in the disposables sequence is null");
            this.f95010e.add(disposable);
        }
    }
}
