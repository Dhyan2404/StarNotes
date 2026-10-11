package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import java.util.function.Supplier;

/* loaded from: classes11.dex */
public class ConcatenatingIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public Iterator<? extends E> f102474e;

    /* renamed from: f */
    public Supplier<Iterator<? extends E>> f102475f;

    /* renamed from: g */
    public Iterator<? extends E> f102476g;

    public ConcatenatingIterator(Iterator<? extends E> it2, Supplier<Iterator<? extends E>> supplier) {
        this.f102474e = it2;
        this.f102475f = supplier;
        this.f102476g = it2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f102476g.hasNext()) {
            return true;
        }
        if (this.f102476g != this.f102474e) {
            return false;
        }
        this.f102474e = null;
        Iterator<? extends E> it2 = this.f102475f.get();
        this.f102476g = it2;
        return it2.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        return this.f102476g.next();
    }
}
