package org.apache.xerces.impl.p117xs.util;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.p118xs.XSObjectList;

/* loaded from: classes13.dex */
public class XSObjectListImpl extends AbstractList implements XSObjectList {
    public static final XSObjectListImpl EMPTY_LIST = new XSObjectListImpl(new XSObject[0], 0);

    /* renamed from: g */
    public static final ListIterator f113258g = new C20067c();

    /* renamed from: h */
    public static final int f113259h = 4;

    /* renamed from: e */
    public XSObject[] f113260e;

    /* renamed from: f */
    public int f113261f;

    /* renamed from: org.apache.xerces.impl.xs.util.XSObjectListImpl$a */
    /* loaded from: classes13.dex */
    public final class C20064a implements ListIterator {

        /* renamed from: e */
        public int f113262e;

        public C20064a(int i) {
            this.f113262e = i;
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f113262e < XSObjectListImpl.this.f113261f;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f113262e > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            if (this.f113262e >= XSObjectListImpl.this.f113261f) {
                throw new NoSuchElementException();
            }
            XSObject[] xSObjectArr = XSObjectListImpl.this.f113260e;
            int i = this.f113262e;
            this.f113262e = i + 1;
            return xSObjectArr[i];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f113262e;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            if (this.f113262e <= 0) {
                throw new NoSuchElementException();
            }
            XSObject[] xSObjectArr = XSObjectListImpl.this.f113260e;
            int i = this.f113262e - 1;
            this.f113262e = i;
            return xSObjectArr[i];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f113262e - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException();
        }
    }

    public XSObjectListImpl() {
        this.f113260e = new XSObject[4];
        this.f113261f = 0;
    }

    public void addXSObject(int i, XSObject xSObject) {
        this.f113260e[i] = xSObject;
    }

    /* renamed from: c */
    public final boolean m70487c() {
        for (int i = this.f113261f - 1; i >= 0; i--) {
            if (this.f113260e[i] == null) {
                return true;
            }
        }
        return false;
    }

    public void clearXSObjectList() {
        for (int i = 0; i < this.f113261f; i++) {
            this.f113260e[i] = null;
        }
        this.f113260e = null;
        this.f113261f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return obj == null ? m70487c() : m70488d(obj);
    }

    /* renamed from: d */
    public final boolean m70488d(Object obj) {
        for (int i = this.f113261f - 1; i >= 0; i--) {
            if (obj.equals(this.f113260e[i])) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final ListIterator m70489e(int i) {
        return this.f113261f == 0 ? f113258g : new C20064a(i);
    }

    /* renamed from: g */
    public final void m70490g(Object[] objArr) {
        int i = this.f113261f;
        if (i > 0) {
            System.arraycopy(this.f113260e, 0, objArr, 0, i);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f113261f) {
            return this.f113260e[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.XSObjectList
    public int getLength() {
        return this.f113261f;
    }

    @Override // org.apache.xerces.p118xs.XSObjectList
    public XSObject item(int i) {
        if (i < 0 || i >= this.f113261f) {
            return null;
        }
        return this.f113260e[i];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return m70489e(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator() {
        return m70489e(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        Object[] objArr = new Object[this.f113261f];
        m70490g(objArr);
        return objArr;
    }

    public XSObjectListImpl(XSObject[] xSObjectArr, int i) {
        this.f113260e = xSObjectArr;
        this.f113261f = i;
    }

    public void addXSObject(XSObject xSObject) {
        int i = this.f113261f;
        XSObject[] xSObjectArr = this.f113260e;
        if (i == xSObjectArr.length) {
            XSObject[] xSObjectArr2 = new XSObject[i + 4];
            System.arraycopy(xSObjectArr, 0, xSObjectArr2, 0, i);
            this.f113260e = xSObjectArr2;
        }
        XSObject[] xSObjectArr3 = this.f113260e;
        int i2 = this.f113261f;
        this.f113261f = i2 + 1;
        xSObjectArr3[i2] = xSObject;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        if (i >= 0 && i < this.f113261f) {
            return m70489e(i);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f113261f) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f113261f);
        }
        m70490g(objArr);
        int length = objArr.length;
        int i = this.f113261f;
        if (length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
