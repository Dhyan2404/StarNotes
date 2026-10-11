package org.apache.xerces.impl.p117xs.util;

import java.lang.reflect.Array;
import java.util.AbstractList;
import org.apache.xerces.p118xs.LSInputList;
import org.w3c.dom.ls.LSInput;

/* loaded from: classes13.dex */
public final class LSInputListImpl extends AbstractList implements LSInputList {
    public static final LSInputListImpl EMPTY_LIST = new LSInputListImpl(new LSInput[0], 0);

    /* renamed from: e */
    public final LSInput[] f113230e;

    /* renamed from: f */
    public final int f113231f;

    public LSInputListImpl(LSInput[] lSInputArr, int i) {
        this.f113230e = lSInputArr;
        this.f113231f = i;
    }

    /* renamed from: a */
    public final void m70481a(Object[] objArr) {
        int i = this.f113231f;
        if (i > 0) {
            System.arraycopy(this.f113230e, 0, objArr, 0, i);
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f113231f) {
            return this.f113230e[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.LSInputList
    public int getLength() {
        return this.f113231f;
    }

    @Override // org.apache.xerces.p118xs.LSInputList
    public LSInput item(int i) {
        if (i < 0 || i >= this.f113231f) {
            return null;
        }
        return this.f113230e[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        Object[] objArr = new Object[this.f113231f];
        m70481a(objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f113231f) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f113231f);
        }
        m70481a(objArr);
        int length = objArr.length;
        int i = this.f113231f;
        if (length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
