package org.apache.xerces.impl.dtd.models;

/* loaded from: classes13.dex */
public abstract class CMNode {

    /* renamed from: a */
    public final int f112232a;

    /* renamed from: b */
    public CMStateSet f112233b = null;

    /* renamed from: c */
    public CMStateSet f112234c = null;

    /* renamed from: d */
    public CMStateSet f112235d = null;

    /* renamed from: e */
    public int f112236e = -1;

    /* renamed from: f */
    public boolean f112237f = false;

    public CMNode(int i) {
        this.f112232a = i;
    }

    /* renamed from: a */
    public final void m69913a(CMStateSet cMStateSet) {
        this.f112234c = cMStateSet;
    }

    public abstract void calcFirstPos(CMStateSet cMStateSet);

    public abstract void calcLastPos(CMStateSet cMStateSet);

    public final CMStateSet firstPos() {
        if (this.f112233b == null) {
            CMStateSet cMStateSet = new CMStateSet(this.f112236e);
            this.f112233b = cMStateSet;
            calcFirstPos(cMStateSet);
        }
        return this.f112233b;
    }

    public boolean isCompactedForUPA() {
        return this.f112237f;
    }

    public abstract boolean isNullable();

    public final CMStateSet lastPos() {
        if (this.f112235d == null) {
            CMStateSet cMStateSet = new CMStateSet(this.f112236e);
            this.f112235d = cMStateSet;
            calcLastPos(cMStateSet);
        }
        return this.f112235d;
    }

    public void setIsCompactUPAModel(boolean z) {
        this.f112237f = z;
    }

    public final void setMaxStates(int i) {
        this.f112236e = i;
    }

    public final int type() {
        return this.f112232a;
    }
}
