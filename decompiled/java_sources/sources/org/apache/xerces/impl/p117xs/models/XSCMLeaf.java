package org.apache.xerces.impl.p117xs.models;

import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMStateSet;

/* loaded from: classes13.dex */
public class XSCMLeaf extends CMNode {

    /* renamed from: g */
    public final Object f112980g;

    /* renamed from: h */
    public int f112981h;

    /* renamed from: i */
    public int f112982i;

    public XSCMLeaf(int i, Object obj, int i2, int i3) {
        super(i);
        this.f112980g = obj;
        this.f112981h = i2;
        this.f112982i = i3;
    }

    /* renamed from: b */
    public final Object m70281b() {
        return this.f112980g;
    }

    /* renamed from: c */
    public final int m70282c() {
        return this.f112981h;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        int i = this.f112982i;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        int i = this.f112982i;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    /* renamed from: d */
    public final int m70283d() {
        return this.f112982i;
    }

    /* renamed from: e */
    public final void m70284e(int i) {
        this.f112982i = i;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        return this.f112982i == -1;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.f112980g.toString());
        if (this.f112982i >= 0) {
            stringBuffer.append(" (Pos:");
            stringBuffer.append(Integer.toString(this.f112982i));
            stringBuffer.append(')');
        }
        return stringBuffer.toString();
    }
}
