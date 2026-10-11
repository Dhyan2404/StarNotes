package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.reactivestreams.Publisher;

/* loaded from: classes10.dex */
public final class SingleInternalHelper {

    /* loaded from: classes10.dex */
    public enum NoSuchElementSupplier implements Supplier<NoSuchElementException> {
        INSTANCE;

        @Override // io.reactivex.rxjava3.functions.Supplier
        public NoSuchElementException get() {
            return new NoSuchElementException();
        }
    }

    /* loaded from: classes10.dex */
    public enum ToFlowable implements Function<SingleSource, Publisher> {
        INSTANCE;

        @Override // io.reactivex.rxjava3.functions.Function
        public Publisher apply(SingleSource v) {
            return new SingleToFlowable(v);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleInternalHelper$a */
    /* loaded from: classes10.dex */
    public static final class C17606a<T> implements Iterable<Flowable<T>> {

        /* renamed from: e */
        public final Iterable<? extends SingleSource<? extends T>> f97242e;

        public C17606a(Iterable<? extends SingleSource<? extends T>> sources) {
            this.f97242e = sources;
        }

        @Override // java.lang.Iterable
        public Iterator<Flowable<T>> iterator() {
            return new C17607b(this.f97242e.iterator());
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.operators.single.SingleInternalHelper$b */
    /* loaded from: classes10.dex */
    public static final class C17607b<T> implements Iterator<Flowable<T>> {

        /* renamed from: e */
        public final Iterator<? extends SingleSource<? extends T>> f97243e;

        public C17607b(Iterator<? extends SingleSource<? extends T>> sit) {
            this.f97243e = sit;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Flowable<T> next() {
            return new SingleToFlowable(this.f97243e.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f97243e.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public SingleInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static Supplier<NoSuchElementException> emptyThrower() {
        return NoSuchElementSupplier.INSTANCE;
    }

    public static <T> Iterable<? extends Flowable<T>> iterableToFlowable(final Iterable<? extends SingleSource<? extends T>> sources) {
        return new C17606a(sources);
    }

    public static <T> Function<SingleSource<? extends T>, Publisher<? extends T>> toFlowable() {
        return ToFlowable.INSTANCE;
    }
}
