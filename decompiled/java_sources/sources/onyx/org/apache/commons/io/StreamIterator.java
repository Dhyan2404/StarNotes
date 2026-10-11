package onyx.org.apache.commons.io;

import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* loaded from: classes11.dex */
public final class StreamIterator<E> implements Iterator<E>, AutoCloseable {

    /* renamed from: e */
    public final Iterator<E> f104202e;

    /* renamed from: f */
    public final Stream<E> f104203f;

    /* renamed from: g */
    public boolean f104204g;

    public StreamIterator(Stream<E> stream) {
        Objects.requireNonNull(stream, "stream");
        this.f104203f = stream;
        this.f104202e = stream.iterator();
    }

    public static <T> StreamIterator<T> iterator(Stream<T> stream) {
        return new StreamIterator<>(stream);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.f104204g = true;
        this.f104203f.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f104204g) {
            return false;
        }
        boolean hasNext = this.f104202e.hasNext();
        if (!hasNext) {
            close();
        }
        return hasNext;
    }

    @Override // java.util.Iterator
    public E next() {
        E next = this.f104202e.next();
        if (next == null) {
            close();
        }
        return next;
    }
}
