package org.apache.commons.collections4.iterators;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes11.dex */
public class IteratorChain<E> implements Iterator<E> {

    /* renamed from: e */
    public final Queue<Iterator<? extends E>> f105048e = new LinkedList();

    /* renamed from: f */
    public Iterator<? extends E> f105049f = null;

    /* renamed from: g */
    public Iterator<? extends E> f105050g = null;

    /* renamed from: h */
    public boolean f105051h = false;

    public IteratorChain() {
    }

    /* renamed from: a */
    public final void m65966a() {
        if (this.f105051h) {
            throw new UnsupportedOperationException("IteratorChain cannot be changed after the first use of a method from the Iterator interface");
        }
    }

    public void addIterator(Iterator<? extends E> it2) {
        m65966a();
        if (it2 == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        this.f105048e.add(it2);
    }

    /* renamed from: b */
    public final void m65967b() {
        if (this.f105051h) {
            return;
        }
        this.f105051h = true;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        m65967b();
        updateCurrentIterator();
        Iterator<? extends E> it2 = this.f105049f;
        this.f105050g = it2;
        return it2.hasNext();
    }

    public boolean isLocked() {
        return this.f105051h;
    }

    @Override // java.util.Iterator
    public E next() {
        m65967b();
        updateCurrentIterator();
        Iterator<? extends E> it2 = this.f105049f;
        this.f105050g = it2;
        return it2.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        m65967b();
        if (this.f105049f == null) {
            updateCurrentIterator();
        }
        this.f105050g.remove();
    }

    public int size() {
        return this.f105048e.size();
    }

    public void updateCurrentIterator() {
        if (this.f105049f == null) {
            if (this.f105048e.isEmpty()) {
                this.f105049f = EmptyIterator.emptyIterator();
            } else {
                this.f105049f = this.f105048e.remove();
            }
            this.f105050g = this.f105049f;
        }
        while (!this.f105049f.hasNext() && !this.f105048e.isEmpty()) {
            this.f105049f = this.f105048e.remove();
        }
    }

    public IteratorChain(Iterator<? extends E> it2) {
        addIterator(it2);
    }

    public IteratorChain(Iterator<? extends E> it2, Iterator<? extends E> it3) {
        addIterator(it2);
        addIterator(it3);
    }

    public IteratorChain(Iterator<? extends E>... itArr) {
        for (Iterator<? extends E> it2 : itArr) {
            addIterator(it2);
        }
    }

    public IteratorChain(Collection<Iterator<? extends E>> collection) {
        Iterator<Iterator<? extends E>> it2 = collection.iterator();
        while (it2.hasNext()) {
            addIterator(it2.next());
        }
    }
}
