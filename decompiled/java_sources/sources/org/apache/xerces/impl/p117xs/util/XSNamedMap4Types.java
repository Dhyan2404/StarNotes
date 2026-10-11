package org.apache.xerces.impl.p117xs.util;

import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public final class XSNamedMap4Types extends XSNamedMapImpl {

    /* renamed from: k */
    public final short f113249k;

    public XSNamedMap4Types(String str, SymbolHash symbolHash, short s) {
        super(str, symbolHash);
        this.f113249k = s;
    }

    @Override // org.apache.xerces.impl.p117xs.util.XSNamedMapImpl, org.apache.xerces.p118xs.XSNamedMap
    public synchronized int getLength() {
        if (this.f113254i == -1) {
            int i = 0;
            for (int i2 = 0; i2 < this.f113251f; i2++) {
                i += this.f113252g[i2].getLength();
            }
            XSObject[] xSObjectArr = new XSObject[i];
            int i3 = 0;
            for (int i4 = 0; i4 < this.f113251f; i4++) {
                i3 += this.f113252g[i4].getValues(xSObjectArr, i3);
            }
            this.f113254i = 0;
            this.f113253h = new XSObject[i];
            for (int i5 = 0; i5 < i; i5++) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) xSObjectArr[i5];
                if (xSTypeDefinition.getTypeCategory() == this.f113249k) {
                    XSObject[] xSObjectArr2 = this.f113253h;
                    int i6 = this.f113254i;
                    this.f113254i = i6 + 1;
                    xSObjectArr2[i6] = xSTypeDefinition;
                }
            }
        }
        return this.f113254i;
    }

    @Override // org.apache.xerces.impl.p117xs.util.XSNamedMapImpl, org.apache.xerces.p118xs.XSNamedMap
    public synchronized XSObject item(int i) {
        if (this.f113253h == null) {
            getLength();
        }
        if (i >= 0 && i < this.f113254i) {
            return this.f113253h[i];
        }
        return null;
    }

    @Override // org.apache.xerces.impl.p117xs.util.XSNamedMapImpl, org.apache.xerces.p118xs.XSNamedMap
    public XSObject itemByName(String str, String str2) {
        for (int i = 0; i < this.f113251f; i++) {
            if (XSNamedMapImpl.m70484a(str, this.f113250e[i])) {
                XSTypeDefinition xSTypeDefinition = (XSTypeDefinition) this.f113252g[i].get(str2);
                if (xSTypeDefinition == null || xSTypeDefinition.getTypeCategory() != this.f113249k) {
                    return null;
                }
                return xSTypeDefinition;
            }
        }
        return null;
    }

    public XSNamedMap4Types(String[] strArr, SymbolHash[] symbolHashArr, int i, short s) {
        super(strArr, symbolHashArr, i);
        this.f113249k = s;
    }
}
