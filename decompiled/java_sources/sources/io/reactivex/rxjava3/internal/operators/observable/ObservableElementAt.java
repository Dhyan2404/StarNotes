package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class ObservableElementAt<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final long f96540e;

    /* renamed from: f */
    public final T f96541f;

    /* renamed from: g */
    public final boolean f96542g;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableElementAt$a */
    /* loaded from: classes10.dex */
    public static final class C17487a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96543e;

        /* renamed from: f */
        public final long f96544f;

        /* renamed from: g */
        public final T f96545g;

        /* renamed from: h */
        public final boolean f96546h;

        /* renamed from: i */
        public Disposable f96547i;

        /* renamed from: j */
        public long f96548j;

        /* renamed from: k */
        public boolean f96549k;

        public C17487a(Observer<? super T> actual, long index, T defaultValue, boolean errorOnFewer) {
            this.f96543e = actual;
            this.f96544f = index;
            this.f96545g = defaultValue;
            this.f96546h = errorOnFewer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96547i.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96547i.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            if (this.f96549k) {
                return;
            }
            this.f96549k = true;
            T t = this.f96545g;
            if (t == null && this.f96546h) {
                this.f96543e.onError(new NoSuchElementException());
                return;
            }
            if (t != null) {
                this.f96543e.onNext(t);
            }
            this.f96543e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            if (this.f96549k) {
                RxJavaPlugins.onError(t);
            } else {
                this.f96549k = true;
                this.f96543e.onError(t);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            if (this.f96549k) {
                return;
            }
            long j = this.f96548j;
            if (j != this.f96544f) {
                this.f96548j = j + 1;
                return;
            }
            this.f96549k = true;
            this.f96547i.dispose();
            this.f96543e.onNext(t);
            this.f96543e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96547i, d)) {
                this.f96547i = d;
                this.f96543e.onSubscribe(this);
            }
        }
    }

    public ObservableElementAt(ObservableSource<T> source, long index, T defaultValue, boolean errorOnFewer) {
        super(source);
        this.f96540e = index;
        this.f96541f = defaultValue;
        this.f96542g = errorOnFewer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17487a(t, this.f96540e, this.f96541f, this.f96542g));
    }
}
