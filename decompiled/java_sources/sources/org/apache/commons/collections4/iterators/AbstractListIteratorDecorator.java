package org.apache.commons.collections4.iterators;

import java.util.ListIterator;

/* loaded from: classes11.dex */
public class AbstractListIteratorDecorator<E> implements ListIterator<E> {

    /* renamed from: e */
    public final ListIterator<E> f105012e;

    public AbstractListIteratorDecorator(ListIterator<E> listIterator) {
        if (listIterator == null) {
            throw new NullPointerException("ListIterator must not be null");
        }
        this.f105012e = listIterator;
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        this.f105012e.add(e);
    }

    public ListIterator<E> getListIterator() {
        return this.f105012e;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105012e.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f105012e.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        return this.f105012e.next();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f105012e.nextIndex();
    }

    @Override // java.util.ListIterator
    public E previous() {
        return this.f105012e.previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f105012e.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this.f105012e.remove();
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        this.f105012e.set(e);
    }
}
