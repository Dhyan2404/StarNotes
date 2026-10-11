package com.sun.xml.internal.stream.util;

import java.util.Iterator;

/* loaded from: classes10.dex */
public class ReadOnlyIterator implements Iterator {
    Iterator iterator;

    public ReadOnlyIterator() {
        this.iterator = null;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        Iterator it2 = this.iterator;
        if (it2 != null) {
            return it2.hasNext();
        }
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        Iterator it2 = this.iterator;
        if (it2 != null) {
            return it2.next();
        }
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Remove operation is not supported");
    }

    public ReadOnlyIterator(Iterator it2) {
        this.iterator = it2;
    }
}
