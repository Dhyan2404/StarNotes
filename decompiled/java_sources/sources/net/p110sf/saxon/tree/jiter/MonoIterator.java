package net.p110sf.saxon.tree.jiter;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes11.dex */
public class MonoIterator<T> implements Iterator<T> {

    /* renamed from: e */
    public final T f102480e;

    /* renamed from: f */
    public boolean f102481f = false;

    public MonoIterator(T t) {
        this.f102480e = t;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.f102481f;
    }

    @Override // java.util.Iterator
    public T next() {
        if (this.f102481f) {
            throw new NoSuchElementException();
        }
        this.f102481f = true;
        return this.f102480e;
    }
}
