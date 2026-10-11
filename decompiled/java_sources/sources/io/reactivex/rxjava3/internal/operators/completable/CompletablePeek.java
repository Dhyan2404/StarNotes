package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class CompletablePeek extends Completable {

    /* renamed from: e */
    public final CompletableSource f95284e;

    /* renamed from: f */
    public final Consumer<? super Disposable> f95285f;

    /* renamed from: g */
    public final Consumer<? super Throwable> f95286g;

    /* renamed from: h */
    public final Action f95287h;

    /* renamed from: i */
    public final Action f95288i;

    /* renamed from: j */
    public final Action f95289j;

    /* renamed from: k */
    public final Action f95290k;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletablePeek$a */
    /* loaded from: classes10.dex */
    public final class C17316a implements CompletableObserver, Disposable {

        /* renamed from: e */
        public final CompletableObserver f95291e;

        /* renamed from: f */
        public Disposable f95292f;

        public C17316a(CompletableObserver downstream) {
            this.f95291e = downstream;
        }

        /* renamed from: a */
        public void m61148a() {
            try {
                CompletablePeek.this.f95289j.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            try {
                CompletablePeek.this.f95290k.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                RxJavaPlugins.onError(th);
            }
            this.f95292f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95292f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            if (this.f95292f == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                CompletablePeek.this.f95287h.run();
                CompletablePeek.this.f95288i.run();
                this.f95291e.onComplete();
                m61148a();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.f95291e.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            if (this.f95292f == DisposableHelper.DISPOSED) {
                RxJavaPlugins.onError(e);
                return;
            }
            try {
                CompletablePeek.this.f95286g.accept(e);
                CompletablePeek.this.f95288i.run();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                e = new CompositeException(e, th);
            }
            this.f95291e.onError(e);
            m61148a();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(final Disposable d) {
            try {
                CompletablePeek.this.f95285f.accept(d);
                if (DisposableHelper.validate(this.f95292f, d)) {
                    this.f95292f = d;
                    this.f95291e.onSubscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                d.dispose();
                this.f95292f = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f95291e);
            }
        }
    }

    public CompletablePeek(CompletableSource source, Consumer<? super Disposable> onSubscribe, Consumer<? super Throwable> onError, Action onComplete, Action onTerminate, Action onAfterTerminate, Action onDispose) {
        this.f95284e = source;
        this.f95285f = onSubscribe;
        this.f95286g = onError;
        this.f95287h = onComplete;
        this.f95288i = onTerminate;
        this.f95289j = onAfterTerminate;
        this.f95290k = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        this.f95284e.subscribe(new C17316a(observer));
    }
}
