package org.apache.xerces.impl.p117xs.util;

import java.lang.reflect.Array;
import java.util.AbstractList;
import org.apache.xerces.p118xs.datatypes.ObjectList;

/* loaded from: classes13.dex */
public final class ObjectListImpl extends AbstractList implements ObjectList {
    public static final ObjectListImpl EMPTY_LIST = new ObjectListImpl(new Object[0], 0);

    /* renamed from: e */
    public final Object[] f113232e;

    /* renamed from: f */
    public final int f113233f;

    public ObjectListImpl(Object[] objArr, int i) {
        this.f113232e = objArr;
        this.f113233f = i;
    }

    /* renamed from: a */
    public final void m70482a(Object[] objArr) {
        int i = this.f113233f;
        if (i > 0) {
            System.arraycopy(this.f113232e, 0, objArr, 0, i);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List, org.apache.xerces.p118xs.datatypes.ObjectList
    public boolean contains(Object obj) {
        if (obj == null) {
            for (int i = 0; i < this.f113233f; i++) {
                if (this.f113232e[i] == null) {
                    return true;
                }
            }
        } else {
            for (int i2 = 0; i2 < this.f113233f; i2++) {
                if (obj.equals(this.f113232e[i2])) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f113233f) {
            return this.f113232e[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.datatypes.ObjectList
    public int getLength() {
        return this.f113233f;
    }

    @Override // org.apache.xerces.p118xs.datatypes.ObjectList
    public Object item(int i) {
        if (i < 0 || i >= this.f113233f) {
            return null;
        }
        return this.f113232e[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        Object[] objArr = new Object[this.f113233f];
        m70482a(objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f113233f) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f113233f);
        }
        m70482a(objArr);
        int length = objArr.length;
        int i = this.f113233f;
        if (length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
