package com.sun.org.apache.xerces.internal.impl.p055xs.util;

import com.sun.org.apache.xerces.internal.p056xs.XSObject;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.SymbolHash;

/* loaded from: classes10.dex */
public class XSNamedMap4Types extends XSNamedMapImpl {
    short fType;

    public XSNamedMap4Types(String str, SymbolHash symbolHash, short s) {
        super(str, symbolHash);
        this.fType = s;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMapImpl, com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
    public synchronized int getLength() {
        if (this.fLength == -1) {
            int i = 0;
            for (int i2 = 0; i2 < this.fNSNum; i2++) {
                i += this.fMaps[i2].getLength();
            }
            XSObject[] xSObjectArr = new XSObject[i];
            int i3 = 0;
            for (int i4 = 0; i4 < this.fNSNum; i4++) {
                i3 += this.fMaps[i4].getValues(xSObjectArr, i3);
            }
            this.fLength = 0;
            this.fArray = new XSObject[i];
            for (int i5 = 0; i5 < i; i5++) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) xSObjectArr[i5];
                if (xSTypeDefinition.getTypeCategory() == this.fType) {
                    XSObject[] xSObjectArr2 = this.fArray;
                    int i6 = this.fLength;
                    this.fLength = i6 + 1;
                    xSObjectArr2[i6] = xSTypeDefinition;
                }
            }
        }
        return this.fLength;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMapImpl, com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
    public synchronized XSObject item(int i) {
        if (this.fArray == null) {
            getLength();
        }
        if (i >= 0 && i < this.fLength) {
            return this.fArray[i];
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMapImpl, com.sun.org.apache.xerces.internal.p056xs.XSNamedMap
    public XSObject itemByName(String str, String str2) {
        if (str != null) {
            str = str.intern();
        }
        for (int i = 0; i < this.fNSNum; i++) {
            if (str == this.fNamespaces[i]) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) this.fMaps[i].get(str2);
                if (xSTypeDefinition.getTypeCategory() == this.fType) {
                    return xSTypeDefinition;
                }
                return null;
            }
        }
        return null;
    }

    public XSNamedMap4Types(String[] strArr, SymbolHash[] symbolHashArr, int i, short s) {
        super(strArr, symbolHashArr, i);
        this.fType = s;
    }
}
