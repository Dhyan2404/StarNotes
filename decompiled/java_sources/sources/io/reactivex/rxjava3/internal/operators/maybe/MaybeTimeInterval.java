package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class MaybeTimeInterval<T> extends Maybe<Timed<T>> {

    /* renamed from: e */
    public final MaybeSource<T> f96173e;

    /* renamed from: f */
    public final TimeUnit f96174f;

    /* renamed from: g */
    public final Scheduler f96175g;

    /* renamed from: h */
    public final boolean f96176h;

    /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.MaybeTimeInterval$a */
    /* loaded from: classes10.dex */
    public static final class C17453a<T> implements MaybeObserver<T>, Disposable {

        /* renamed from: e */
        public final MaybeObserver<? super Timed<T>> f96177e;

        /* renamed from: f */
        public final TimeUnit f96178f;

        /* renamed from: g */
        public final Scheduler f96179g;

        /* renamed from: h */
        public final long f96180h;

        /* renamed from: i */
        public Disposable f96181i;

        public C17453a(MaybeObserver<? super Timed<T>> downstream, TimeUnit unit, Scheduler scheduler, boolean start) {
            this.f96177e = downstream;
            this.f96178f = unit;
            this.f96179g = scheduler;
            this.f96180h = start ? scheduler.now(unit) : 0L;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96181i.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96181i.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            this.f96177e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onError(@NonNull Throwable e) {
            this.f96177e.onError(e);
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSubscribe(@NonNull Disposable d) {
            if (DisposableHelper.validate(this.f96181i, d)) {
                this.f96181i = d;
                this.f96177e.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.MaybeObserver, io.reactivex.rxjava3.core.SingleObserver
        public void onSuccess(@NonNull T t) {
            this.f96177e.onSuccess(new Timed(t, this.f96179g.now(this.f96178f) - this.f96180h, this.f96178f));
        }
    }

    public MaybeTimeInterval(MaybeSource<T> source, TimeUnit unit, Scheduler scheduler, boolean start) {
        this.f96173e = source;
        this.f96174f = unit;
        this.f96175g = scheduler;
        this.f96176h = start;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public void subscribeActual(@NonNull MaybeObserver<? super Timed<T>> observer) {
        this.f96173e.subscribe(new C17453a(observer, this.f96174f, this.f96175g, this.f96176h));
    }
}
