package org.apache.commons.collections4.iterators;

import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class SingletonListIterator<E> implements ResettableListIterator<E> {

    /* renamed from: e */
    public boolean f105102e = true;

    /* renamed from: f */
    public boolean f105103f = false;

    /* renamed from: g */
    public boolean f105104g = false;

    /* renamed from: h */
    public E f105105h;

    public SingletonListIterator(E e) {
        this.f105105h = e;
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("add() is not supported by this iterator");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105102e && !this.f105104g;
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        return (this.f105102e || this.f105104g) ? false : true;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        if (!this.f105102e || this.f105104g) {
            throw new NoSuchElementException();
        }
        this.f105102e = false;
        this.f105103f = true;
        return this.f105105h;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return !this.f105102e ? 1 : 0;
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public E previous() {
        if (this.f105102e || this.f105104g) {
            throw new NoSuchElementException();
        }
        this.f105102e = true;
        return this.f105105h;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f105102e ? -1 : 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        if (!this.f105103f || this.f105104g) {
            throw new IllegalStateException();
        }
        this.f105105h = null;
        this.f105104g = true;
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        this.f105102e = true;
        this.f105103f = false;
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        if (!this.f105103f || this.f105104g) {
            throw new IllegalStateException();
        }
        this.f105105h = e;
    }
}
