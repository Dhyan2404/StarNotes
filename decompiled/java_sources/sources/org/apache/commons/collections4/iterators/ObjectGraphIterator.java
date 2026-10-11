package org.apache.commons.collections4.iterators;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public class ObjectGraphIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public final Deque<Iterator<? extends E>> f105078e;

    /* renamed from: f */
    public E f105079f;

    /* renamed from: g */
    public final Transformer<? super E, ? extends E> f105080g;

    /* renamed from: h */
    public boolean f105081h;

    /* renamed from: i */
    public Iterator<? extends E> f105082i;

    /* renamed from: j */
    public E f105083j;

    /* renamed from: k */
    public Iterator<? extends E> f105084k;

    public ObjectGraphIterator(E e, Transformer<? super E, ? extends E> transformer) {
        this.f105078e = new ArrayDeque(8);
        this.f105081h = false;
        if (e instanceof Iterator) {
            this.f105082i = (Iterator) e;
        } else {
            this.f105079f = e;
        }
        this.f105080g = transformer;
    }

    public void findNext(E e) {
        if (e instanceof Iterator) {
            findNextByIterator((Iterator) e);
        } else {
            this.f105083j = e;
            this.f105081h = true;
        }
    }

    public void findNextByIterator(Iterator<? extends E> it2) {
        Iterator<? extends E> it3 = this.f105082i;
        if (it2 != it3) {
            if (it3 != null) {
                this.f105078e.push(it3);
            }
            this.f105082i = it2;
        }
        while (this.f105082i.hasNext() && !this.f105081h) {
            E next = this.f105082i.next();
            Transformer<? super E, ? extends E> transformer = this.f105080g;
            if (transformer != null) {
                next = transformer.transform(next);
            }
            findNext(next);
        }
        if (this.f105081h || this.f105078e.isEmpty()) {
            return;
        }
        Iterator<? extends E> pop = this.f105078e.pop();
        this.f105082i = pop;
        findNextByIterator(pop);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        updateCurrentIterator();
        return this.f105081h;
    }

    @Override // java.util.Iterator
    public E next() {
        updateCurrentIterator();
        if (!this.f105081h) {
            throw new NoSuchElementException("No more elements in the iteration");
        }
        this.f105084k = this.f105082i;
        E e = this.f105083j;
        this.f105083j = null;
        this.f105081h = false;
        return e;
    }

    @Override // java.util.Iterator
    public void remove() {
        Iterator<? extends E> it2 = this.f105084k;
        if (it2 == null) {
            throw new IllegalStateException("Iterator remove() cannot be called at this time");
        }
        it2.remove();
        this.f105084k = null;
    }

    public void updateCurrentIterator() {
        if (this.f105081h) {
            return;
        }
        Iterator<? extends E> it2 = this.f105082i;
        if (it2 != null) {
            findNextByIterator(it2);
            return;
        }
        E e = this.f105079f;
        if (e == null) {
            return;
        }
        Transformer<? super E, ? extends E> transformer = this.f105080g;
        if (transformer == null) {
            findNext(e);
        } else {
            findNext(transformer.transform(e));
        }
        this.f105079f = null;
    }

    public ObjectGraphIterator(Iterator<? extends E> it2) {
        this.f105078e = new ArrayDeque(8);
        this.f105081h = false;
        this.f105082i = it2;
        this.f105080g = null;
    }
}
