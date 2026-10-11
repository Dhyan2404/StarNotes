package com.sun.org.apache.xerces.internal.impl.dtd.models;

/* loaded from: classes10.dex */
public abstract class CMNode {
    private CMStateSet fFirstPos = null;
    private CMStateSet fFollowPos = null;
    private CMStateSet fLastPos = null;
    private int fMaxStates = -1;
    private int fType;

    public CMNode(int i) {
        this.fType = i;
    }

    public abstract void calcFirstPos(CMStateSet cMStateSet);

    public abstract void calcLastPos(CMStateSet cMStateSet);

    public final CMStateSet firstPos() {
        if (this.fFirstPos == null) {
            CMStateSet cMStateSet = new CMStateSet(this.fMaxStates);
            this.fFirstPos = cMStateSet;
            calcFirstPos(cMStateSet);
        }
        return this.fFirstPos;
    }

    public abstract boolean isNullable();

    public final CMStateSet lastPos() {
        if (this.fLastPos == null) {
            CMStateSet cMStateSet = new CMStateSet(this.fMaxStates);
            this.fLastPos = cMStateSet;
            calcLastPos(cMStateSet);
        }
        return this.fLastPos;
    }

    public final void setFollowPos(CMStateSet cMStateSet) {
        this.fFollowPos = cMStateSet;
    }

    public final void setMaxStates(int i) {
        this.fMaxStates = i;
    }

    public final int type() {
        return this.fType;
    }
}
