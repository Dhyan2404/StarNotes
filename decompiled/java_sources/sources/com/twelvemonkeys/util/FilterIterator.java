package com.twelvemonkeys.util;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public class FilterIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public E f94357e = null;

    /* renamed from: f */
    public E f94358f = null;
    protected final Filter<E> filter;
    protected final Iterator<E> iterator;

    /* loaded from: classes10.dex */
    public interface Filter<E> {
        boolean accept(E e);
    }

    public FilterIterator(Iterator<E> it2, Filter<E> filter) {
        if (it2 == null) {
            throw new IllegalArgumentException("iterator == null");
        }
        if (filter == null) {
            throw new IllegalArgumentException("filter == null");
        }
        this.iterator = it2;
        this.filter = filter;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        while (true) {
            if (this.f94357e != null || !this.iterator.hasNext()) {
                break;
            }
            E next = this.iterator.next();
            if (this.filter.accept(next)) {
                this.f94357e = next;
                break;
            }
        }
        return this.f94357e != null;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException("Iteration has no more elements.");
        }
        E e = this.f94357e;
        this.f94358f = e;
        this.f94357e = null;
        return e;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f94358f == null) {
            throw new IllegalStateException("Iteration has no current element.");
        }
        this.iterator.remove();
    }
}
