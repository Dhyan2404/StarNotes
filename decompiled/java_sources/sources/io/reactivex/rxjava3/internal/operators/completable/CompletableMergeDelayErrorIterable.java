package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.operators.completable.CompletableMergeArrayDelayError;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class CompletableMergeDelayErrorIterable extends Completable {

    /* renamed from: e */
    public final Iterable<? extends CompletableSource> f95271e;

    public CompletableMergeDelayErrorIterable(Iterable<? extends CompletableSource> sources) {
        this.f95271e = sources;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public void subscribeActual(final CompletableObserver observer) {
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        observer.onSubscribe(compositeDisposable);
        try {
            Iterator<? extends CompletableSource> it2 = this.f95271e.iterator();
            Objects.requireNonNull(it2, "The source iterator returned is null");
            Iterator<? extends CompletableSource> it3 = it2;
            AtomicInteger atomicInteger = new AtomicInteger(1);
            AtomicThrowable atomicThrowable = new AtomicThrowable();
            compositeDisposable.add(new CompletableMergeArrayDelayError.C17313b(atomicThrowable));
            while (!compositeDisposable.isDisposed()) {
                try {
                    if (it3.hasNext()) {
                        if (compositeDisposable.isDisposed()) {
                            return;
                        }
                        try {
                            CompletableSource next = it3.next();
                            Objects.requireNonNull(next, "The iterator returned a null CompletableSource");
                            CompletableSource completableSource = next;
                            if (compositeDisposable.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            completableSource.subscribe(new CompletableMergeArrayDelayError.C17312a(observer, compositeDisposable, atomicThrowable, atomicInteger));
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            atomicThrowable.tryAddThrowableOrReport(th);
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.throwIfFatal(th2);
                    atomicThrowable.tryAddThrowableOrReport(th2);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    atomicThrowable.tryTerminateConsumer(observer);
                    return;
                }
                return;
            }
        } catch (Throwable th3) {
            Exceptions.throwIfFatal(th3);
            observer.onError(th3);
        }
    }
}
