package org.apache.commons.collections4.iterators;

import java.util.Iterator;

/* loaded from: classes11.dex */
public abstract class LazyIteratorChain<E> implements Iterator<E> {

    /* renamed from: e */
    public int f105056e = 0;

    /* renamed from: f */
    public boolean f105057f = false;

    /* renamed from: g */
    public Iterator<? extends E> f105058g = null;

    /* renamed from: h */
    public Iterator<? extends E> f105059h = null;

    /* renamed from: a */
    public final void m65969a() {
        int i = this.f105056e;
        if (i == 0) {
            int i2 = i + 1;
            this.f105056e = i2;
            Iterator<? extends E> nextIterator = nextIterator(i2);
            this.f105058g = nextIterator;
            if (nextIterator == null) {
                this.f105058g = EmptyIterator.emptyIterator();
                this.f105057f = true;
            }
            this.f105059h = this.f105058g;
        }
        while (!this.f105058g.hasNext() && !this.f105057f) {
            int i3 = this.f105056e + 1;
            this.f105056e = i3;
            Iterator<? extends E> nextIterator2 = nextIterator(i3);
            if (nextIterator2 != null) {
                this.f105058g = nextIterator2;
            } else {
                this.f105057f = true;
            }
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        m65969a();
        Iterator<? extends E> it2 = this.f105058g;
        this.f105059h = it2;
        return it2.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        m65969a();
        Iterator<? extends E> it2 = this.f105058g;
        this.f105059h = it2;
        return it2.next();
    }

    public abstract Iterator<? extends E> nextIterator(int i);

    @Override // java.util.Iterator
    public void remove() {
        if (this.f105058g == null) {
            m65969a();
        }
        this.f105059h.remove();
    }
}
