package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.internal.util.BlockingHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes10.dex */
public final class BlockingObservableLatest<T> implements Iterable<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96297e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.BlockingObservableLatest$a */
    /* loaded from: classes10.dex */
    public static final class C17457a<T> extends DisposableObserver<Notification<T>> implements Iterator<T> {

        /* renamed from: f */
        public Notification<T> f96298f;

        /* renamed from: g */
        public final Semaphore f96299g = new Semaphore(0);

        /* renamed from: h */
        public final AtomicReference<Notification<T>> f96300h = new AtomicReference<>();

        @Override // io.reactivex.rxjava3.core.Observer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(Notification<T> args) {
            if (this.f96300h.getAndSet(args) == null) {
                this.f96299g.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Notification<T> notification = this.f96298f;
            if (notification != null && notification.isOnError()) {
                throw ExceptionHelper.wrapOrThrow(this.f96298f.getError());
            }
            if (this.f96298f == null) {
                try {
                    BlockingHelper.verifyNonBlocking();
                    this.f96299g.acquire();
                    Notification<T> andSet = this.f96300h.getAndSet(null);
                    this.f96298f = andSet;
                    if (andSet.isOnError()) {
                        throw ExceptionHelper.wrapOrThrow(andSet.getError());
                    }
                } catch (InterruptedException e) {
                    dispose();
                    this.f96298f = Notification.createOnError(e);
                    throw ExceptionHelper.wrapOrThrow(e);
                }
            }
            return this.f96298f.isOnNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T value = this.f96298f.getValue();
            this.f96298f = null;
            return value;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            RxJavaPlugins.onError(e);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public BlockingObservableLatest(ObservableSource<T> source) {
        this.f96297e = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        C17457a c17457a = new C17457a();
        Observable.wrap(this.f96297e).materialize().subscribe(c17457a);
        return c17457a;
    }
}
