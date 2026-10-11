package com.sun.org.apache.xerces.internal.impl.dtd.models;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xerces.internal.xni.QName;

/* loaded from: classes10.dex */
public class CMLeaf extends CMNode {
    private QName fElement;
    private int fPosition;

    public CMLeaf(QName qName, int i) {
        super(0);
        QName qName2 = new QName();
        this.fElement = qName2;
        this.fPosition = -1;
        qName2.setValues(qName);
        this.fPosition = i;
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

    public final QName getElement() {
        return this.fElement;
    }

    public final int getPosition() {
        return this.fPosition;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.dtd.models.CMNode
    public boolean isNullable() {
        return this.fPosition == -1;
    }

    public final void setPosition(int i) {
        this.fPosition = i;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(this.fElement.toString());
        stringBuffer.append(" (");
        stringBuffer.append(this.fElement.uri);
        stringBuffer.append(',');
        stringBuffer.append(this.fElement.localpart);
        stringBuffer.append(')');
        if (this.fPosition >= 0) {
            stringBuffer.append(" (Pos:" + new Integer(this.fPosition).toString() + MotionUtils.f31762d);
        }
        return stringBuffer.toString();
    }

    public CMLeaf(QName qName) {
        super(0);
        QName qName2 = new QName();
        this.fElement = qName2;
        this.fPosition = -1;
        qName2.setValues(qName);
    }
}
