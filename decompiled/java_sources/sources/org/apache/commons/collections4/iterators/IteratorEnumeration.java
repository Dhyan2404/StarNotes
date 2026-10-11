package org.apache.commons.collections4.iterators;

import java.util.Enumeration;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class IteratorEnumeration<E> implements Enumeration<E> {

    /* renamed from: e */
    public Iterator<? extends E> f105052e;

    public IteratorEnumeration() {
    }

    public Iterator<? extends E> getIterator() {
        return this.f105052e;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f105052e.hasNext();
    }

    @Override // java.util.Enumeration
    public E nextElement() {
        return this.f105052e.next();
    }

    public void setIterator(Iterator<? extends E> it2) {
        this.f105052e = it2;
    }

    public IteratorEnumeration(Iterator<? extends E> it2) {
        this.f105052e = it2;
    }
}
