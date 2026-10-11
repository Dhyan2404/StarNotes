package com.sun.org.apache.xerces.internal.impl.dtd.models;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes10.dex */
public class CMAny extends CMNode {
    private int fPosition;
    private int fType;
    private String fURI;

    public CMAny(int i, String str, int i2) {
        super(i);
        this.fType = i;
        this.fURI = str;
        this.fPosition = i2;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        int i = this.fPosition;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        int i = this.fPosition;
        if (i == -1) {
            cMStateSet.zeroBits();
        } else {
            cMStateSet.setBit(i);
        }
    }

    public final int getPosition() {
        return this.fPosition;
    }

    public final int getType() {
        return this.fType;
    }

    public final String getURI() {
        return this.fURI;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode
    public boolean isNullable() {
        return this.fPosition == -1;
    }

    public final void setPosition(int i) {
        this.fPosition = i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(MotionUtils.f31761c);
        stringBuffer.append("##any:uri=");
        stringBuffer.append(this.fURI);
        stringBuffer.append(')');
        if (this.fPosition >= 0) {
            stringBuffer.append(" (Pos:" + new Integer(this.fPosition).toString() + MotionUtils.f31762d);
        }
        return stringBuffer.toString();
    }
}
