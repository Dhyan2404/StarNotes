package org.apache.commons.collections4.iterators;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class PushbackIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public final Iterator<? extends E> f105093e;

    /* renamed from: f */
    public final Deque<E> f105094f = new ArrayDeque();

    public PushbackIterator(Iterator<? extends E> it2) {
        this.f105093e = it2;
    }

    public static <E> PushbackIterator<E> pushbackIterator(Iterator<? extends E> it2) {
        if (it2 != null) {
            return it2 instanceof PushbackIterator ? (PushbackIterator) it2 : new PushbackIterator<>(it2);
        }
        throw new NullPointerException("Iterator must not be null");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.f105094f.isEmpty() || this.f105093e.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        return !this.f105094f.isEmpty() ? this.f105094f.pop() : this.f105093e.next();
    }

    public void pushback(E e) {
        this.f105094f.push(e);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
