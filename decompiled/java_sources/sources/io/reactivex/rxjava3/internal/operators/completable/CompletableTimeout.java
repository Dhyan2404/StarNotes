package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes10.dex */
public final class CompletableTimeout extends Completable {

    /* renamed from: e */
    public final CompletableSource f95300e;

    /* renamed from: f */
    public final long f95301f;

    /* renamed from: g */
    public final TimeUnit f95302g;

    /* renamed from: h */
    public final Scheduler f95303h;

    /* renamed from: i */
    public final CompletableSource f95304i;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableTimeout$a */
    /* loaded from: classes10.dex */
    public final class RunnableC17317a implements Runnable {

        /* renamed from: e */
        public final AtomicBoolean f95305e;

        /* renamed from: f */
        public final CompositeDisposable f95306f;

        /* renamed from: g */
        public final CompletableObserver f95307g;

        /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableTimeout$a$a */
        /* loaded from: classes10.dex */
        public final class a implements CompletableObserver {
            public a() {
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onComplete() {
                RunnableC17317a.this.f95306f.dispose();
                RunnableC17317a.this.f95307g.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onError(Throwable e) {
                RunnableC17317a.this.f95306f.dispose();
                RunnableC17317a.this.f95307g.onError(e);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver
            public void onSubscribe(Disposable d) {
                RunnableC17317a.this.f95306f.add(d);
            }
        }

        public RunnableC17317a(AtomicBoolean once, CompositeDisposable set, CompletableObserver observer) {
            this.f95305e = once;
            this.f95306f = set;
            this.f95307g = observer;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f95305e.compareAndSet(false, true)) {
                this.f95306f.clear();
                CompletableSource completableSource = CompletableTimeout.this.f95304i;
                if (completableSource != null) {
                    completableSource.subscribe(new a());
                    return;
                }
                CompletableObserver completableObserver = this.f95307g;
                CompletableTimeout completableTimeout = CompletableTimeout.this;
                completableObserver.onError(new TimeoutException(ExceptionHelper.timeoutMessage(completableTimeout.f95301f, completableTimeout.f95302g)));
            }
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableTimeout$b */
    /* loaded from: classes10.dex */
    public static final class C17318b implements CompletableObserver {

        /* renamed from: e */
        public final CompositeDisposable f95310e;

        /* renamed from: f */
        public final AtomicBoolean f95311f;

        /* renamed from: g */
        public final CompletableObserver f95312g;

        public C17318b(CompositeDisposable set, AtomicBoolean once, CompletableObserver observer) {
            this.f95310e = set;
            this.f95311f = once;
            this.f95312g = observer;
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            if (this.f95311f.compareAndSet(false, true)) {
                this.f95310e.dispose();
                this.f95312g.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            if (!this.f95311f.compareAndSet(false, true)) {
                RxJavaPlugins.onError(e);
            } else {
                this.f95310e.dispose();
                this.f95312g.onError(e);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            this.f95310e.add(d);
        }
    }

    public CompletableTimeout(CompletableSource source, long timeout, TimeUnit unit, Scheduler scheduler, CompletableSource other) {
        this.f95300e = source;
        this.f95301f = timeout;
        this.f95302g = unit;
        this.f95303h = scheduler;
        this.f95304i = other;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        observer.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        compositeDisposable.add(this.f95303h.scheduleDirect(new RunnableC17317a(atomicBoolean, compositeDisposable, observer), this.f95301f, this.f95302g));
        this.f95300e.subscribe(new C17318b(compositeDisposable, atomicBoolean, observer));
    }
}
