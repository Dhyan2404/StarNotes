package org.apache.commons.collections4.iterators;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.Predicate;

/* loaded from: classes11.dex */
public class FilterListIterator<E> implements ListIterator<E> {

    /* renamed from: e */
    public ListIterator<? extends E> f105041e;

    /* renamed from: f */
    public Predicate<? super E> f105042f;

    /* renamed from: g */
    public E f105043g;

    /* renamed from: i */
    public E f105045i;

    /* renamed from: h */
    public boolean f105044h = false;

    /* renamed from: j */
    public boolean f105046j = false;

    /* renamed from: k */
    public int f105047k = 0;

    public FilterListIterator() {
    }

    /* renamed from: a */
    public final void m65962a() {
        this.f105043g = null;
        this.f105044h = false;
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("FilterListIterator.add(Object) is not supported.");
    }

    /* renamed from: b */
    public final void m65963b() {
        this.f105045i = null;
        this.f105046j = false;
    }

    /* renamed from: c */
    public final boolean m65964c() {
        if (this.f105046j) {
            m65963b();
            if (!m65964c()) {
                return false;
            }
            m65962a();
        }
        if (this.f105041e == null) {
            return false;
        }
        while (this.f105041e.hasNext()) {
            E next = this.f105041e.next();
            if (this.f105042f.evaluate(next)) {
                this.f105043g = next;
                this.f105044h = true;
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final boolean m65965d() {
        if (this.f105044h) {
            m65962a();
            if (!m65965d()) {
                return false;
            }
            m65963b();
        }
        if (this.f105041e == null) {
            return false;
        }
        while (this.f105041e.hasPrevious()) {
            E previous = this.f105041e.previous();
            if (this.f105042f.evaluate(previous)) {
                this.f105045i = previous;
                this.f105046j = true;
                return true;
            }
        }
        return false;
    }

    public ListIterator<? extends E> getListIterator() {
        return this.f105041e;
    }

    public Predicate<? super E> getPredicate() {
        return this.f105042f;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.f105044h || m65964c();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.f105046j || m65965d();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        if (!this.f105044h && !m65964c()) {
            throw new NoSuchElementException();
        }
        this.f105047k++;
        E e = this.f105043g;
        m65962a();
        return e;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f105047k;
    }

    @Override // java.util.ListIterator
    public E previous() {
        if (!this.f105046j && !m65965d()) {
            throw new NoSuchElementException();
        }
        this.f105047k--;
        E e = this.f105045i;
        m65963b();
        return e;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f105047k - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("FilterListIterator.remove() is not supported.");
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        throw new UnsupportedOperationException("FilterListIterator.set(Object) is not supported.");
    }

    public void setListIterator(ListIterator<? extends E> listIterator) {
        this.f105041e = listIterator;
    }

    public void setPredicate(Predicate<? super E> predicate) {
        this.f105042f = predicate;
    }

    public FilterListIterator(ListIterator<? extends E> listIterator) {
        this.f105041e = listIterator;
    }

    public FilterListIterator(ListIterator<? extends E> listIterator, Predicate<? super E> predicate) {
        this.f105041e = listIterator;
        this.f105042f = predicate;
    }

    public FilterListIterator(Predicate<? super E> predicate) {
        this.f105042f = predicate;
    }
}
