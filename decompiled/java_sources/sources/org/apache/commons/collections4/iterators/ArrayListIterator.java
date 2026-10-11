package org.apache.commons.collections4.iterators;

import java.lang.reflect.Array;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class ArrayListIterator<E> extends ArrayIterator<E> implements ResettableListIterator<E> {

    /* renamed from: i */
    public int f105020i;

    public ArrayListIterator(Object obj) {
        super(obj);
        this.f105020i = -1;
    }

    @Override // java.util.ListIterator
    public void add(Object obj) {
        throw new UnsupportedOperationException("add() method is not supported");
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        return this.f105019h > this.f105017f;
    }

    @Override // org.apache.commons.collections4.iterators.ArrayIterator, java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f105019h;
        this.f105020i = i;
        Object obj = this.f105016e;
        this.f105019h = i + 1;
        return (E) Array.get(obj, i);
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f105019h - this.f105017f;
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f105019h - 1;
        this.f105019h = i;
        this.f105020i = i;
        return (E) Array.get(this.f105016e, i);
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return (this.f105019h - this.f105017f) - 1;
    }

    @Override // org.apache.commons.collections4.iterators.ArrayIterator, org.apache.commons.collections4.ResettableIterator
    public void reset() {
        super.reset();
        this.f105020i = -1;
    }

    @Override // java.util.ListIterator
    public void set(Object obj) {
        int i = this.f105020i;
        if (i == -1) {
            throw new IllegalStateException("must call next() or previous() before a call to set()");
        }
        Array.set(this.f105016e, i, obj);
    }

    public ArrayListIterator(Object obj, int i) {
        super(obj, i);
        this.f105020i = -1;
    }

    public ArrayListIterator(Object obj, int i, int i2) {
        super(obj, i, i2);
        this.f105020i = -1;
    }
}
