package org.apache.xerces.impl.p117xs.models;

import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMStateSet;

/* loaded from: classes13.dex */
public class XSCMBinOp extends CMNode {

    /* renamed from: g */
    public CMNode f112978g;

    /* renamed from: h */
    public CMNode f112979h;

    public XSCMBinOp(int i, CMNode cMNode, CMNode cMNode2) {
        super(i);
        if (type() != 101 && type() != 102) {
            throw new RuntimeException("ImplementationMessages.VAL_BST");
        }
        this.f112978g = cMNode;
        this.f112979h = cMNode2;
    }

    /* renamed from: b */
    public final CMNode m70279b() {
        return this.f112978g;
    }

    /* renamed from: c */
    public final CMNode m70280c() {
        return this.f112979h;
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcFirstPos(CMStateSet cMStateSet) {
        if (type() == 101) {
            cMStateSet.setTo(this.f112978g.firstPos());
        } else {
            if (type() != 102) {
                throw new RuntimeException("ImplementationMessages.VAL_BST");
            }
            cMStateSet.setTo(this.f112978g.firstPos());
            if (!this.f112978g.isNullable()) {
                return;
            }
        }
        cMStateSet.union(this.f112979h.firstPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public void calcLastPos(CMStateSet cMStateSet) {
        CMNode cMNode;
        if (type() == 101) {
            cMStateSet.setTo(this.f112978g.lastPos());
            cMNode = this.f112979h;
        } else {
            if (type() != 102) {
                throw new RuntimeException("ImplementationMessages.VAL_BST");
            }
            cMStateSet.setTo(this.f112979h.lastPos());
            if (!this.f112979h.isNullable()) {
                return;
            } else {
                cMNode = this.f112978g;
            }
        }
        cMStateSet.union(cMNode.lastPos());
    }

    @Override // org.apache.xerces.impl.dtd.models.CMNode
    public boolean isNullable() {
        if (type() == 101) {
            return this.f112978g.isNullable() || this.f112979h.isNullable();
        }
        if (type() == 102) {
            return this.f112978g.isNullable() && this.f112979h.isNullable();
        }
        throw new RuntimeException("ImplementationMessages.VAL_BST");
    }
}
