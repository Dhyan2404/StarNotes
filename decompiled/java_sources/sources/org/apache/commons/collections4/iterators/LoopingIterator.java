package org.apache.commons.collections4.iterators;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class LoopingIterator<E> implements ResettableIterator<E> {

    /* renamed from: e */
    public final Collection<? extends E> f105067e;

    /* renamed from: f */
    public Iterator<? extends E> f105068f;

    public LoopingIterator(Collection<? extends E> collection) {
        if (collection == null) {
            throw new NullPointerException("The collection must not be null");
        }
        this.f105067e = collection;
        reset();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105067e.size() > 0;
    }

    @Override // java.util.Iterator
    public E next() {
        if (this.f105067e.size() == 0) {
            throw new NoSuchElementException("There are no elements for this iterator to loop on");
        }
        if (!this.f105068f.hasNext()) {
            reset();
        }
        return this.f105068f.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f105068f.remove();
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        this.f105068f = this.f105067e.iterator();
    }

    public int size() {
        return this.f105067e.size();
    }
}
