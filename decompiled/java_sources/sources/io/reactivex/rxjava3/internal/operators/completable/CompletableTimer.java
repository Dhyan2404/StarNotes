package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class CompletableTimer extends Completable {

    /* renamed from: e */
    public final long f95313e;

    /* renamed from: f */
    public final TimeUnit f95314f;

    /* renamed from: g */
    public final Scheduler f95315g;

    /* loaded from: classes10.dex */
    public static final class TimerDisposable extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 3167244060586201109L;
        final CompletableObserver downstream;

        public TimerDisposable(final CompletableObserver downstream) {
            this.downstream = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.lang.Runnable
        public void run() {
            this.downstream.onComplete();
        }

        public void setFuture(Disposable d) {
            DisposableHelper.replace(this, d);
        }
    }

    public CompletableTimer(long delay, TimeUnit unit, Scheduler scheduler) {
        this.f95313e = delay;
        this.f95314f = unit;
        this.f95315g = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        TimerDisposable timerDisposable = new TimerDisposable(observer);
        observer.onSubscribe(timerDisposable);
        timerDisposable.setFuture(this.f95315g.scheduleDirect(timerDisposable, this.f95313e, this.f95314f));
    }
}
