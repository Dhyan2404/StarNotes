package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.observers.BasicQueueDisposable;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class ObservableFromArray<T> extends Observable<T> {

    /* renamed from: e */
    public final T[] f96588e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableFromArray$a */
    /* loaded from: classes10.dex */
    public static final class C17492a<T> extends BasicQueueDisposable<T> {

        /* renamed from: e */
        public final Observer<? super T> f96589e;

        /* renamed from: f */
        public final T[] f96590f;

        /* renamed from: g */
        public int f96591g;

        /* renamed from: h */
        public boolean f96592h;

        /* renamed from: i */
        public volatile boolean f96593i;

        public C17492a(Observer<? super T> actual, T[] array) {
            this.f96589e = actual;
            this.f96590f = array;
        }

        /* renamed from: a */
        public void m61234a() {
            T[] tArr = this.f96590f;
            int length = tArr.length;
            for (int i = 0; i < length && !isDisposed(); i++) {
                T t = tArr[i];
                if (t == null) {
                    this.f96589e.onError(new NullPointerException("The element at index " + i + " is null"));
                    return;
                }
                this.f96589e.onNext(t);
            }
            if (isDisposed()) {
                return;
            }
            this.f96589e.onComplete();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            this.f96591g = this.f96590f.length;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96593i = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96593i;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            return this.f96591g == this.f96590f.length;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public T poll() {
            int i = this.f96591g;
            T[] tArr = this.f96590f;
            if (i == tArr.length) {
                return null;
            }
            this.f96591g = i + 1;
            T t = tArr[i];
            Objects.requireNonNull(t, "The array element is null");
            return t;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            if ((mode & 1) == 0) {
                return 0;
            }
            this.f96592h = true;
            return 1;
        }
    }

    public ObservableFromArray(T[] array) {
        this.f96588e = array;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> observer) {
        C17492a c17492a = new C17492a(observer, this.f96588e);
        observer.onSubscribe(c17492a);
        if (c17492a.f96592h) {
            return;
        }
        c17492a.m61234a();
    }
}
