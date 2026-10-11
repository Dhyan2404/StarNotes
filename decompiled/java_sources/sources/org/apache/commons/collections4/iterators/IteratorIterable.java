package org.apache.commons.collections4.iterators;

import java.util.Iterator;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class IteratorIterable<E> implements Iterable<E> {

    /* renamed from: e */
    public final Iterator<? extends E> f105053e;

    /* renamed from: f */
    public final Iterator<E> f105054f;

    /* renamed from: org.apache.commons.collections4.iterators.IteratorIterable$a */
    /* loaded from: classes11.dex */
    public static class C18744a implements Iterator<E> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f105055e;

        public C18744a(Iterator it2) {
            this.f105055e = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f105055e.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            return (E) this.f105055e.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f105055e.remove();
        }
    }

    public IteratorIterable(Iterator<? extends E> it2) {
        this(it2, false);
    }

    /* renamed from: a */
    public static <E> Iterator<E> m65968a(Iterator<? extends E> it2) {
        return new C18744a(it2);
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Iterator<? extends E> it2 = this.f105053e;
        if (it2 instanceof ResettableIterator) {
            ((ResettableIterator) it2).reset();
        }
        return this.f105054f;
    }

    public IteratorIterable(Iterator<? extends E> it2, boolean z) {
        if (z && !(it2 instanceof ResettableIterator)) {
            this.f105053e = new ListIteratorWrapper(it2);
        } else {
            this.f105053e = it2;
        }
        this.f105054f = m65968a(this.f105053e);
    }
}
