package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class SerializedObserver<T> implements Observer<T>, Disposable {

    /* renamed from: k */
    public static final int f97450k = 4;

    /* renamed from: e */
    public final Observer<? super T> f97451e;

    /* renamed from: f */
    public final boolean f97452f;

    /* renamed from: g */
    public Disposable f97453g;

    /* renamed from: h */
    public boolean f97454h;

    /* renamed from: i */
    public AppendOnlyLinkedArrayList<Object> f97455i;

    /* renamed from: j */
    public volatile boolean f97456j;

    public SerializedObserver(@NonNull Observer<? super T> downstream) {
        this(downstream, false);
    }

    /* renamed from: a */
    public void m61296a() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        do {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f97455i;
                if (appendOnlyLinkedArrayList == null) {
                    this.f97454h = false;
                    return;
                }
                this.f97455i = null;
            }
        } while (!appendOnlyLinkedArrayList.accept(this.f97451e));
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        this.f97456j = true;
        this.f97453g.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return this.f97453g.isDisposed();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (this.f97456j) {
            return;
        }
        synchronized (this) {
            if (this.f97456j) {
                return;
            }
            if (!this.f97454h) {
                this.f97456j = true;
                this.f97454h = true;
                this.f97451e.onComplete();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97455i;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f97455i = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.add(NotificationLite.complete());
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(@NonNull Throwable t) {
        if (this.f97456j) {
            RxJavaPlugins.onError(t);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f97456j) {
                if (this.f97454h) {
                    this.f97456j = true;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97455i;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f97455i = appendOnlyLinkedArrayList;
                    }
                    Object error = NotificationLite.error(t);
                    if (this.f97452f) {
                        appendOnlyLinkedArrayList.add(error);
                    } else {
                        appendOnlyLinkedArrayList.setFirst(error);
                    }
                    return;
                }
                this.f97456j = true;
                this.f97454h = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.onError(t);
            } else {
                this.f97451e.onError(t);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(@NonNull T t) {
        if (this.f97456j) {
            return;
        }
        if (t == null) {
            this.f97453g.dispose();
            onError(ExceptionHelper.createNullPointerException("onNext called with a null value."));
            return;
        }
        synchronized (this) {
            if (this.f97456j) {
                return;
            }
            if (!this.f97454h) {
                this.f97454h = true;
                this.f97451e.onNext(t);
                m61296a();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f97455i;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f97455i = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.add(NotificationLite.next(t));
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(@NonNull Disposable d) {
        if (DisposableHelper.validate(this.f97453g, d)) {
            this.f97453g = d;
            this.f97451e.onSubscribe(this);
        }
    }

    public SerializedObserver(@NonNull Observer<? super T> actual, boolean delayError) {
        this.f97451e = actual;
        this.f97452f = delayError;
    }
}
