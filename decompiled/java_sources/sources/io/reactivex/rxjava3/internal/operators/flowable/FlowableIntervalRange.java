package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class FlowableIntervalRange extends Flowable<Long> {

    /* renamed from: f */
    public final Scheduler f95681f;

    /* renamed from: g */
    public final long f95682g;

    /* renamed from: h */
    public final long f95683h;

    /* renamed from: i */
    public final long f95684i;

    /* renamed from: j */
    public final long f95685j;

    /* renamed from: k */
    public final TimeUnit f95686k;

    /* loaded from: classes10.dex */
    public static final class IntervalRangeSubscriber extends AtomicLong implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;
        long count;
        final Subscriber<? super Long> downstream;
        final long end;
        final AtomicReference<Disposable> resource = new AtomicReference<>();

        public IntervalRangeSubscriber(Subscriber<? super Long> actual, long start, long end) {
            this.downstream = actual;
            this.count = start;
            this.end = end;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            DisposableHelper.dispose(this.resource);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long n) {
            if (SubscriptionHelper.validate(n)) {
                BackpressureHelper.add(this, n);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Disposable disposable = this.resource.get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                long j = get();
                if (j == 0) {
                    this.downstream.onError(new MissingBackpressureException("Could not emit value " + this.count + " due to lack of requests"));
                    DisposableHelper.dispose(this.resource);
                    return;
                }
                long j2 = this.count;
                this.downstream.onNext(Long.valueOf(j2));
                if (j2 == this.end) {
                    if (this.resource.get() != disposableHelper) {
                        this.downstream.onComplete();
                    }
                    DisposableHelper.dispose(this.resource);
                } else {
                    this.count = j2 + 1;
                    if (j != Long.MAX_VALUE) {
                        decrementAndGet();
                    }
                }
            }
        }

        public void setResource(Disposable d) {
            DisposableHelper.setOnce(this.resource, d);
        }
    }

    public FlowableIntervalRange(long start, long end, long initialDelay, long period, TimeUnit unit, Scheduler scheduler) {
        this.f95684i = initialDelay;
        this.f95685j = period;
        this.f95686k = unit;
        this.f95681f = scheduler;
        this.f95682g = start;
        this.f95683h = end;
    }

    @Override // io.reactivex.rxjava3.core.Flowable
    public void subscribeActual(Subscriber<? super Long> s) {
        IntervalRangeSubscriber intervalRangeSubscriber = new IntervalRangeSubscriber(s, this.f95682g, this.f95683h);
        s.onSubscribe(intervalRangeSubscriber);
        Scheduler scheduler = this.f95681f;
        if (!(scheduler instanceof TrampolineScheduler)) {
            intervalRangeSubscriber.setResource(scheduler.schedulePeriodicallyDirect(intervalRangeSubscriber, this.f95684i, this.f95685j, this.f95686k));
            return;
        }
        Scheduler.Worker createWorker = scheduler.createWorker();
        intervalRangeSubscriber.setResource(createWorker);
        createWorker.schedulePeriodically(intervalRangeSubscriber, this.f95684i, this.f95685j, this.f95686k);
    }
}
