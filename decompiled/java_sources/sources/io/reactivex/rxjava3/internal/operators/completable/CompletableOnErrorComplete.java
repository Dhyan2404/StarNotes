package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;

/* loaded from: classes10.dex */
public final class CompletableOnErrorComplete extends Completable {

    /* renamed from: e */
    public final CompletableSource f95275e;

    /* renamed from: f */
    public final Predicate<? super Throwable> f95276f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableOnErrorComplete$a */
    /* loaded from: classes10.dex */
    public static final class C17314a implements CompletableObserver {

        /* renamed from: e */
        public final CompletableObserver f95277e;

        /* renamed from: f */
        public final Predicate<? super Throwable> f95278f;

        public C17314a(CompletableObserver observer, Predicate<? super Throwable> predicate) {
            this.f95277e = observer;
            this.f95278f = predicate;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f95277e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            try {
                if (this.f95278f.test(e)) {
                    this.f95277e.onComplete();
                } else {
                    this.f95277e.onError(e);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95277e.onError(new CompositeException(e, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            this.f95277e.onSubscribe(d);
        }
    }

    public CompletableOnErrorComplete(CompletableSource source, Predicate<? super Throwable> predicate) {
        this.f95275e = source;
        this.f95276f = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        this.f95275e.subscribe(new C17314a(observer, this.f95276f));
    }
}
