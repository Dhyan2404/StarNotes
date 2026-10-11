package org.apache.xerces.impl.dtd.models;

/* loaded from: classes13.dex */
public class CMBinOp extends CMNode {

    /* renamed from: g */
    public final CMNode f112228g;

    /* renamed from: h */
    public final CMNode f112229h;

    public CMBinOp(int i, CMNode cMNode, CMNode cMNode2) {
        super(i);
        if (type() != 4 && type() != 5) {
            throw new RuntimeException("ImplementationMessages.VAL_BST");
        }
        this.f112228g = cMNode;
        this.f112229h = cMNode2;
    }

    /* renamed from: b */
    public final CMNode m69908b() {
        return this.f112228g;
    }

    /* renamed from: c */
    public final CMNode m69909c() {
        return this.f112229h;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        if (type() == 4) {
            cMStateSet.setTo(this.f112228g.firstPos());
        } else {
            if (type() != 5) {
                throw new RuntimeException("ImplementationMessages.VAL_BST");
            }
            cMStateSet.setTo(this.f112228g.firstPos());
            if (!this.f112228g.isNullable()) {
                return;
            }
        }
        cMStateSet.union(this.f112229h.firstPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        CMNode cMNode;
        if (type() == 4) {
            cMStateSet.setTo(this.f112228g.lastPos());
            cMNode = this.f112229h;
        } else {
            if (type() != 5) {
                throw new RuntimeException("ImplementationMessages.VAL_BST");
            }
            cMStateSet.setTo(this.f112229h.lastPos());
            if (!this.f112229h.isNullable()) {
                return;
            } else {
                cMNode = this.f112228g;
            }
        }
        cMStateSet.union(cMNode.lastPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        if (type() == 4) {
            return this.f112228g.isNullable() || this.f112229h.isNullable();
        }
        if (type() == 5) {
            return this.f112228g.isNullable() && this.f112229h.isNullable();
        }
        throw new RuntimeException("ImplementationMessages.VAL_BST");
    }
}
