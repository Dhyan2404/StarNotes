package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.concurrent.TimeUnit;

/* loaded from: classes10.dex */
public final class ObservableDelay<T> extends AbstractC17568a<T, T> {

    /* renamed from: e */
    public final long f96484e;

    /* renamed from: f */
    public final TimeUnit f96485f;

    /* renamed from: g */
    public final Scheduler f96486g;

    /* renamed from: h */
    public final boolean f96487h;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDelay$a */
    /* loaded from: classes10.dex */
    public static final class C17479a<T> implements Observer<T>, Disposable {

        /* renamed from: e */
        public final Observer<? super T> f96488e;

        /* renamed from: f */
        public final long f96489f;

        /* renamed from: g */
        public final TimeUnit f96490g;

        /* renamed from: h */
        public final Scheduler.Worker f96491h;

        /* renamed from: i */
        public final boolean f96492i;

        /* renamed from: j */
        public Disposable f96493j;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDelay$a$a */
        /* loaded from: classes10.dex */
        public final class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C17479a.this.f96488e.onComplete();
                } finally {
                    C17479a.this.f96491h.dispose();
                }
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDelay$a$b */
        /* loaded from: classes10.dex */
        public final class b implements Runnable {

            /* renamed from: e */
            public final Throwable f96495e;

            public b(Throwable throwable) {
                this.f96495e = throwable;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C17479a.this.f96488e.onError(this.f96495e);
                } finally {
                    C17479a.this.f96491h.dispose();
                }
            }
        }

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.ObservableDelay$a$c */
        /* loaded from: classes10.dex */
        public final class c implements Runnable {

            /* renamed from: e */
            public final T f96497e;

            public c(T t) {
                this.f96497e = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                C17479a.this.f96488e.onNext(this.f96497e);
            }
        }

        public C17479a(Observer<? super T> actual, long delay, TimeUnit unit, Scheduler.Worker w, boolean delayError) {
            this.f96488e = actual;
            this.f96489f = delay;
            this.f96490g = unit;
            this.f96491h = w;
            this.f96492i = delayError;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f96493j.dispose();
            this.f96491h.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f96491h.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96491h.schedule(new a(), this.f96489f, this.f96490g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(final Throwable t) {
            this.f96491h.schedule(new b(t), this.f96492i ? this.f96489f : 0L, this.f96490g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(final T t) {
            this.f96491h.schedule(new c(t), this.f96489f, this.f96490g);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable d) {
            if (DisposableHelper.validate(this.f96493j, d)) {
                this.f96493j = d;
                this.f96488e.onSubscribe(this);
            }
        }
    }

    public ObservableDelay(ObservableSource<T> source, long delay, TimeUnit unit, Scheduler scheduler, boolean delayError) {
        super(source);
        this.f96484e = delay;
        this.f96485f = unit;
        this.f96486g = scheduler;
        this.f96487h = delayError;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(Observer<? super T> t) {
        this.source.subscribe(new C17479a(this.f96487h ? t : new SerializedObserver(t), this.f96484e, this.f96485f, this.f96486g.createWorker(), this.f96487h));
    }
}
