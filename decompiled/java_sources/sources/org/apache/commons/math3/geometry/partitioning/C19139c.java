package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;

/* renamed from: org.apache.commons.math3.geometry.partitioning.c */
/* loaded from: classes12.dex */
public class C19139c<S extends Space> implements BSPTreeVisitor<S> {

    /* renamed from: a */
    public double f108384a = 0.0d;

    /* renamed from: a */
    public double m67727a() {
        return this.f108384a;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitInternalNode(BSPTree<S> bSPTree) {
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        if (boundaryAttribute.getPlusOutside() != null) {
            this.f108384a += boundaryAttribute.getPlusOutside().getSize();
        }
        if (boundaryAttribute.getPlusInside() != null) {
            this.f108384a += boundaryAttribute.getPlusInside().getSize();
        }
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitLeafNode(BSPTree<S> bSPTree) {
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
        return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
    }
}
