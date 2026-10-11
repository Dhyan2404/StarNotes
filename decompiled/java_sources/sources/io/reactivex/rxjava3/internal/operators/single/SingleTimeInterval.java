package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class SingleTimeInterval<T> extends Single<Timed<T>> {

    /* renamed from: e */
    public final SingleSource<T> f97267e;

    /* renamed from: f */
    public final TimeUnit f97268f;

    /* renamed from: g */
    public final Scheduler f97269g;

    /* renamed from: h */
    public final boolean f97270h;

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleTimeInterval$a */
    /* loaded from: classes10.dex */
    public static final class C17610a<T> implements SingleObserver<T>, Disposable {

        /* renamed from: e */
        public final SingleObserver<? super Timed<T>> f97271e;

        /* renamed from: f */
        public final TimeUnit f97272f;

        /* renamed from: g */
        public final Scheduler f97273g;

        /* renamed from: h */
        public final long f97274h;

        /* renamed from: i */
        public Disposable f97275i;

        public C17610a(SingleObserver<? super Timed<T>> downstream, TimeUnit unit, Scheduler scheduler, boolean start) {
            this.f97271e = downstream;
            this.f97272f = unit;
            this.f97273g = scheduler;
            this.f97274h = start ? scheduler.now(unit) : 0L;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f97275i.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f97275i.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onError(@NonNull Throwable e) {
            this.f97271e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(@NonNull Disposable d) {
            if (DisposableHelper.validate(this.f97275i, d)) {
                this.f97275i = d;
                this.f97271e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(@NonNull T t) {
            this.f97271e.onSuccess(new Timed(t, this.f97273g.now(this.f97272f) - this.f97274h, this.f97272f));
        }
    }

    public SingleTimeInterval(SingleSource<T> source, TimeUnit unit, Scheduler scheduler, boolean start) {
        this.f97267e = source;
        this.f97268f = unit;
        this.f97269g = scheduler;
        this.f97270h = start;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public void subscribeActual(@NonNull SingleObserver<? super Timed<T>> observer) {
        this.f97267e.subscribe(new C17610a(observer, this.f97268f, this.f97269g, this.f97270h));
    }
}
