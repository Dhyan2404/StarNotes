package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes10.dex */
public final class MaybeAmb<T> extends Maybe<T> {

    /* renamed from: e */
    public final MaybeSource<? extends T>[] f96000e;

    /* renamed from: f */
    public final Iterable<? extends MaybeSource<? extends T>> f96001f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeAmb$a */
    /* loaded from: classes10.dex */
    public static final class C17420a<T> implements MaybeObserver<T> {

        /* renamed from: e */
        public final MaybeObserver<? super T> f96002e;

        /* renamed from: f */
        public final AtomicBoolean f96003f;

        /* renamed from: g */
        public final CompositeDisposable f96004g;

        /* renamed from: h */
        public Disposable f96005h;

        public C17420a(MaybeObserver<? super T> downstream, CompositeDisposable set, AtomicBoolean winner) {
            this.f96002e = downstream;
            this.f96004g = set;
            this.f96003f = winner;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            if (this.f96003f.compareAndSet(false, true)) {
                this.f96004g.delete(this.f96005h);
                this.f96004g.dispose();
                this.f96002e.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            if (!this.f96003f.compareAndSet(false, true)) {
                RxJavaPlugins.onError(e);
                return;
            }
            this.f96004g.delete(this.f96005h);
            this.f96004g.dispose();
            this.f96002e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f96005h = d;
            this.f96004g.add(d);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T value) {
            if (this.f96003f.compareAndSet(false, true)) {
                this.f96004g.delete(this.f96005h);
                this.f96004g.dispose();
                this.f96002e.onSuccess(value);
            }
        }
    }

    public MaybeAmb(MaybeSource<? extends T>[] sources, Iterable<? extends MaybeSource<? extends T>> sourcesIterable) {
        this.f96000e = sources;
        this.f96001f = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(MaybeObserver<? super T> observer) {
        int length;
        MaybeSource<? extends T>[] maybeSourceArr = this.f96000e;
        if (maybeSourceArr == null) {
            maybeSourceArr = new MaybeSource[8];
            try {
                length = 0;
                for (MaybeSource<? extends T> maybeSource : this.f96001f) {
                    if (maybeSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == maybeSourceArr.length) {
                        MaybeSource<? extends T>[] maybeSourceArr2 = new MaybeSource[(length >> 2) + length];
                        System.arraycopy(maybeSourceArr, 0, maybeSourceArr2, 0, length);
                        maybeSourceArr = maybeSourceArr2;
                    }
                    int i = length + 1;
                    maybeSourceArr[length] = maybeSource;
                    length = i;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = maybeSourceArr.length;
        }
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        observer.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i2 = 0; i2 < length; i2++) {
            MaybeSource<? extends T> maybeSource2 = maybeSourceArr[i2];
            if (compositeDisposable.isDisposed()) {
                return;
            }
            if (maybeSource2 == null) {
                compositeDisposable.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    observer.onError(nullPointerException);
                    return;
                } else {
                    RxJavaPlugins.onError(nullPointerException);
                    return;
                }
            }
            maybeSource2.subscribe(new C17420a(observer, compositeDisposable, atomicBoolean));
        }
        if (length == 0) {
            observer.onComplete();
        }
    }
}
