package com.sunia.HTREnginev2;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.subjects.Subject;

/* loaded from: classes10.dex */
public final class ehm<T> extends Subject<T> implements AppendOnlyLinkedArrayList.NonThrowingPredicate<Object> {

    /* renamed from: e */
    public final Subject<T> f68946e;

    /* renamed from: f */
    public boolean f68947f;

    /* renamed from: g */
    public AppendOnlyLinkedArrayList<Object> f68948g;

    /* renamed from: h */
    public volatile boolean f68949h;

    public ehm(final Subject<T> actual) {
        this.f68946e = actual;
    }

    /* renamed from: d */
    public void m53962d() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        while (true) {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f68948g;
                if (appendOnlyLinkedArrayList == null) {
                    this.f68947f = false;
                    return;
                }
                this.f68948g = null;
            }
            appendOnlyLinkedArrayList.forEachWhile(this);
        }
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    @Nullable
    public Throwable getThrowable() {
        return this.f68946e.getThrowable();
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    public boolean hasComplete() {
        return this.f68946e.hasComplete();
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    public boolean hasObservers() {
        return this.f68946e.hasObservers();
    }

    @Override // io.reactivex.rxjava3.subjects.Subject
    public boolean hasThrowable() {
        return this.f68946e.hasThrowable();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (this.f68949h) {
            return;
        }
        synchronized (this) {
            if (this.f68949h) {
                return;
            }
            this.f68949h = true;
            if (!this.f68947f) {
                this.f68947f = true;
                this.f68946e.onComplete();
                return;
            }
            AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f68948g;
            if (appendOnlyLinkedArrayList == null) {
                appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                this.f68948g = appendOnlyLinkedArrayList;
            }
            appendOnlyLinkedArrayList.add(NotificationLite.complete());
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable t) {
        if (this.f68949h) {
            RxJavaPlugins.onError(t);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f68949h) {
                this.f68949h = true;
                if (this.f68947f) {
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f68948g;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                        this.f68948g = appendOnlyLinkedArrayList;
                    }
                    appendOnlyLinkedArrayList.setFirst(NotificationLite.error(t));
                    return;
                }
                this.f68947f = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.onError(t);
            } else {
                this.f68946e.onError(t);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onNext(T t) {
        if (this.f68949h) {
            return;
        }
        synchronized (this) {
            if (this.f68949h) {
                return;
            }
            if (!this.f68947f) {
                this.f68947f = true;
                this.f68946e.onNext(t);
                m53962d();
            } else {
                AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f68948g;
                if (appendOnlyLinkedArrayList == null) {
                    appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                    this.f68948g = appendOnlyLinkedArrayList;
                }
                appendOnlyLinkedArrayList.add(NotificationLite.next(t));
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onSubscribe(Disposable d) {
        boolean z = true;
        if (!this.f68949h) {
            synchronized (this) {
                if (!this.f68949h) {
                    if (this.f68947f) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f68948g;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList = new AppendOnlyLinkedArrayList<>(4);
                            this.f68948g = appendOnlyLinkedArrayList;
                        }
                        appendOnlyLinkedArrayList.add(NotificationLite.disposable(d));
                        return;
                    }
                    this.f68947f = true;
                    z = false;
                }
            }
        }
        if (z) {
            d.dispose();
        } else {
            this.f68946e.onSubscribe(d);
            m53962d();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f68946e.subscribe(observer);
    }

    @Override // io.reactivex.rxjava3.internal.util.AppendOnlyLinkedArrayList.NonThrowingPredicate, io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object o) {
        return NotificationLite.acceptFull(o, this.f68946e);
    }
}
