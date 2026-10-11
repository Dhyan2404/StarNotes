package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import org.apache.commons.collections4.Unmodifiable;

/* loaded from: classes11.dex */
public final class UnmodifiableIterator<E> implements Iterator<E>, Unmodifiable {

    /* renamed from: e */
    public final Iterator<? extends E> f105110e;

    public UnmodifiableIterator(Iterator<? extends E> it2) {
        this.f105110e = it2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Iterator<E> unmodifiableIterator(Iterator<? extends E> it2) {
        if (it2 != 0) {
            return it2 instanceof Unmodifiable ? it2 : new UnmodifiableIterator(it2);
        }
        throw new NullPointerException("Iterator must not be null");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105110e.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        return this.f105110e.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is not supported");
    }
}
