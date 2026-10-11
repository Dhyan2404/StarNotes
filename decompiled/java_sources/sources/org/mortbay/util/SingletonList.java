package org.mortbay.util;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes13.dex */
public class SingletonList extends AbstractList {

    /* renamed from: e */
    public Object f115356e;

    /* renamed from: org.mortbay.util.SingletonList$a */
    /* loaded from: classes13.dex */
    public class C20431a implements ListIterator {

        /* renamed from: e */
        public int f115357e;

        public C20431a() {
            this.f115357e = 0;
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException("SingletonList.add()");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f115357e == 0;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f115357e == 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            int i = this.f115357e;
            if (i != 0) {
                throw new NoSuchElementException();
            }
            this.f115357e = i + 1;
            return SingletonList.this.f115356e;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f115357e;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            int i = this.f115357e;
            if (i != 1) {
                throw new NoSuchElementException();
            }
            this.f115357e = i - 1;
            return SingletonList.this.f115356e;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f115357e - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("SingletonList.remove()");
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException("SingletonList.add()");
        }

        public C20431a(int i) {
            if (i >= 0 && i <= 1) {
                this.f115357e = i;
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("index ");
            stringBuffer.append(i);
            throw new IndexOutOfBoundsException(stringBuffer.toString());
        }
    }

    public SingletonList(Object obj) {
        this.f115356e = obj;
    }

    public static SingletonList newSingletonList(Object obj) {
        return new SingletonList(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i == 0) {
            return this.f115356e;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("index ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new C20431a();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator() {
        return new C20431a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        return new C20431a(i);
    }
}
