package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.util.FastMath;

/* renamed from: org.apache.commons.math3.geometry.partitioning.b */
/* loaded from: classes12.dex */
public class C19138b<S extends Space, T extends Space> implements BSPTreeVisitor<S> {

    /* renamed from: a */
    public final Point<S> f108380a;

    /* renamed from: b */
    public Point<S> f108381b = null;

    /* renamed from: c */
    public BSPTree<S> f108382c = null;

    /* renamed from: d */
    public double f108383d = Double.POSITIVE_INFINITY;

    public C19138b(Point<S> point) {
        this.f108380a = point;
    }

    /* renamed from: a */
    public final void m67722a(SubHyperplane<S> subHyperplane, List<Region<T>> list) {
        Region<T> remainingRegion;
        if (subHyperplane == null || (remainingRegion = ((AbstractSubHyperplane) subHyperplane).getRemainingRegion()) == null) {
            return;
        }
        list.add(remainingRegion);
    }

    /* renamed from: b */
    public final boolean m67723b(Point<S> point, Hyperplane<S> hyperplane, Region<T> region) {
        return region.checkPoint(((Embedding) hyperplane).toSubSpace(point)) != Region.Location.OUTSIDE;
    }

    /* renamed from: c */
    public final List<Region<T>> m67724c(BSPTree<S> bSPTree) {
        ArrayList arrayList = new ArrayList(2);
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        m67722a(boundaryAttribute.getPlusInside(), arrayList);
        m67722a(boundaryAttribute.getPlusOutside(), arrayList);
        return arrayList;
    }

    /* renamed from: d */
    public BoundaryProjection<S> m67725d() {
        double copySign = FastMath.copySign(this.f108383d, ((Boolean) this.f108382c.getAttribute()).booleanValue() ? -1.0d : 1.0d);
        this.f108383d = copySign;
        return new BoundaryProjection<>(this.f108380a, this.f108381b, copySign);
    }

    /* renamed from: e */
    public final Point<S> m67726e(Point<S> point, Hyperplane<S> hyperplane, Region<T> region) {
        Embedding embedding = (Embedding) hyperplane;
        BoundaryProjection<T> projectToBoundary = region.projectToBoundary(embedding.toSubSpace(point));
        if (projectToBoundary.getProjected() == null) {
            return null;
        }
        return embedding.toSpace(projectToBoundary.getProjected());
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitInternalNode(BSPTree<S> bSPTree) {
        Hyperplane<S> hyperplane = bSPTree.getCut().getHyperplane();
        double offset = hyperplane.getOffset(this.f108380a);
        if (FastMath.abs(offset) < this.f108383d) {
            Point<S> project = hyperplane.project(this.f108380a);
            List<Region<T>> m67724c = m67724c(bSPTree);
            boolean z = false;
            for (Region<T> region : m67724c) {
                if (!z && m67723b(project, hyperplane, region)) {
                    this.f108381b = project;
                    this.f108383d = FastMath.abs(offset);
                    z = true;
                }
            }
            if (z) {
                return;
            }
            Iterator<Region<T>> it2 = m67724c.iterator();
            while (it2.hasNext()) {
                Point<S> m67726e = m67726e(project, hyperplane, it2.next());
                if (m67726e != null) {
                    double distance = this.f108380a.distance(m67726e);
                    if (distance < this.f108383d) {
                        this.f108381b = m67726e;
                        this.f108383d = distance;
                    }
                }
            }
        }
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitLeafNode(BSPTree<S> bSPTree) {
        if (this.f108382c == null) {
            this.f108382c = bSPTree;
        }
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public BSPTreeVisitor.Order visitOrder(BSPTree<S> bSPTree) {
        return bSPTree.getCut().getHyperplane().getOffset(this.f108380a) <= 0.0d ? BSPTreeVisitor.Order.MINUS_SUB_PLUS : BSPTreeVisitor.Order.PLUS_SUB_MINUS;
    }
}
