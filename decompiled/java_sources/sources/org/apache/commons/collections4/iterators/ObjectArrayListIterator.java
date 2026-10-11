package org.apache.commons.collections4.iterators;

import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class ObjectArrayListIterator<E> extends ObjectArrayIterator<E> implements ResettableListIterator<E> {

    /* renamed from: i */
    public int f105077i;

    public ObjectArrayListIterator(E... eArr) {
        super(eArr);
        this.f105077i = -1;
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("add() method is not supported");
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        return this.f105076h > getStartIndex();
    }

    @Override // org.apache.commons.collections4.iterators.ObjectArrayIterator, java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f105076h;
        this.f105077i = i;
        E[] eArr = this.f105073e;
        this.f105076h = i + 1;
        return eArr[i];
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f105076h - getStartIndex();
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f105076h - 1;
        this.f105076h = i;
        this.f105077i = i;
        return this.f105073e[i];
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return (this.f105076h - getStartIndex()) - 1;
    }

    @Override // org.apache.commons.collections4.iterators.ObjectArrayIterator, org.apache.commons.collections4.ResettableIterator
    public void reset() {
        super.reset();
        this.f105077i = -1;
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        int i = this.f105077i;
        if (i == -1) {
            throw new IllegalStateException("must call next() or previous() before a call to set()");
        }
        this.f105073e[i] = e;
    }

    public ObjectArrayListIterator(E[] eArr, int i) {
        super(eArr, i);
        this.f105077i = -1;
    }

    public ObjectArrayListIterator(E[] eArr, int i, int i2) {
        super(eArr, i, i2);
        this.f105077i = -1;
    }
}
