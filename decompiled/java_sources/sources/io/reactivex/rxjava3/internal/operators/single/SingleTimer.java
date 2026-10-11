package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class SingleTimer extends Single<Long> {

    /* renamed from: e */
    public final long f97281e;

    /* renamed from: f */
    public final TimeUnit f97282f;

    /* renamed from: g */
    public final Scheduler f97283g;

    /* loaded from: classes10.dex */
    public static final class TimerDisposable extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 8465401857522493082L;
        final SingleObserver<? super Long> downstream;

        public TimerDisposable(final SingleObserver<? super Long> downstream) {
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
            this.downstream.onSuccess(0L);
        }

        public void setFuture(Disposable d) {
            DisposableHelper.replace(this, d);
        }
    }

    public SingleTimer(long delay, TimeUnit unit, Scheduler scheduler) {
        this.f97281e = delay;
        this.f97282f = unit;
        this.f97283g = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super Long> observer) {
        TimerDisposable timerDisposable = new TimerDisposable(observer);
        observer.onSubscribe(timerDisposable);
        timerDisposable.setFuture(this.f97283g.scheduleDirect(timerDisposable, this.f97281e, this.f97282f));
    }
}
