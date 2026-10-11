package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.p056xs.ShortList;
import com.sun.org.apache.xerces.internal.p056xs.XSException;

/* loaded from: classes10.dex */
public class ShortListImpl implements ShortList {
    private short[] fArray;
    private int fLength;

    public ShortListImpl(short[] sArr, int i) {
        this.fArray = sArr;
        this.fLength = i;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.ShortList
    public boolean contains(short s) {
        for (int i = 0; i < this.fLength; i++) {
            if (this.fArray[i] == s) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ShortList)) {
            return false;
        }
        ShortList shortList = (ShortList) obj;
        if (this.fLength != shortList.getLength()) {
            return false;
        }
        for (int i = 0; i < this.fLength; i++) {
            if (this.fArray[i] != shortList.item(i)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.ShortList
    public int getLength() {
        return this.fLength;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.ShortList
    public short item(int i) throws XSException {
        if (i < 0 || i >= this.fLength) {
            throw new XSException((short) 2, null);
        }
        return this.fArray[i];
    }
}
