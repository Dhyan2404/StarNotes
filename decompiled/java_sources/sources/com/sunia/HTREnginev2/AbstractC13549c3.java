package com.sunia.HTREnginev2;

import java.util.NoSuchElementException;

/* renamed from: com.sunia.HTREnginev2.c3 */
/* loaded from: classes11.dex */
public abstract class AbstractC13549c3<E> {
    public void add(E e) {
        throw new UnsupportedOperationException("add() not supported for empty Iterator");
    }

    public boolean hasNext() {
        return false;
    }

    public boolean hasPrevious() {
        return false;
    }

    public E next() {
        throw new NoSuchElementException("Iterator contains no elements");
    }

    public int nextIndex() {
        return 0;
    }

    public E previous() {
        throw new NoSuchElementException("Iterator contains no elements");
    }

    public int previousIndex() {
        return -1;
    }

    public void remove() {
        throw new IllegalStateException("Iterator contains no elements");
    }

    public void reset() {
    }

    public void set(E e) {
        throw new IllegalStateException("Iterator contains no elements");
    }
}
