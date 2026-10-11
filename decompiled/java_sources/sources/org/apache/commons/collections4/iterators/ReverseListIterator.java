package org.apache.commons.collections4.iterators;

import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class ReverseListIterator<E> implements ResettableListIterator<E> {

    /* renamed from: e */
    public final List<E> f105095e;

    /* renamed from: f */
    public ListIterator<E> f105096f;

    /* renamed from: g */
    public boolean f105097g = true;

    public ReverseListIterator(List<E> list) {
        if (list == null) {
            throw new NullPointerException("List must not be null.");
        }
        this.f105095e = list;
        this.f105096f = list.listIterator(list.size());
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        if (!this.f105097g) {
            throw new IllegalStateException("Cannot add to list until next() or previous() called");
        }
        this.f105097g = false;
        this.f105096f.add(e);
        this.f105096f.previous();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105096f.hasPrevious();
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        return this.f105096f.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        E previous = this.f105096f.previous();
        this.f105097g = true;
        return previous;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f105096f.previousIndex();
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public E previous() {
        E next = this.f105096f.next();
        this.f105097g = true;
        return next;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f105096f.nextIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        if (!this.f105097g) {
            throw new IllegalStateException("Cannot remove from list until next() or previous() called");
        }
        this.f105096f.remove();
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        List<E> list = this.f105095e;
        this.f105096f = list.listIterator(list.size());
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        if (!this.f105097g) {
            throw new IllegalStateException("Cannot set to list until next() or previous() called");
        }
        this.f105096f.set(e);
    }
}
