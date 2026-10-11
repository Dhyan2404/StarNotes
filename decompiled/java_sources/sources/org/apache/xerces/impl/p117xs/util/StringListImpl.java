package org.apache.xerces.impl.p117xs.util;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Vector;
import org.apache.xerces.p118xs.StringList;

/* loaded from: classes13.dex */
public final class StringListImpl extends AbstractList implements StringList {
    public static final StringListImpl EMPTY_LIST = new StringListImpl(new String[0], 0);

    /* renamed from: e */
    public final String[] f113241e;

    /* renamed from: f */
    public final int f113242f;

    /* renamed from: g */
    public final Vector f113243g;

    public StringListImpl(Vector vector) {
        this.f113243g = vector;
        this.f113242f = vector == null ? 0 : vector.size();
        this.f113241e = null;
    }

    /* renamed from: a */
    public final void m70483a(Object[] objArr) {
        int i = this.f113242f;
        if (i > 0) {
            System.arraycopy(this.f113241e, 0, objArr, 0, i);
        }
    }

    @Override // org.apache.xerces.p118xs.StringList
    public boolean contains(String str) {
        Vector vector = this.f113243g;
        if (vector != null) {
            return vector.contains(str);
        }
        if (str == null) {
            for (int i = 0; i < this.f113242f; i++) {
                if (this.f113241e[i] == null) {
                    return true;
                }
            }
        } else {
            for (int i2 = 0; i2 < this.f113242f; i2++) {
                if (str.equals(this.f113241e[i2])) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f113242f) {
            Vector vector = this.f113243g;
            return vector != null ? vector.elementAt(i) : this.f113241e[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.StringList
    public int getLength() {
        return this.f113242f;
    }

    @Override // org.apache.xerces.p118xs.StringList
    public String item(int i) {
        if (i < 0 || i >= this.f113242f) {
            return null;
        }
        Vector vector = this.f113243g;
        return vector != null ? (String) vector.elementAt(i) : this.f113241e[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        Vector vector = this.f113243g;
        if (vector != null) {
            return vector.toArray();
        }
        Object[] objArr = new Object[this.f113242f];
        m70483a(objArr);
        return objArr;
    }

    public StringListImpl(String[] strArr, int i) {
        this.f113241e = strArr;
        this.f113242f = i;
        this.f113243g = null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        Vector vector = this.f113243g;
        if (vector != null) {
            return vector.toArray(objArr);
        }
        if (objArr.length < this.f113242f) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f113242f);
        }
        m70483a(objArr);
        int length = objArr.length;
        int i = this.f113242f;
        if (length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
