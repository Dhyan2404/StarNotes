package org.apache.commons.collections4.iterators;

import java.util.Iterator;

/* loaded from: classes11.dex */
public abstract class AbstractUntypedIteratorDecorator<I, O> implements Iterator<O> {

    /* renamed from: e */
    public final Iterator<I> f105015e;

    public AbstractUntypedIteratorDecorator(Iterator<I> it2) {
        if (it2 == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        this.f105015e = it2;
    }

    public Iterator<I> getIterator() {
        return this.f105015e;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105015e.hasNext();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f105015e.remove();
    }
}
