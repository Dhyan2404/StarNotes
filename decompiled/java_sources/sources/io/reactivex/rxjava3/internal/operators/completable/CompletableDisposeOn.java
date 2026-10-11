package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* loaded from: classes10.dex */
public final class CompletableDisposeOn extends Completable {

    /* renamed from: e */
    public final CompletableSource f95229e;

    /* renamed from: f */
    public final Scheduler f95230f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableDisposeOn$a */
    /* loaded from: classes10.dex */
    public static final class RunnableC17306a implements CompletableObserver, Disposable, Runnable {

        /* renamed from: e */
        public final CompletableObserver f95231e;

        /* renamed from: f */
        public final Scheduler f95232f;

        /* renamed from: g */
        public Disposable f95233g;

        /* renamed from: h */
        public volatile boolean f95234h;

        public RunnableC17306a(CompletableObserver observer, Scheduler scheduler) {
            this.f95231e = observer;
            this.f95232f = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95234h = true;
            this.f95232f.scheduleDirect(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95234h;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            if (this.f95234h) {
                return;
            }
            this.f95231e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            if (this.f95234h) {
                RxJavaPlugins.onError(e);
            } else {
                this.f95231e.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(final Disposable d) {
            if (DisposableHelper.validate(this.f95233g, d)) {
                this.f95233g = d;
                this.f95231e.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f95233g.dispose();
            this.f95233g = DisposableHelper.DISPOSED;
        }
    }

    public CompletableDisposeOn(CompletableSource source, Scheduler scheduler) {
        this.f95229e = source;
        this.f95230f = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        this.f95229e.subscribe(new RunnableC17306a(observer, this.f95230f));
    }
}
