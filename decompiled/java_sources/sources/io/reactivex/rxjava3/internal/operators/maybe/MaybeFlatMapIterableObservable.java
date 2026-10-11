package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicQueueDisposable;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes10.dex */
public final class MaybeFlatMapIterableObservable<T, R> extends Observable<R> {

    /* renamed from: e */
    public final MaybeSource<T> f96089e;

    /* renamed from: f */
    public final Function<? super T, ? extends Iterable<? extends R>> f96090f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeFlatMapIterableObservable$a */
    /* loaded from: classes10.dex */
    public static final class C17434a<T, R> extends BasicQueueDisposable<R> implements MaybeObserver<T> {

        /* renamed from: e */
        public final Observer<? super R> f96091e;

        /* renamed from: f */
        public final Function<? super T, ? extends Iterable<? extends R>> f96092f;

        /* renamed from: g */
        public Disposable f96093g;

        /* renamed from: h */
        public volatile Iterator<? extends R> f96094h;

        /* renamed from: i */
        public volatile boolean f96095i;

        /* renamed from: j */
        public boolean f96096j;

        public C17434a(Observer<? super R> actual, Function<? super T, ? extends Iterable<? extends R>> mapper) {
            this.f96091e = actual;
            this.f96092f = mapper;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public void clear() {
            this.f96094h = null;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96095i = true;
            this.f96093g.dispose();
            this.f96093g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96095i;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public boolean isEmpty() {
            return this.f96094h == null;
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96091e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(Throwable e) {
            this.f96093g = DisposableHelper.DISPOSED;
            this.f96091e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96093g, d)) {
                this.f96093g = d;
                this.f96091e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(T t) {
            Observer<? super R> observer = this.f96091e;
            try {
                Iterator<? extends R> it2 = this.f96092f.apply(t).iterator();
                if (!it2.hasNext()) {
                    observer.onComplete();
                    return;
                }
                this.f96094h = it2;
                if (this.f96096j) {
                    observer.onNext(null);
                    observer.onComplete();
                    return;
                }
                while (!this.f96095i) {
                    try {
                        observer.onNext(it2.next());
                        if (this.f96095i) {
                            return;
                        }
                        try {
                            if (!it2.hasNext()) {
                                observer.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            observer.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.throwIfFatal(th2);
                        observer.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                Exceptions.throwIfFatal(th3);
                observer.onError(th3);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        @Nullable
        public R poll() {
            Iterator<? extends R> it2 = this.f96094h;
            if (it2 == null) {
                return null;
            }
            R next = it2.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            if (!it2.hasNext()) {
                this.f96094h = null;
            }
            return next;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public int requestFusion(int mode) {
            if ((mode & 2) == 0) {
                return 0;
            }
            this.f96096j = true;
            return 2;
        }
    }

    public MaybeFlatMapIterableObservable(MaybeSource<T> source, Function<? super T, ? extends Iterable<? extends R>> mapper) {
        this.f96089e = source;
        this.f96090f = mapper;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super R> observer) {
        this.f96089e.subscribe(new C17434a(observer, this.f96090f));
    }
}
