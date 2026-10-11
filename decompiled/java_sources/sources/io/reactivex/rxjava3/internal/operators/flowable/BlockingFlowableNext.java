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
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;

/* loaded from: classes10.dex */
public final class BlockingFlowableNext<T> implements Iterable<T> {

    /* renamed from: e */
    public final Publisher<? extends T> f95338e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.BlockingFlowableNext$a */
    /* loaded from: classes10.dex */
    public static final class C17322a<T> implements Iterator<T> {

        /* renamed from: e */
        public final C17323b<T> f95339e;

        /* renamed from: f */
        public final Publisher<? extends T> f95340f;

        /* renamed from: g */
        public T f95341g;

        /* renamed from: h */
        public boolean f95342h = true;

        /* renamed from: i */
        public boolean f95343i = true;

        /* renamed from: j */
        public Throwable f95344j;

        /* renamed from: k */
        public boolean f95345k;

        public C17322a(Publisher<? extends T> items, C17323b<T> subscriber) {
            this.f95340f = items;
            this.f95339e = subscriber;
        }

        /* renamed from: a */
        public final boolean m61151a() {
            try {
                if (!this.f95345k) {
                    this.f95345k = true;
                    this.f95339e.m61153b();
                    Flowable.fromPublisher(this.f95340f).materialize().subscribe((FlowableSubscriber<? super Notification<T>>) this.f95339e);
                }
                Notification<T> m61154c = this.f95339e.m61154c();
                if (m61154c.isOnNext()) {
                    this.f95343i = false;
                    this.f95341g = m61154c.getValue();
                    return true;
                }
                this.f95342h = false;
                if (m61154c.isOnComplete()) {
                    return false;
                }
                Throwable error = m61154c.getError();
                this.f95344j = error;
                throw ExceptionHelper.wrapOrThrow(error);
            } catch (InterruptedException e) {
                this.f95339e.dispose();
                this.f95344j = e;
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f95344j;
            if (th != null) {
                throw ExceptionHelper.wrapOrThrow(th);
            }
            if (this.f95342h) {
                return !this.f95343i || m61151a();
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f95344j;
            if (th != null) {
                throw ExceptionHelper.wrapOrThrow(th);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f95343i = true;
            return this.f95341g;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.BlockingFlowableNext$b */
    /* loaded from: classes10.dex */
    public static final class C17323b<T> extends DisposableSubscriber<Notification<T>> {

        /* renamed from: f */
        public final BlockingQueue<Notification<T>> f95346f = new ArrayBlockingQueue(1);

        /* renamed from: g */
        public final AtomicInteger f95347g = new AtomicInteger();

        @Override // org.reactivestreams.Subscriber
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(Notification<T> args) {
            if (this.f95347g.getAndSet(0) == 1 || !args.isOnNext()) {
                while (!this.f95346f.offer(args)) {
                    Notification<T> poll = this.f95346f.poll();
                    if (poll != null && !poll.isOnNext()) {
                        args = poll;
                    }
                }
            }
        }

        /* renamed from: b */
        public void m61153b() {
            this.f95347g.set(1);
        }

        /* renamed from: c */
        public Notification<T> m61154c() throws InterruptedException {
            m61153b();
            BlockingHelper.verifyNonBlocking();
            return this.f95346f.take();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            RxJavaPlugins.onError(e);
        }
    }

    public BlockingFlowableNext(Publisher<? extends T> source) {
        this.f95338e = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C17322a(this.f95338e, new C17323b());
    }
}
