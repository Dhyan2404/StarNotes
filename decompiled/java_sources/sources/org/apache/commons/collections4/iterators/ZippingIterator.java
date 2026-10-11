package org.apache.commons.collections4.iterators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.FluentIterable;

/* loaded from: classes11.dex */
public class ZippingIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public final Iterator<Iterator<? extends E>> f105114e;

    /* renamed from: f */
    public Iterator<? extends E> f105115f;

    /* renamed from: g */
    public Iterator<? extends E> f105116g;

    public ZippingIterator(Iterator<? extends E> it2, Iterator<? extends E> it3) {
        this(it2, it3);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f105115f != null) {
            return true;
        }
        while (this.f105114e.hasNext()) {
            Iterator<? extends E> next = this.f105114e.next();
            if (next.hasNext()) {
                this.f105115f = next;
                return true;
            }
            this.f105114e.remove();
        }
        return false;
    }

    @Override // java.util.Iterator
    public E next() throws NoSuchElementException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        E next = this.f105115f.next();
        this.f105116g = this.f105115f;
        this.f105115f = null;
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        Iterator<? extends E> it2 = this.f105116g;
        if (it2 == null) {
            throw new IllegalStateException("No value can be removed at present");
        }
        it2.remove();
        this.f105116g = null;
    }

    public ZippingIterator(Iterator<? extends E> it2, Iterator<? extends E> it3, Iterator<? extends E> it4) {
        this(it2, it3, it4);
    }

    public ZippingIterator(Iterator<? extends E>... itArr) {
        this.f105115f = null;
        this.f105116g = null;
        ArrayList arrayList = new ArrayList();
        for (Iterator<? extends E> it2 : itArr) {
            if (it2 != null) {
                arrayList.add(it2);
            } else {
                throw new NullPointerException("Iterator must not be null.");
            }
        }
        this.f105114e = FluentIterable.m65878of((Iterable) arrayList).loop().iterator();
    }
}
