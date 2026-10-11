package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class SingleDelay<T> extends Single<T> {

    /* renamed from: e */
    public final SingleSource<? extends T> f97125e;

    /* renamed from: f */
    public final long f97126f;

    /* renamed from: g */
    public final TimeUnit f97127g;

    /* renamed from: h */
    public final Scheduler f97128h;

    /* renamed from: i */
    public final boolean f97129i;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDelay$a */
    /* loaded from: classes10.dex */
    public final class C17589a implements SingleObserver<T> {

        /* renamed from: e */
        public final SequentialDisposable f97130e;

        /* renamed from: f */
        public final SingleObserver<? super T> f97131f;

        /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDelay$a$a */
        /* loaded from: classes10.dex */
        public final class a implements Runnable {

            /* renamed from: e */
            public final Throwable f97133e;

            public a(Throwable e) {
                this.f97133e = e;
            }

            @Override // java.lang.Runnable
            public void run() {
                C17589a.this.f97131f.onError(this.f97133e);
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleDelay$a$b */
        /* loaded from: classes10.dex */
        public final class b implements Runnable {

            /* renamed from: e */
            public final T f97135e;

            public b(T value) {
                this.f97135e = value;
            }

            @Override // java.lang.Runnable
            public void run() {
                C17589a.this.f97131f.onSuccess(this.f97135e);
            }
        }

        public C17589a(SequentialDisposable sd, SingleObserver<? super T> observer) {
            this.f97130e = sd;
            this.f97131f = observer;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(final Throwable e) {
            SequentialDisposable sequentialDisposable = this.f97130e;
            Scheduler scheduler = SingleDelay.this.f97128h;
            a aVar = new a(e);
            SingleDelay singleDelay = SingleDelay.this;
            sequentialDisposable.replace(scheduler.scheduleDirect(aVar, singleDelay.f97129i ? singleDelay.f97126f : 0L, singleDelay.f97127g));
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(Disposable d) {
            this.f97130e.replace(d);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(final T value) {
            SequentialDisposable sequentialDisposable = this.f97130e;
            Scheduler scheduler = SingleDelay.this.f97128h;
            b bVar = new b(value);
            SingleDelay singleDelay = SingleDelay.this;
            sequentialDisposable.replace(scheduler.scheduleDirect(bVar, singleDelay.f97126f, singleDelay.f97127g));
        }
    }

    public SingleDelay(SingleSource<? extends T> source, long time, TimeUnit unit, Scheduler scheduler, boolean delayError) {
        this.f97125e = source;
        this.f97126f = time;
        this.f97127g = unit;
        this.f97128h = scheduler;
        this.f97129i = delayError;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(final SingleObserver<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        this.f97125e.subscribe(new C17589a(sequentialDisposable, observer));
    }
}
