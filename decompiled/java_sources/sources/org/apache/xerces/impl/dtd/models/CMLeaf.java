package org.apache.xerces.impl.dtd.models;

import org.apache.xerces.xni.QName;

/* loaded from: classes13.dex */
public class CMLeaf extends CMNode {

    /* renamed from: g */
    public final QName f112230g;

    /* renamed from: h */
    public int f112231h;

    public CMLeaf(QName qName) {
        super(0);
        QName qName2 = new QName();
        this.f112230g = qName2;
        this.f112231h = -1;
        qName2.setValues(qName);
    }

    /* renamed from: b */
    public final QName m69910b() {
        return this.f112230g;
    }

    /* renamed from: c */
    public final int m69911c() {
        return this.f112231h;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        int i = this.f112231h;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        int i = this.f112231h;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    /* renamed from: d */
    public final void m69912d(int i) {
        this.f112231h = i;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        return this.f112231h == -1;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.f112230g.toString());
        stringBuffer.append(" (");
        stringBuffer.append(this.f112230g.uri);
        stringBuffer.append(',');
        stringBuffer.append(this.f112230g.localpart);
        stringBuffer.append(')');
        if (this.f112231h >= 0) {
            stringBuffer.append(" (Pos:");
            stringBuffer.append(Integer.toString(this.f112231h));
            stringBuffer.append(')');
        }
        return stringBuffer.toString();
    }

    public CMLeaf(QName qName, int i) {
        super(0);
        QName qName2 = new QName();
        this.f112230g = qName2;
        this.f112231h = -1;
        qName2.setValues(qName);
        this.f112231h = i;
    }
}
