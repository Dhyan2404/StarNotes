package org.apache.xerces.impl.dtd.models;

/* loaded from: classes13.dex */
public class CMAny extends CMNode {

    /* renamed from: g */
    public final int f112225g;

    /* renamed from: h */
    public final String f112226h;

    /* renamed from: i */
    public int f112227i;

    public CMAny(int i, String str, int i2) {
        super(i);
        this.f112225g = i;
        this.f112226h = str;
        this.f112227i = i2;
    }

    /* renamed from: b */
    public final int m69904b() {
        return this.f112227i;
    }

    /* renamed from: c */
    public final int m69905c() {
        return this.f112225g;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        int i = this.f112227i;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        int i = this.f112227i;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    /* renamed from: d */
    public final String m69906d() {
        return this.f112226h;
    }

    /* renamed from: e */
    public final void m69907e(int i) {
        this.f112227i = i;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        return this.f112227i == -1;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append("##any:uri=");
        stringBuffer.append(this.f112226h);
        stringBuffer.append(')');
        if (this.f112227i >= 0) {
            stringBuffer.append(" (Pos:");
            stringBuffer.append(Integer.toString(this.f112227i));
            stringBuffer.append(')');
        }
        return stringBuffer.toString();
    }
}
