package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes11.dex */
public class PairIterator<T> implements Iterator<T> {

    /* renamed from: e */
    public final T f102482e;

    /* renamed from: f */
    public final T f102483f;

    /* renamed from: g */
    public int f102484g = 0;

    public PairIterator(T t, T t2) {
        this.f102482e = t;
        this.f102483f = t2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f102484g < 2;
    }

    @Override // java.util.Iterator
    public T next() {
        int i = this.f102484g;
        this.f102484g = i + 1;
        if (i == 0) {
            return this.f102482e;
        }
        if (i == 1) {
            return this.f102483f;
        }
        throw new NoSuchElementException();
    }
}
