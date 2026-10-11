package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.p056xs.XSNamedMap;
import com.sun.org.apache.xerces.internal.p056xs.XSObject;
import com.sun.org.apache.xerces.internal.util.SymbolHash;
import com.sun.org.apache.xerces.internal.xni.QName;

/* loaded from: classes10.dex */
public class XSNamedMapImpl implements XSNamedMap {
    public static final XSNamedMap EMPTY_MAP = new XSNamedMap() { // from class: com.sun.org.apache.xerces.internal.impl.xs.util.XSNamedMapImpl.1
        @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
        public int getLength() {
            return 0;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
        public XSObject item(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
        public XSObject itemByName(String str, String str2) {
            return null;
        }
    };
    XSObject[] fArray;
    int fLength;
    SymbolHash[] fMaps;
    int fNSNum;
    QName fName;
    String[] fNamespaces;

    public XSNamedMapImpl(String str, SymbolHash symbolHash) {
        this.fArray = null;
        this.fLength = -1;
        this.fName = new QName();
        this.fNamespaces = new String[]{str};
        this.fMaps = new SymbolHash[]{symbolHash};
        this.fNSNum = 1;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
    public synchronized int getLength() {
        if (this.fLength == -1) {
            this.fLength = 0;
            for (int i = 0; i < this.fNSNum; i++) {
                this.fLength += this.fMaps[i].getLength();
            }
        }
        return this.fLength;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
    public synchronized XSObject item(int i) {
        if (this.fArray == null) {
            getLength();
            this.fArray = new XSObject[this.fLength];
            int i2 = 0;
            for (int i3 = 0; i3 < this.fNSNum; i3++) {
                i2 += this.fMaps[i3].getValues(this.fArray, i2);
            }
        }
        if (i >= 0 && i < this.fLength) {
            return this.fArray[i];
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
    public XSObject itemByName(String str, String str2) {
        if (str != null) {
            str = str.intern();
        }
        for (int i = 0; i < this.fNSNum; i++) {
            if (str == this.fNamespaces[i]) {
                SymbolHash[] symbolHashArr = this.fMaps;
                if (symbolHashArr != null) {
                    return (XSObject) symbolHashArr[i].get(str2);
                }
                for (int i2 = 0; i2 < this.fLength; i2++) {
                    XSObject xSObject = this.fArray[i2];
                    if (xSObject.getName().equals(str2)) {
                        return xSObject;
                    }
                }
                return null;
            }
        }
        return null;
    }

    public XSNamedMapImpl(String[] strArr, SymbolHash[] symbolHashArr, int i) {
        this.fArray = null;
        this.fLength = -1;
        this.fName = new QName();
        this.fNamespaces = strArr;
        this.fMaps = symbolHashArr;
        this.fNSNum = i;
    }

    public XSNamedMapImpl(XSObject[] xSObjectArr, int i) {
        this.fArray = null;
        this.fLength = -1;
        this.fName = new QName();
        if (i == 0) {
            this.fNSNum = 0;
            this.fLength = 0;
            return;
        }
        this.fNamespaces = new String[]{xSObjectArr[0].getNamespace()};
        this.fMaps = null;
        this.fNSNum = 1;
        this.fArray = xSObjectArr;
        this.fLength = i;
    }
}
