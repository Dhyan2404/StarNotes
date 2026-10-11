package org.apache.commons.collections4.iterators;

import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class LoopingListIterator<E> implements ResettableListIterator<E> {

    /* renamed from: e */
    public final List<E> f105069e;

    /* renamed from: f */
    public ListIterator<E> f105070f;

    public LoopingListIterator(List<E> list) {
        if (list == null) {
            throw new NullPointerException("The list must not be null");
        }
        this.f105069e = list;
        m65970a();
    }

    /* renamed from: a */
    public final void m65970a() {
        this.f105070f = this.f105069e.listIterator();
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        this.f105070f.add(e);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return !this.f105069e.isEmpty();
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        return !this.f105069e.isEmpty();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        if (this.f105069e.isEmpty()) {
            throw new NoSuchElementException("There are no elements for this iterator to loop on");
        }
        if (!this.f105070f.hasNext()) {
            reset();
        }
        return this.f105070f.next();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        if (this.f105069e.isEmpty()) {
            throw new NoSuchElementException("There are no elements for this iterator to loop on");
        }
        if (this.f105070f.hasNext()) {
            return this.f105070f.nextIndex();
        }
        return 0;
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public E previous() {
        if (this.f105069e.isEmpty()) {
            throw new NoSuchElementException("There are no elements for this iterator to loop on");
        }
        if (this.f105070f.hasPrevious()) {
            return this.f105070f.previous();
        }
        E e = null;
        while (this.f105070f.hasNext()) {
            e = this.f105070f.next();
        }
        this.f105070f.previous();
        return e;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        if (this.f105069e.isEmpty()) {
            throw new NoSuchElementException("There are no elements for this iterator to loop on");
        }
        return !this.f105070f.hasPrevious() ? this.f105069e.size() - 1 : this.f105070f.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        this.f105070f.remove();
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        m65970a();
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        this.f105070f.set(e);
    }

    public int size() {
        return this.f105069e.size();
    }
}
