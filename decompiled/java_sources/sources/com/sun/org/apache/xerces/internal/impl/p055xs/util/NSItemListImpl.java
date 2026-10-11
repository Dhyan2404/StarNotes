package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItemList;
import java.util.Vector;

/* loaded from: classes10.dex */
public class NSItemListImpl implements XSNamespaceItemList {
    private XSNamespaceItem[] fArray;
    private int fLength;
    private Vector fVector;

    public NSItemListImpl(Vector vector) {
        this.fArray = null;
        this.fLength = 0;
        this.fVector = vector;
        this.fLength = vector.size();
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItemList
    public int getLength() {
        return this.fLength;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItemList
    public XSNamespaceItem item(int i) {
        if (i < 0 || i >= this.fLength) {
            return null;
        }
        Vector vector = this.fVector;
        return vector != null ? (XSNamespaceItem) vector.elementAt(i) : this.fArray[i];
    }

    public NSItemListImpl(XSNamespaceItem[] xSNamespaceItemArr, int i) {
        this.fArray = xSNamespaceItemArr;
        this.fLength = i;
    }
}
