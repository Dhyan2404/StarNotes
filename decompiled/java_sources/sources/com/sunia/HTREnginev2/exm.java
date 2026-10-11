package com.sunia.HTREnginev2;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes13.dex */
public class exm implements Iterator {
    @Override // java.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
