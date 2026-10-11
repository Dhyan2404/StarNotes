package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;

/* loaded from: classes10.dex */
public final class CompletableDoOnEvent extends Completable {

    /* renamed from: e */
    public final CompletableSource f95237e;

    /* renamed from: f */
    public final Consumer<? super Throwable> f95238f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableDoOnEvent$a */
    /* loaded from: classes10.dex */
    public final class C17307a implements CompletableObserver {

        /* renamed from: e */
        public final CompletableObserver f95239e;

        public C17307a(CompletableObserver observer) {
            this.f95239e = observer;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            try {
                CompletableDoOnEvent.this.f95238f.accept(null);
                this.f95239e.onComplete();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95239e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            try {
                CompletableDoOnEvent.this.f95238f.accept(e);
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f95239e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(final Disposable d) {
            this.f95239e.onSubscribe(d);
        }
    }

    public CompletableDoOnEvent(final CompletableSource source, final Consumer<? super Throwable> onEvent) {
        this.f95237e = source;
        this.f95238f = onEvent;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        this.f95237e.subscribe(new C17307a(observer));
    }
}
