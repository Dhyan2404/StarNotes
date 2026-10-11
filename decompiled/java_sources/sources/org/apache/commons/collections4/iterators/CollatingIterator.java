package org.apache.commons.collections4.iterators;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.list.UnmodifiableList;

/* loaded from: classes11.dex */
public class CollatingIterator<E> implements Iterator<E> {

    /* renamed from: e */
    public Comparator<? super E> f105025e;

    /* renamed from: f */
    public List<Iterator<? extends E>> f105026f;

    /* renamed from: g */
    public List<E> f105027g;

    /* renamed from: h */
    public BitSet f105028h;

    /* renamed from: i */
    public int f105029i;

    public CollatingIterator() {
        this((Comparator) null, 2);
    }

    /* renamed from: a */
    public final boolean m65954a(List<Iterator<? extends E>> list) {
        Iterator<Iterator<? extends E>> it2 = list.iterator();
        while (it2.hasNext()) {
            if (it2.next().hasNext()) {
                return true;
            }
        }
        return false;
    }

    public void addIterator(Iterator<? extends E> it2) {
        m65956c();
        if (it2 == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        this.f105026f.add(it2);
    }

    /* renamed from: b */
    public final boolean m65955b(BitSet bitSet) {
        for (int i = 0; i < bitSet.size(); i++) {
            if (bitSet.get(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final void m65956c() throws IllegalStateException {
        if (this.f105027g != null) {
            throw new IllegalStateException("Can't do that after next or hasNext has been called.");
        }
    }

    /* renamed from: d */
    public final void m65957d(int i) {
        this.f105027g.set(i, null);
        this.f105028h.clear(i);
    }

    /* renamed from: e */
    public final int m65958e() {
        Object obj = null;
        int i = -1;
        for (int i2 = 0; i2 < this.f105027g.size(); i2++) {
            if (!this.f105028h.get(i2)) {
                m65959f(i2);
            }
            if (this.f105028h.get(i2)) {
                if (i == -1) {
                    obj = this.f105027g.get(i2);
                    i = i2;
                } else {
                    E e = this.f105027g.get(i2);
                    Comparator<? super E> comparator = this.f105025e;
                    if (comparator == null) {
                        throw new NullPointerException("You must invoke setComparator() to set a comparator first.");
                    }
                    if (comparator.compare(e, obj) < 0) {
                        i = i2;
                        obj = e;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: f */
    public final boolean m65959f(int i) {
        Iterator<? extends E> it2 = this.f105026f.get(i);
        if (it2.hasNext()) {
            this.f105027g.set(i, it2.next());
            this.f105028h.set(i);
            return true;
        }
        this.f105027g.set(i, null);
        this.f105028h.clear(i);
        return false;
    }

    /* renamed from: g */
    public final void m65960g() {
        if (this.f105027g == null) {
            this.f105027g = new ArrayList(this.f105026f.size());
            this.f105028h = new BitSet(this.f105026f.size());
            for (int i = 0; i < this.f105026f.size(); i++) {
                this.f105027g.add(null);
                this.f105028h.clear(i);
            }
        }
    }

    public Comparator<? super E> getComparator() {
        return this.f105025e;
    }

    public int getIteratorIndex() {
        int i = this.f105029i;
        if (i != -1) {
            return i;
        }
        throw new IllegalStateException("No value has been returned yet");
    }

    public List<Iterator<? extends E>> getIterators() {
        return UnmodifiableList.unmodifiableList(this.f105026f);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        m65960g();
        return m65955b(this.f105028h) || m65954a(this.f105026f);
    }

    @Override // java.util.Iterator
    public E next() throws NoSuchElementException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int m65958e = m65958e();
        if (m65958e == -1) {
            throw new NoSuchElementException();
        }
        E e = this.f105027g.get(m65958e);
        m65957d(m65958e);
        this.f105029i = m65958e;
        return e;
    }

    @Override // java.util.Iterator
    public void remove() {
        int i = this.f105029i;
        if (i == -1) {
            throw new IllegalStateException("No value can be removed at present");
        }
        this.f105026f.get(i).remove();
    }

    public void setComparator(Comparator<? super E> comparator) {
        m65956c();
        this.f105025e = comparator;
    }

    public void setIterator(int i, Iterator<? extends E> it2) {
        m65956c();
        if (it2 == null) {
            throw new NullPointerException("Iterator must not be null");
        }
        this.f105026f.set(i, it2);
    }

    public CollatingIterator(Comparator<? super E> comparator) {
        this(comparator, 2);
    }

    public CollatingIterator(Comparator<? super E> comparator, int i) {
        this.f105025e = null;
        this.f105026f = null;
        this.f105027g = null;
        this.f105028h = null;
        this.f105029i = -1;
        this.f105026f = new ArrayList(i);
        setComparator(comparator);
    }

    public CollatingIterator(Comparator<? super E> comparator, Iterator<? extends E> it2, Iterator<? extends E> it3) {
        this(comparator, 2);
        addIterator(it2);
        addIterator(it3);
    }

    public CollatingIterator(Comparator<? super E> comparator, Iterator<? extends E>[] itArr) {
        this(comparator, itArr.length);
        for (Iterator<? extends E> it2 : itArr) {
            addIterator(it2);
        }
    }

    public CollatingIterator(Comparator<? super E> comparator, Collection<Iterator<? extends E>> collection) {
        this(comparator, collection.size());
        Iterator<Iterator<? extends E>> it2 = collection.iterator();
        while (it2.hasNext()) {
            addIterator(it2.next());
        }
    }
}
