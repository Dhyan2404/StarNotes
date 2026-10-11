package org.apache.xerces.impl.dtd.models;

/* loaded from: classes13.dex */
public class CMUniOp extends CMNode {

    /* renamed from: g */
    public final CMNode f112243g;

    public CMUniOp(int i, CMNode cMNode) {
        super(i);
        if (type() != 1 && type() != 2 && type() != 3) {
            throw new RuntimeException("ImplementationMessages.VAL_UST");
        }
        this.f112243g = cMNode;
    }

    /* renamed from: b */
    public final CMNode m69915b() {
        return this.f112243g;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        cMStateSet.setTo(this.f112243g.firstPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        cMStateSet.setTo(this.f112243g.lastPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        if (type() == 3) {
            return this.f112243g.isNullable();
        }
        return true;
    }
}
