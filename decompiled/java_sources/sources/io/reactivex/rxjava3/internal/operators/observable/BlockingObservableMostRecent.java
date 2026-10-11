package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.observers.DefaultObserver;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public final class BlockingObservableMostRecent<T> implements Iterable<T> {

    /* renamed from: e */
    public final ObservableSource<T> f96301e;

    /* renamed from: f */
    public final T f96302f;

    /* renamed from: io.reactivex.rxjava3.internal.operators.observable.BlockingObservableMostRecent$a */
    /* loaded from: classes10.dex */
    public static final class C17458a<T> extends DefaultObserver<T> {

        /* renamed from: f */
        public volatile Object f96303f;

        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.BlockingObservableMostRecent$a$a */
        /* loaded from: classes10.dex */
        public final class a implements Iterator<T> {

            /* renamed from: e */
            public Object f96304e;

            public a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                this.f96304e = C17458a.this.f96303f;
                return !NotificationLite.isComplete(r0);
            }

            @Override // java.util.Iterator
            public T next() {
                try {
                    if (this.f96304e == null) {
                        this.f96304e = C17458a.this.f96303f;
                    }
                    if (NotificationLite.isComplete(this.f96304e)) {
                        throw new NoSuchElementException();
                    }
                    if (NotificationLite.isError(this.f96304e)) {
                        throw ExceptionHelper.wrapOrThrow(NotificationLite.getError(this.f96304e));
                    }
                    return (T) NotificationLite.getValue(this.f96304e);
                } finally {
                    this.f96304e = null;
                }
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        public C17458a(T value) {
            this.f96303f = NotificationLite.next(value);
        }

        /* renamed from: a */
        public C17458a<T>.a m61210a() {
            return new a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            this.f96303f = NotificationLite.complete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable e) {
            this.f96303f = NotificationLite.error(e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T args) {
            this.f96303f = NotificationLite.next(args);
        }
    }

    public BlockingObservableMostRecent(ObservableSource<T> source, T initialValue) {
        this.f96301e = source;
        this.f96302f = initialValue;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        C17458a c17458a = new C17458a(this.f96302f);
        this.f96301e.subscribe(c17458a);
        return c17458a.m61210a();
    }
}
