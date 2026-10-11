package io.reactivex.rxjava3.internal.disposables;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ListCompositeDisposable implements Disposable, DisposableContainer {

    /* renamed from: e */
    public List<Disposable> f95016e;

    /* renamed from: f */
    public volatile boolean f95017f;

    public ListCompositeDisposable() {
    }

    /* renamed from: a */
    public void m61117a(List<Disposable> set) {
        if (set == null) {
            return;
        }
        Iterator<Disposable> it2 = set.iterator();
        ArrayList arrayList = null;
        while (it2.hasNext()) {
            try {
                it2.next().dispose();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th);
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
    public boolean add(Disposable d) {
        Objects.requireNonNull(d, "d is null");
        if (!this.f95017f) {
            synchronized (this) {
                if (!this.f95017f) {
                    List list = this.f95016e;
                    if (list == null) {
                        list = new LinkedList();
                        this.f95016e = list;
                    }
                    list.add(d);
                    return true;
                }
            }
        }
        d.dispose();
        return false;
    }

    public boolean addAll(Disposable... ds) {
        Objects.requireNonNull(ds, "ds is null");
        if (!this.f95017f) {
            synchronized (this) {
                if (!this.f95017f) {
                    List list = this.f95016e;
                    if (list == null) {
                        list = new LinkedList();
                        this.f95016e = list;
                    }
                    for (Disposable disposable : ds) {
                        Objects.requireNonNull(disposable, "d is null");
                        list.add(disposable);
                    }
                    return true;
                }
            }
        }
        for (Disposable disposable2 : ds) {
            disposable2.dispose();
        }
        return false;
    }

    public void clear() {
        if (this.f95017f) {
            return;
        }
        synchronized (this) {
            if (this.f95017f) {
                return;
            }
            List<Disposable> list = this.f95016e;
            this.f95016e = null;
            m61117a(list);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public boolean delete(Disposable d) {
        Objects.requireNonNull(d, "Disposable item is null");
        if (this.f95017f) {
            return false;
        }
        synchronized (this) {
            if (this.f95017f) {
                return false;
            }
            List<Disposable> list = this.f95016e;
            if (list != null && list.remove(d)) {
                return true;
            }
            return false;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        if (this.f95017f) {
            return;
        }
        synchronized (this) {
            if (this.f95017f) {
                return;
            }
            this.f95017f = true;
            List<Disposable> list = this.f95016e;
            this.f95016e = null;
            m61117a(list);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f95017f;
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public boolean remove(Disposable d) {
        if (!delete(d)) {
            return false;
        }
        d.dispose();
        return true;
    }

    public ListCompositeDisposable(Disposable... resources) {
        Objects.requireNonNull(resources, "resources is null");
        this.f95016e = new LinkedList();
        for (Disposable disposable : resources) {
            Objects.requireNonNull(disposable, "Disposable item is null");
            this.f95016e.add(disposable);
        }
    }

    public ListCompositeDisposable(Iterable<? extends Disposable> resources) {
        Objects.requireNonNull(resources, "resources is null");
        this.f95016e = new LinkedList();
        for (Disposable disposable : resources) {
            Objects.requireNonNull(disposable, "Disposable item is null");
            this.f95016e.add(disposable);
        }
    }
}
