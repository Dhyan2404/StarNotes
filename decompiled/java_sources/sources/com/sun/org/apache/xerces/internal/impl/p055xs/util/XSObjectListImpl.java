package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.p056xs.XSObject;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;

/* loaded from: classes10.dex */
public class XSObjectListImpl implements XSObjectList {
    private static final int DEFAULT_SIZE = 4;
    public static final XSObjectList EMPTY_LIST = new XSObjectList() { // from class: com.sun.org.apache.xerces.internal.impl.xs.util.XSObjectListImpl.1
        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObjectList
        public int getLength() {
            return 0;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSObjectList
        public XSObject item(int i) {
            return null;
        }
    };
    private XSObject[] fArray;
    private int fLength;

    public XSObjectListImpl() {
        this.fArray = new XSObject[4];
        this.fLength = 0;
    }

    public void add(XSObject xSObject) {
        int i = this.fLength;
        XSObject[] xSObjectArr = this.fArray;
        if (i == xSObjectArr.length) {
            XSObject[] xSObjectArr2 = new XSObject[i + 4];
            System.arraycopy(xSObjectArr, 0, xSObjectArr2, 0, i);
            this.fArray = xSObjectArr2;
        }
        XSObject[] xSObjectArr3 = this.fArray;
        int i2 = this.fLength;
        this.fLength = i2 + 1;
        xSObjectArr3[i2] = xSObject;
    }

    public void clear() {
        for (int i = 0; i < this.fLength; i++) {
            this.fArray[i] = null;
        }
        this.fArray = null;
        this.fLength = 0;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObjectList
    public int getLength() {
        return this.fLength;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObjectList
    public XSObject item(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        return this.fArray[i];
    }

    public XSObjectListImpl(XSObject[] xSObjectArr, int i) {
        this.fArray = xSObjectArr;
        this.fLength = i;
    }

    public void add(int i, XSObject xSObject) {
        this.fArray[i] = xSObject;
    }
}
