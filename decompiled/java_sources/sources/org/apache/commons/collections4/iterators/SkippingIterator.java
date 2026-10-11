package org.apache.commons.collections4.iterators;

import java.util.Iterator;

/* loaded from: classes11.dex */
public class SkippingIterator<E> extends AbstractIteratorDecorator<E> {

    /* renamed from: f */
    public final long f105106f;

    /* renamed from: g */
    public long f105107g;

    public SkippingIterator(Iterator<E> it2, long j) {
        super(it2);
        if (j < 0) {
            throw new IllegalArgumentException("Offset parameter must not be negative.");
        }
        this.f105106f = j;
        this.f105107g = 0L;
        m65972a();
    }

    /* renamed from: a */
    public final void m65972a() {
        while (this.f105107g < this.f105106f && hasNext()) {
            next();
        }
    }

    @Override // org.apache.commons.collections4.iterators.AbstractIteratorDecorator, java.util.Iterator
    public E next() {
        E e = (E) super.next();
        this.f105107g++;
        return e;
    }

    @Override // org.apache.commons.collections4.iterators.AbstractUntypedIteratorDecorator, java.util.Iterator
    public void remove() {
        if (this.f105107g <= this.f105106f) {
            throw new IllegalStateException("remove() can not be called before calling next()");
        }
        super.remove();
    }
}
