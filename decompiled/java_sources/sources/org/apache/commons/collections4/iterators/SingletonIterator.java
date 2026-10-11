package org.apache.commons.collections4.iterators;

import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class SingletonIterator<E> implements ResettableIterator<E> {

    /* renamed from: e */
    public final boolean f105098e;

    /* renamed from: f */
    public boolean f105099f;

    /* renamed from: g */
    public boolean f105100g;

    /* renamed from: h */
    public E f105101h;

    public SingletonIterator(E e) {
        this(e, true);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105099f && !this.f105100g;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!this.f105099f || this.f105100g) {
            throw new NoSuchElementException();
        }
        this.f105099f = false;
        return this.f105101h;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f105098e) {
            throw new UnsupportedOperationException();
        }
        if (this.f105100g || this.f105099f) {
            throw new IllegalStateException();
        }
        this.f105101h = null;
        this.f105100g = true;
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        this.f105099f = true;
    }

    public SingletonIterator(E e, boolean z) {
        this.f105099f = true;
        this.f105100g = false;
        this.f105101h = e;
        this.f105098e = z;
    }
}
