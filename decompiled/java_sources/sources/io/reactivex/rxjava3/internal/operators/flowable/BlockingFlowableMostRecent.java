package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.FlowableSubscriber;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.subscribers.DefaultSubscriber;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class BlockingFlowableMostRecent<T> implements Iterable<T> {

    /* renamed from: e */
    public final Flowable<T> f95333e;

    /* renamed from: f */
    public final T f95334f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.BlockingFlowableMostRecent$a */
    /* loaded from: classes10.dex */
    public static final class C17321a<T> extends DefaultSubscriber<T> {

        /* renamed from: f */
        public volatile Object f95335f;

        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.BlockingFlowableMostRecent$a$a */
        /* loaded from: classes10.dex */
        public final class a implements Iterator<T> {

            /* renamed from: e */
            public Object f95336e;

            public a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                this.f95336e = C17321a.this.f95335f;
                return !NotificationLite.isComplete(r0);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f95336e == null) {
                        this.f95336e = C17321a.this.f95335f;
                    }
                    if (NotificationLite.isComplete(this.f95336e)) {
                        throw new NoSuchElementException();
                    }
                    if (NotificationLite.isError(this.f95336e)) {
                        throw ExceptionHelper.wrapOrThrow(NotificationLite.getError(this.f95336e));
                    }
                    return (T) NotificationLite.getValue(this.f95336e);
                } finally {
                    this.f95336e = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public C17321a(T value) {
            this.f95335f = NotificationLite.next(value);
        }

        /* renamed from: a */
        public C17321a<T>.a m61150a() {
            return new a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f95335f = NotificationLite.complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable e) {
            this.f95335f = NotificationLite.error(e);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T args) {
            this.f95335f = NotificationLite.next(args);
        }
    }

    public BlockingFlowableMostRecent(Flowable<T> source, T initialValue) {
        this.f95333e = source;
        this.f95334f = initialValue;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        C17321a c17321a = new C17321a(this.f95334f);
        this.f95333e.subscribe((FlowableSubscriber) c17321a);
        return c17321a.m61150a();
    }
}
