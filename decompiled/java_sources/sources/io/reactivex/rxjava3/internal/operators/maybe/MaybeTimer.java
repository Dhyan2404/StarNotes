package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class MaybeTimer extends Maybe<Long> {

    /* renamed from: e */
    public final long f96186e;

    /* renamed from: f */
    public final TimeUnit f96187f;

    /* renamed from: g */
    public final Scheduler f96188g;

    /* loaded from: classes10.dex */
    public static final class TimerDisposable extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 2875964065294031672L;
        final MaybeObserver<? super Long> downstream;

        public TimerDisposable(final MaybeObserver<? super Long> downstream) {
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

    public MaybeTimer(long delay, TimeUnit unit, Scheduler scheduler) {
        this.f96186e = delay;
        this.f96187f = unit;
        this.f96188g = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(final MaybeObserver<? super Long> observer) {
        TimerDisposable timerDisposable = new TimerDisposable(observer);
        observer.onSubscribe(timerDisposable);
        timerDisposable.setFuture(this.f96188g.scheduleDirect(timerDisposable, this.f96186e, this.f96187f));
    }
}
