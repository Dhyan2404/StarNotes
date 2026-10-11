package org.apache.xerces.impl.p117xs.util;

import java.util.AbstractList;
import org.apache.xerces.p118xs.ShortList;
import org.apache.xerces.p118xs.XSException;

/* loaded from: classes13.dex */
public final class ShortListImpl extends AbstractList implements ShortList {
    public static final ShortListImpl EMPTY_LIST = new ShortListImpl(new short[0], 0);

    /* renamed from: e */
    public final short[] f113234e;

    /* renamed from: f */
    public final int f113235f;

    public ShortListImpl(short[] sArr, int i) {
        this.f113234e = sArr;
        this.f113235f = i;
    }

    @Override // org.apache.xerces.p118xs.ShortList
    public boolean contains(short s) {
        for (int i = 0; i < this.f113235f; i++) {
            if (this.f113234e[i] == s) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ShortList)) {
            return false;
        }
        ShortList shortList = (ShortList) obj;
        if (this.f113235f != shortList.getLength()) {
            return false;
        }
        for (int i = 0; i < this.f113235f; i++) {
            if (this.f113234e[i] != shortList.item(i)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f113235f) {
            return new Short(this.f113234e[i]);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.ShortList
    public int getLength() {
        return this.f113235f;
    }

    @Override // org.apache.xerces.p118xs.ShortList
    public short item(int i) throws XSException {
        if (i < 0 || i >= this.f113235f) {
            throw new XSException((short) 2, null);
        }
        return this.f113234e[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }
}
