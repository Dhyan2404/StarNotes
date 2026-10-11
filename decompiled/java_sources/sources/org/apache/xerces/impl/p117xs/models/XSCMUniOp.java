package org.apache.xerces.impl.p117xs.models;

import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMStateSet;

/* loaded from: classes13.dex */
public class XSCMUniOp extends CMNode {

    /* renamed from: g */
    public CMNode f112985g;

    public XSCMUniOp(int i, CMNode cMNode) {
        super(i);
        if (type() != 5 && type() != 4 && type() != 6) {
            throw new RuntimeException("ImplementationMessages.VAL_UST");
        }
        this.f112985g = cMNode;
    }

    /* renamed from: b */
    public final CMNode m70287b() {
        return this.f112985g;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        cMStateSet.setTo(this.f112985g.firstPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        cMStateSet.setTo(this.f112985g.lastPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        if (type() == 6) {
            return this.f112985g.isNullable();
        }
        return true;
    }
}
