package com.sunia.HTREnginev2;

import java.util.AbstractList;
import org.apache.xerces.p118xs.StringList;

/* loaded from: classes13.dex */
public final class jlk extends AbstractList implements StringList {

    /* renamed from: e */
    public final String[] f74445e;

    /* renamed from: f */
    public final int f74446f;

    /* renamed from: g */
    public final int f74447g;

    public jlk(String[] strArr, boolean z) {
        this.f74445e = strArr;
        this.f74446f = strArr.length >> 1;
        this.f74447g = !z ? 1 : 0;
    }

    @Override // org.apache.xerces.p118xs.StringList
    public boolean contains(String str) {
        if (str == null) {
            for (int i = 0; i < this.f74446f; i++) {
                if (this.f74445e[(i << 1) + this.f74447g] == null) {
                    return true;
                }
            }
        } else {
            for (int i2 = 0; i2 < this.f74446f; i2++) {
                if (str.equals(this.f74445e[(i2 << 1) + this.f74447g])) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f74446f) {
            return this.f74445e[(i << 1) + this.f74447g];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.StringList
    public int getLength() {
        return this.f74446f;
    }

    @Override // org.apache.xerces.p118xs.StringList
    public String item(int i) {
        if (i < 0 || i >= this.f74446f) {
            return null;
        }
        return this.f74445e[(i << 1) + this.f74447g];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }
}
