package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes10.dex */
public final class CompletableAmb extends Completable {

    /* renamed from: e */
    public final CompletableSource[] f95197e;

    /* renamed from: f */
    public final Iterable<? extends CompletableSource> f95198f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableAmb$a */
    /* loaded from: classes10.dex */
    public static final class C17303a implements CompletableObserver {

        /* renamed from: e */
        public final AtomicBoolean f95199e;

        /* renamed from: f */
        public final CompositeDisposable f95200f;

        /* renamed from: g */
        public final CompletableObserver f95201g;

        /* renamed from: h */
        public Disposable f95202h;

        public C17303a(AtomicBoolean once, CompositeDisposable set, CompletableObserver observer) {
            this.f95199e = once;
            this.f95200f = set;
            this.f95201g = observer;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            if (this.f95199e.compareAndSet(false, true)) {
                this.f95200f.delete(this.f95202h);
                this.f95200f.dispose();
                this.f95201g.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            if (!this.f95199e.compareAndSet(false, true)) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.f95200f.delete(this.f95202h);
            this.f95200f.dispose();
            this.f95201g.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            this.f95202h = d;
            this.f95200f.add(d);
        }
    }

    public CompletableAmb(CompletableSource[] sources, Iterable<? extends CompletableSource> sourcesIterable) {
        this.f95197e = sources;
        this.f95198f = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        int length;
        CompletableSource[] completableSourceArr = this.f95197e;
        if (completableSourceArr == null) {
            completableSourceArr = new CompletableSource[8];
            try {
                length = 0;
                for (CompletableSource completableSource : this.f95198f) {
                    if (completableSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == completableSourceArr.length) {
                        CompletableSource[] completableSourceArr2 = new CompletableSource[(length >> 2) + length];
                        System.arraycopy(completableSourceArr, 0, completableSourceArr2, 0, length);
                        completableSourceArr = completableSourceArr2;
                    }
                    int i = length + 1;
                    completableSourceArr[length] = completableSource;
                    length = i;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = completableSourceArr.length;
        }
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        observer.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i2 = 0; i2 < length; i2++) {
            CompletableSource completableSource2 = completableSourceArr[i2];
            if (compositeDisposable.isDisposed()) {
                return;
            }
            if (completableSource2 == null) {
                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                if (!atomicBoolean.compareAndSet(false, true)) {
                    RxJavaPlugins.onError(nullPointerException);
                    return;
                } else {
                    compositeDisposable.dispose();
                    observer.onError(nullPointerException);
                    return;
                }
            }
            completableSource2.subscribe(new C17303a(atomicBoolean, compositeDisposable, observer));
        }
        if (length == 0) {
            observer.onComplete();
        }
    }
}
