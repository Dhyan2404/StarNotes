package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public class FilterIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public Iterator<? extends E> f105037e;

    /* renamed from: f */
    public Predicate<? super E> f105038f;

    /* renamed from: g */
    public E f105039g;

    /* renamed from: h */
    public boolean f105040h = false;

    public FilterIterator() {
    }

    /* renamed from: a */
    public final boolean m65961a() {
        while (this.f105037e.hasNext()) {
            E next = this.f105037e.next();
            if (this.f105038f.evaluate(next)) {
                this.f105039g = next;
                this.f105040h = true;
                return true;
            }
        }
        return false;
    }

    public Iterator<? extends E> getIterator() {
        return this.f105037e;
    }

    public Predicate<? super E> getPredicate() {
        return this.f105038f;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f105040h || m65961a();
    }

    @Override // java.util.Iterator
    public E next() {
        if (!this.f105040h && !m65961a()) {
            throw new NoSuchElementException();
        }
        this.f105040h = false;
        return this.f105039g;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (this.f105040h) {
            throw new IllegalStateException("remove() cannot be called");
        }
        this.f105037e.remove();
    }

    public void setIterator(Iterator<? extends E> it2) {
        this.f105037e = it2;
        this.f105039g = null;
        this.f105040h = false;
    }

    public void setPredicate(Predicate<? super E> predicate) {
        this.f105038f = predicate;
        this.f105039g = null;
        this.f105040h = false;
    }

    public FilterIterator(Iterator<? extends E> it2) {
        this.f105037e = it2;
    }

    public FilterIterator(Iterator<? extends E> it2, Predicate<? super E> predicate) {
        this.f105037e = it2;
        this.f105038f = predicate;
    }
}
