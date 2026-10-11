package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes11.dex */
public class BoundedIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public final Iterator<? extends E> f105021e;

    /* renamed from: f */
    public final long f105022f;

    /* renamed from: g */
    public final long f105023g;

    /* renamed from: h */
    public long f105024h;

    public BoundedIterator(Iterator<? extends E> it2, long j, long j2) {
        if (it2 == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Offset parameter must not be negative.");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Max parameter must not be negative.");
        }
        this.f105021e = it2;
        this.f105022f = j;
        this.f105023g = j2;
        this.f105024h = 0L;
        m65953b();
    }

    /* renamed from: a */
    public final boolean m65952a() {
        return (this.f105024h - this.f105022f) + 1 <= this.f105023g;
    }

    /* renamed from: b */
    public final void m65953b() {
        while (this.f105024h < this.f105022f && this.f105021e.hasNext()) {
            this.f105021e.next();
            this.f105024h++;
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (m65952a()) {
            return this.f105021e.hasNext();
        }
        return false;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!m65952a()) {
            throw new NoSuchElementException();
        }
        E next = this.f105021e.next();
        this.f105024h++;
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f105024h <= this.f105022f) {
            throw new IllegalStateException("remove() can not be called before calling next()");
        }
        this.f105021e.remove();
    }
}
