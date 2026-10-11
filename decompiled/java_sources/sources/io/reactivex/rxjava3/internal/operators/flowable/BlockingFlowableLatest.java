package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.internal.util.BlockingHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.subscribers.DisposableSubscriber;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;

/* loaded from: classes10.dex */
public final class BlockingFlowableLatest<T> implements Iterable<T> {

    /* renamed from: e */
    public final Publisher<? extends T> f95329e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.BlockingFlowableLatest$a */
    /* loaded from: classes10.dex */
    public static final class C17320a<T> extends DisposableSubscriber<Notification<T>> implements Iterator<T> {

        /* renamed from: f */
        public final Semaphore f95330f = new Semaphore(0);

        /* renamed from: g */
        public final AtomicReference<Notification<T>> f95331g = new AtomicReference<>();

        /* renamed from: h */
        public Notification<T> f95332h;

        @Override // org.reactivestreams.Subscriber
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(Notification<T> args) {
            if (this.f95331g.getAndSet(args) == null) {
                this.f95330f.release();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Notification<T> notification = this.f95332h;
            if (notification != null && notification.isOnError()) {
                throw ExceptionHelper.wrapOrThrow(this.f95332h.getError());
            }
            Notification<T> notification2 = this.f95332h;
            if ((notification2 == null || notification2.isOnNext()) && this.f95332h == null) {
                try {
                    BlockingHelper.verifyNonBlocking();
                    this.f95330f.acquire();
                    Notification<T> andSet = this.f95331g.getAndSet(null);
                    this.f95332h = andSet;
                    if (andSet.isOnError()) {
                        throw ExceptionHelper.wrapOrThrow(andSet.getError());
                    }
                } catch (InterruptedException e) {
                    dispose();
                    this.f95332h = Notification.createOnError(e);
                    throw ExceptionHelper.wrapOrThrow(e);
                }
            }
            return this.f95332h.isOnNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext() || !this.f95332h.isOnNext()) {
                throw new NoSuchElementException();
            }
            T value = this.f95332h.getValue();
            this.f95332h = null;
            return value;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            RxJavaPlugins.onError(e);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public BlockingFlowableLatest(Publisher<? extends T> source) {
        this.f95329e = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        C17320a c17320a = new C17320a();
        Flowable.fromPublisher(this.f95329e).materialize().subscribe((FlowableSubscriber<? super Notification<T>>) c17320a);
        return c17320a;
    }
}
