package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class CompletableMergeArrayDelayError extends Completable {

    /* renamed from: e */
    public final CompletableSource[] f95265e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableMergeArrayDelayError$a */
    /* loaded from: classes10.dex */
    public static final class C17312a implements CompletableObserver {

        /* renamed from: e */
        public final CompletableObserver f95266e;

        /* renamed from: f */
        public final CompositeDisposable f95267f;

        /* renamed from: g */
        public final AtomicThrowable f95268g;

        /* renamed from: h */
        public final AtomicInteger f95269h;

        public C17312a(CompletableObserver observer, CompositeDisposable set, AtomicThrowable error, AtomicInteger wip) {
            this.f95266e = observer;
            this.f95267f = set;
            this.f95268g = error;
            this.f95269h = wip;
        }

        /* renamed from: a */
        public void m61147a() {
            if (this.f95269h.decrementAndGet() == 0) {
                this.f95268g.tryTerminateConsumer(this.f95266e);
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onComplete() {
            m61147a();
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onError(Throwable e) {
            if (this.f95268g.tryAddThrowableOrReport(e)) {
                m61147a();
            }
        }

        @Override // io.reactivex.rxjava3.core.CompletableObserver
        public void onSubscribe(Disposable d) {
            this.f95267f.add(d);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.CompletableMergeArrayDelayError$b */
    /* loaded from: classes10.dex */
    public static final class C17313b implements Disposable {

        /* renamed from: e */
        public final AtomicThrowable f95270e;

        public C17313b(AtomicThrowable errors) {
            this.f95270e = errors;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.f95270e.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.f95270e.isTerminated();
        }
    }

    public CompletableMergeArrayDelayError(CompletableSource[] sources) {
        this.f95265e = sources;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        AtomicInteger atomicInteger = new AtomicInteger(this.f95265e.length + 1);
        AtomicThrowable atomicThrowable = new AtomicThrowable();
        compositeDisposable.add(new C17313b(atomicThrowable));
        observer.onSubscribe(compositeDisposable);
        for (CompletableSource completableSource : this.f95265e) {
            if (compositeDisposable.isDisposed()) {
                return;
            }
            if (completableSource == null) {
                atomicThrowable.tryAddThrowableOrReport(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                completableSource.subscribe(new C17312a(observer, compositeDisposable, atomicThrowable, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            atomicThrowable.tryTerminateConsumer(observer);
        }
    }
}
