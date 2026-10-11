package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;

/* renamed from: org.apache.commons.math3.geometry.partitioning.a */
/* loaded from: classes12.dex */
public class C19137a<S extends Space> implements BSPTreeVisitor<S> {
    /* JADX WARN: Removed duplicated region for block: B:15:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004b  */
    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitInternalNode(org.apache.commons.math3.geometry.partitioning.BSPTree<S> r7) {
        /*
            r6 = this;
            org.apache.commons.math3.geometry.partitioning.d r6 = new org.apache.commons.math3.geometry.partitioning.d
            org.apache.commons.math3.geometry.partitioning.BSPTree r0 = r7.getPlus()
            org.apache.commons.math3.geometry.partitioning.SubHyperplane r1 = r7.getCut()
            org.apache.commons.math3.geometry.partitioning.SubHyperplane r1 = r1.copySelf()
            r6.<init>(r0, r1)
            boolean r0 = r6.m67736i()
            r1 = 0
            if (r0 == 0) goto L43
            org.apache.commons.math3.geometry.partitioning.d r0 = new org.apache.commons.math3.geometry.partitioning.d
            org.apache.commons.math3.geometry.partitioning.BSPTree r2 = r7.getMinus()
            org.apache.commons.math3.geometry.partitioning.SubHyperplane r3 = r6.m67734g()
            r0.<init>(r2, r3)
            boolean r2 = r0.m67735h()
            if (r2 == 0) goto L43
            org.apache.commons.math3.geometry.partitioning.SubHyperplane r2 = r0.m67733f()
            org.apache.commons.math3.geometry.partitioning.NodesSet r3 = new org.apache.commons.math3.geometry.partitioning.NodesSet
            r3.<init>()
            org.apache.commons.math3.geometry.partitioning.NodesSet r0 = r0.m67731d()
            r3.addAll(r0)
            org.apache.commons.math3.geometry.partitioning.NodesSet r0 = r6.m67732e()
            r3.addAll(r0)
            goto L45
        L43:
            r2 = r1
            r3 = r2
        L45:
            boolean r0 = r6.m67735h()
            if (r0 == 0) goto L77
            org.apache.commons.math3.geometry.partitioning.d r0 = new org.apache.commons.math3.geometry.partitioning.d
            org.apache.commons.math3.geometry.partitioning.BSPTree r4 = r7.getMinus()
            org.apache.commons.math3.geometry.partitioning.SubHyperplane r5 = r6.m67733f()
            r0.<init>(r4, r5)
            boolean r4 = r0.m67736i()
            if (r4 == 0) goto L77
            org.apache.commons.math3.geometry.partitioning.SubHyperplane r1 = r0.m67734g()
            if (r3 != 0) goto L69
            org.apache.commons.math3.geometry.partitioning.NodesSet r3 = new org.apache.commons.math3.geometry.partitioning.NodesSet
            r3.<init>()
        L69:
            org.apache.commons.math3.geometry.partitioning.NodesSet r0 = r0.m67732e()
            r3.addAll(r0)
            org.apache.commons.math3.geometry.partitioning.NodesSet r6 = r6.m67731d()
            r3.addAll(r6)
        L77:
            if (r3 == 0) goto L87
            org.apache.commons.math3.geometry.partitioning.BSPTree r6 = r7.getParent()
        L7d:
            if (r6 == 0) goto L87
            r3.add(r6)
            org.apache.commons.math3.geometry.partitioning.BSPTree r6 = r6.getParent()
            goto L7d
        L87:
            org.apache.commons.math3.geometry.partitioning.BoundaryAttribute r6 = new org.apache.commons.math3.geometry.partitioning.BoundaryAttribute
            r6.<init>(r2, r1, r3)
            r7.setAttribute(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.geometry.partitioning.C19137a.visitInternalNode(org.apache.commons.math3.geometry.partitioning.BSPTree):void");
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitLeafNode(BSPTree<S> bSPTree) {
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
        return BSPTreeVisitor.Order.PLUS_MINUS_SUB;
    }
}
