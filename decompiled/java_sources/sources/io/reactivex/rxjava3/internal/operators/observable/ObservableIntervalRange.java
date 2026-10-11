package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class ObservableIntervalRange extends Observable<Long> {

    /* renamed from: e */
    public final Scheduler f96670e;

    /* renamed from: f */
    public final long f96671f;

    /* renamed from: g */
    public final long f96672g;

    /* renamed from: h */
    public final long f96673h;

    /* renamed from: i */
    public final long f96674i;

    /* renamed from: j */
    public final TimeUnit f96675j;

    /* loaded from: classes10.dex */
    public static final class IntervalRangeObserver extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;
        long count;
        final Observer<? super Long> downstream;
        final long end;

        public IntervalRangeObserver(Observer<? super Long> actual, long start, long end) {
            this.downstream = actual;
            this.count = start;
            this.end = end;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (isDisposed()) {
                return;
            }
            long j = this.count;
            this.downstream.onNext(Long.valueOf(j));
            if (j != this.end) {
                this.count = j + 1;
                return;
            }
            if (!isDisposed()) {
                this.downstream.onComplete();
            }
            DisposableHelper.dispose(this);
        }

        public void setResource(Disposable d) {
            DisposableHelper.setOnce(this, d);
        }
    }

    public ObservableIntervalRange(long start, long end, long initialDelay, long period, TimeUnit unit, Scheduler scheduler) {
        this.f96673h = initialDelay;
        this.f96674i = period;
        this.f96675j = unit;
        this.f96670e = scheduler;
        this.f96671f = start;
        this.f96672g = end;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        IntervalRangeObserver intervalRangeObserver = new IntervalRangeObserver(observer, this.f96671f, this.f96672g);
        observer.onSubscribe(intervalRangeObserver);
        Scheduler scheduler = this.f96670e;
        if (!(scheduler instanceof TrampolineScheduler)) {
            intervalRangeObserver.setResource(scheduler.schedulePeriodicallyDirect(intervalRangeObserver, this.f96673h, this.f96674i, this.f96675j));
            return;
        }
        Scheduler.Worker createWorker = scheduler.createWorker();
        intervalRangeObserver.setResource(createWorker);
        createWorker.schedulePeriodically(intervalRangeObserver, this.f96673h, this.f96674i, this.f96675j);
    }
}
