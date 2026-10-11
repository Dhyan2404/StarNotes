package org.apache.commons.collections4.iterators;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class ListIteratorWrapper<E> implements ResettableListIterator<E> {

    /* renamed from: j */
    public static final String f105060j = "ListIteratorWrapper does not support optional operations of ListIterator.";

    /* renamed from: k */
    public static final String f105061k = "Cannot remove element at index {0}.";

    /* renamed from: e */
    public final Iterator<? extends E> f105062e;

    /* renamed from: f */
    public final List<E> f105063f = new ArrayList();

    /* renamed from: g */
    public int f105064g = 0;

    /* renamed from: h */
    public int f105065h = 0;

    /* renamed from: i */
    public boolean f105066i;

    public ListIteratorWrapper(Iterator<? extends E> it2) {
        if (it2 == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        this.f105062e = it2;
    }

    @Override // java.util.ListIterator
    public void add(E e) throws UnsupportedOperationException {
        Iterator<? extends E> it2 = this.f105062e;
        if (!(it2 instanceof ListIterator)) {
            throw new UnsupportedOperationException(f105060j);
        }
        ((ListIterator) it2).add(e);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        if (this.f105064g == this.f105065h || (this.f105062e instanceof ListIterator)) {
            return this.f105062e.hasNext();
        }
        return true;
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public boolean hasPrevious() {
        Iterator<? extends E> it2 = this.f105062e;
        return it2 instanceof ListIterator ? ((ListIterator) it2).hasPrevious() : this.f105064g > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() throws NoSuchElementException {
        Iterator<? extends E> it2 = this.f105062e;
        if (it2 instanceof ListIterator) {
            return it2.next();
        }
        int i = this.f105064g;
        if (i < this.f105065h) {
            int i2 = i + 1;
            this.f105064g = i2;
            return this.f105063f.get(i2 - 1);
        }
        E next = it2.next();
        this.f105063f.add(next);
        this.f105064g++;
        this.f105065h++;
        this.f105066i = true;
        return next;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        Iterator<? extends E> it2 = this.f105062e;
        return it2 instanceof ListIterator ? ((ListIterator) it2).nextIndex() : this.f105064g;
    }

    @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
    public E previous() throws NoSuchElementException {
        Iterator<? extends E> it2 = this.f105062e;
        if (it2 instanceof ListIterator) {
            return (E) ((ListIterator) it2).previous();
        }
        int i = this.f105064g;
        if (i == 0) {
            throw new NoSuchElementException();
        }
        this.f105066i = this.f105065h == i;
        List<E> list = this.f105063f;
        int i2 = i - 1;
        this.f105064g = i2;
        return list.get(i2);
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        Iterator<? extends E> it2 = this.f105062e;
        return it2 instanceof ListIterator ? ((ListIterator) it2).previousIndex() : this.f105064g - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() throws UnsupportedOperationException {
        Iterator<? extends E> it2 = this.f105062e;
        if (it2 instanceof ListIterator) {
            it2.remove();
            return;
        }
        int i = this.f105064g;
        int i2 = this.f105065h;
        int i3 = i == i2 ? i - 1 : i;
        if (!this.f105066i || i2 - i > 1) {
            throw new IllegalStateException(MessageFormat.format(f105061k, Integer.valueOf(i3)));
        }
        it2.remove();
        this.f105063f.remove(i3);
        this.f105064g = i3;
        this.f105065h--;
        this.f105066i = false;
    }

    @Override // org.apache.commons.collections4.ResettableIterator
    public void reset() {
        Iterator<? extends E> it2 = this.f105062e;
        if (!(it2 instanceof ListIterator)) {
            this.f105064g = 0;
            return;
        }
        ListIterator listIterator = (ListIterator) it2;
        while (listIterator.previousIndex() >= 0) {
            listIterator.previous();
        }
    }

    @Override // java.util.ListIterator
    public void set(E e) throws UnsupportedOperationException {
        Iterator<? extends E> it2 = this.f105062e;
        if (!(it2 instanceof ListIterator)) {
            throw new UnsupportedOperationException(f105060j);
        }
        ((ListIterator) it2).set(e);
    }
}
