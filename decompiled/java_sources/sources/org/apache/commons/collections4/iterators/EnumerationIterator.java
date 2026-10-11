package org.apache.commons.collections4.iterators;

import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;

/* loaded from: classes11.dex */
public class EnumerationIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public final Collection<? super E> f105034e;

    /* renamed from: f */
    public Enumeration<? extends E> f105035f;

    /* renamed from: g */
    public E f105036g;

    public EnumerationIterator() {
        this(null, null);
    }

    public Enumeration<? extends E> getEnumeration() {
        return this.f105035f;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105035f.hasMoreElements();
    }

    @Override // java.util.Iterator
    public E next() {
        E nextElement = this.f105035f.nextElement();
        this.f105036g = nextElement;
        return nextElement;
    }

    @Override // java.util.Iterator
    public void remove() {
        Collection<? super E> collection = this.f105034e;
        if (collection == null) {
            throw new UnsupportedOperationException("No Collection associated with this Iterator");
        }
        E e = this.f105036g;
        if (e == null) {
            throw new IllegalStateException("next() must have been called for remove() to function");
        }
        collection.remove(e);
    }

    public void setEnumeration(Enumeration<? extends E> enumeration) {
        this.f105035f = enumeration;
    }

    public EnumerationIterator(Enumeration<? extends E> enumeration) {
        this(enumeration, null);
    }

    public EnumerationIterator(Enumeration<? extends E> enumeration, Collection<? super E> collection) {
        this.f105035f = enumeration;
        this.f105034e = collection;
        this.f105036g = null;
    }
}
