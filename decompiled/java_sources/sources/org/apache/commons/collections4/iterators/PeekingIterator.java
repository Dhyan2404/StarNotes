package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes11.dex */
public class PeekingIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public final Iterator<? extends E> f105085e;

    /* renamed from: f */
    public boolean f105086f = false;

    /* renamed from: g */
    public boolean f105087g = false;

    /* renamed from: h */
    public E f105088h;

    public PeekingIterator(Iterator<? extends E> it2) {
        this.f105085e = it2;
    }

    public static <E> PeekingIterator<E> peekingIterator(Iterator<? extends E> it2) {
        if (it2 != null) {
            return it2 instanceof PeekingIterator ? (PeekingIterator) it2 : new PeekingIterator<>(it2);
        }
        throw new NullPointerException("Iterator must not be null");
    }

    /* renamed from: a */
    public final void m65971a() {
        if (this.f105086f || this.f105087g) {
            return;
        }
        if (this.f105085e.hasNext()) {
            this.f105088h = this.f105085e.next();
            this.f105087g = true;
        } else {
            this.f105086f = true;
            this.f105088h = null;
            this.f105087g = false;
        }
    }

    public E element() {
        m65971a();
        if (this.f105086f) {
            throw new NoSuchElementException();
        }
        return this.f105088h;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f105086f) {
            return false;
        }
        return this.f105087g || this.f105085e.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        E next = this.f105087g ? this.f105088h : this.f105085e.next();
        this.f105088h = null;
        this.f105087g = false;
        return next;
    }

    public E peek() {
        m65971a();
        if (this.f105086f) {
            return null;
        }
        return this.f105088h;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f105087g) {
            throw new IllegalStateException("peek() or element() called before remove()");
        }
        this.f105085e.remove();
    }
}
