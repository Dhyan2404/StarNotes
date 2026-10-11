package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class ObservableTimeInterval<T> extends AbstractC17568a<T, Timed<T>> {

    /* renamed from: e */
    public final Scheduler f96910e;

    /* renamed from: f */
    public final TimeUnit f96911f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableTimeInterval$a */
    /* loaded from: classes10.dex */
    public static final class C17550a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super Timed<T>> f96912e;

        /* renamed from: f */
        public final TimeUnit f96913f;

        /* renamed from: g */
        public final Scheduler f96914g;

        /* renamed from: h */
        public long f96915h;

        /* renamed from: i */
        public Disposable f96916i;

        public C17550a(Observer<? super Timed<T>> actual, TimeUnit unit, Scheduler scheduler) {
            this.f96912e = actual;
            this.f96914g = scheduler;
            this.f96913f = unit;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96916i.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96916i.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96912e.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable t) {
            this.f96912e.onError(t);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            long now = this.f96914g.now(this.f96913f);
            long j = this.f96915h;
            this.f96915h = now;
            this.f96912e.onNext(new Timed(t, now - j, this.f96913f));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96916i, d)) {
                this.f96916i = d;
                this.f96915h = this.f96914g.now(this.f96913f);
                this.f96912e.onSubscribe(this);
            }
        }
    }

    public ObservableTimeInterval(ObservableSource<T> source, TimeUnit unit, Scheduler scheduler) {
        super(source);
        this.f96910e = scheduler;
        this.f96911f = unit;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super Timed<T>> t) {
        this.source.subscribe(new C17550a(t, this.f96911f, this.f96910e));
    }
}
