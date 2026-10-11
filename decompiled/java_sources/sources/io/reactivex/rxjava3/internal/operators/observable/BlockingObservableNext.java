package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.internal.util.BlockingHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes10.dex */
public final class BlockingObservableNext<T> implements Iterable<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96306e;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.BlockingObservableNext$a */
    /* loaded from: classes10.dex */
    public static final class C17459a<T> implements Iterator<T> {

        /* renamed from: e */
        public final C17460b<T> f96307e;

        /* renamed from: f */
        public final ObservableSource<T> f96308f;

        /* renamed from: g */
        public T f96309g;

        /* renamed from: h */
        public boolean f96310h = true;

        /* renamed from: i */
        public boolean f96311i = true;

        /* renamed from: j */
        public Throwable f96312j;

        /* renamed from: k */
        public boolean f96313k;

        public C17459a(ObservableSource<T> items, C17460b<T> observer) {
            this.f96308f = items;
            this.f96307e = observer;
        }

        /* renamed from: a */
        public final boolean m61211a() {
            if (!this.f96313k) {
                this.f96313k = true;
                this.f96307e.m61213b();
                new ObservableMaterialize(this.f96308f).subscribe(this.f96307e);
            }
            try {
                Notification<T> m61214c = this.f96307e.m61214c();
                if (m61214c.isOnNext()) {
                    this.f96311i = false;
                    this.f96309g = m61214c.getValue();
                    return true;
                }
                this.f96310h = false;
                if (m61214c.isOnComplete()) {
                    return false;
                }
                Throwable error = m61214c.getError();
                this.f96312j = error;
                throw ExceptionHelper.wrapOrThrow(error);
            } catch (InterruptedException e) {
                this.f96307e.dispose();
                this.f96312j = e;
                throw ExceptionHelper.wrapOrThrow(e);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f96312j;
            if (th != null) {
                throw ExceptionHelper.wrapOrThrow(th);
            }
            if (this.f96310h) {
                return !this.f96311i || m61211a();
            }
            return false;
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f96312j;
            if (th != null) {
                throw ExceptionHelper.wrapOrThrow(th);
            }
            if (!hasNext()) {
                throw new NoSuchElementException("No more elements");
            }
            this.f96311i = true;
            return this.f96309g;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.BlockingObservableNext$b */
    /* loaded from: classes10.dex */
    public static final class C17460b<T> extends DisposableObserver<Notification<T>> {

        /* renamed from: f */
        public final BlockingQueue<Notification<T>> f96314f = new ArrayBlockingQueue(1);

        /* renamed from: g */
        public final AtomicInteger f96315g = new AtomicInteger();

        @Override // io.reactivex.rxjava3.core.Observer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onNext(Notification<T> args) {
            if (this.f96315g.getAndSet(0) == 1 || !args.isOnNext()) {
                while (!this.f96314f.offer(args)) {
                    Notification<T> poll = this.f96314f.poll();
                    if (poll != null && !poll.isOnNext()) {
                        args = poll;
                    }
                }
            }
        }

        /* renamed from: b */
        public void m61213b() {
            this.f96315g.set(1);
        }

        /* renamed from: c */
        public Notification<T> m61214c() throws InterruptedException {
            m61213b();
            BlockingHelper.verifyNonBlocking();
            return this.f96314f.take();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            RxJavaPlugins.onError(e);
        }
    }

    public BlockingObservableNext(ObservableSource<T> source) {
        this.f96306e = source;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C17459a(this.f96306e, new C17460b());
    }
}
