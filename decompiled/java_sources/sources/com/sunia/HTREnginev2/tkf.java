package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.spherical.oned.Arc;
import org.apache.commons.math3.geometry.spherical.oned.ArcsSet;
import org.apache.commons.math3.geometry.spherical.oned.S1Point;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;
import org.apache.commons.math3.geometry.spherical.twod.Circle;
import org.apache.commons.math3.geometry.spherical.twod.Edge;
import org.apache.commons.math3.geometry.spherical.twod.S2Point;
import org.apache.commons.math3.geometry.spherical.twod.Sphere2D;
import org.apache.commons.math3.geometry.spherical.twod.SubCircle;
import org.apache.commons.math3.geometry.spherical.twod.Vertex;

/* loaded from: classes12.dex */
public class tkf implements BSPTreeVisitor<Sphere2D> {

    /* renamed from: a */
    public final BSPTree<Sphere2D> f85391a;

    /* renamed from: b */
    public final double f85392b;

    /* renamed from: c */
    public final Map<Edge, BSPTree<Sphere2D>> f85393c = new IdentityHashMap();

    /* renamed from: d */
    public final Map<BSPTree<Sphere2D>, List<Edge>> f85394d = new IdentityHashMap();

    public tkf(BSPTree<Sphere2D> bSPTree, double d) {
        this.f85391a = bSPTree;
        this.f85392b = d;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.commons.math3.geometry.spherical.twod.S2Point] */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.commons.math3.geometry.spherical.twod.S2Point] */
    /* renamed from: a */
    public final void m57384a(SubCircle subCircle, boolean z, BSPTree<Sphere2D> bSPTree) {
        Circle circle = (Circle) subCircle.getHyperplane();
        for (Arc arc : ((ArcsSet) subCircle.getRemainingRegion()).asList()) {
            Vertex vertex = new Vertex(circle.toSpace((Point<Sphere1D>) new S1Point(arc.getInf())));
            Vertex vertex2 = new Vertex(circle.toSpace((Point<Sphere1D>) new S1Point(arc.getSup())));
            vertex.m67805a(circle);
            vertex2.m67805a(circle);
            Edge edge = z ? new Edge(vertex2, vertex, arc.getSize(), circle.getReverse()) : new Edge(vertex, vertex2, arc.getSize(), circle);
            this.f85393c.put(edge, bSPTree);
            this.f85394d.get(bSPTree).add(edge);
        }
    }

    /* renamed from: b */
    public List<Edge> m57385b() throws MathIllegalStateException {
        for (Edge edge : this.f85393c.keySet()) {
            edge.m67797b(m57386c(edge));
        }
        return new ArrayList(this.f85393c.keySet());
    }

    /* renamed from: c */
    public final Edge m57386c(Edge edge) throws MathIllegalStateException {
        S2Point location = edge.getEnd().getLocation();
        List<BSPTree<Sphere2D>> closeCuts = this.f85391a.getCloseCuts(location, this.f85392b);
        double d = this.f85392b;
        Iterator<BSPTree<Sphere2D>> it2 = closeCuts.iterator();
        Edge edge2 = null;
        while (it2.hasNext()) {
            for (Edge edge3 : this.f85394d.get(it2.next())) {
                if (edge3 != edge && edge3.getStart().getIncoming() == null) {
                    double angle = Vector3D.angle(location.getVector(), edge3.getStart().getLocation().getVector());
                    if (angle <= d) {
                        edge2 = edge3;
                        d = angle;
                    }
                }
            }
        }
        if (edge2 != null) {
            return edge2;
        }
        if (Vector3D.angle(location.getVector(), edge.getStart().getLocation().getVector()) <= this.f85392b) {
            return edge;
        }
        throw new MathIllegalStateException(LocalizedFormats.OUTLINE_BOUNDARY_LOOP_OPEN, new Object[0]);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitInternalNode(BSPTree<Sphere2D> bSPTree) {
        this.f85394d.put(bSPTree, new ArrayList());
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        if (boundaryAttribute.getPlusOutside() != null) {
            m57384a((SubCircle) boundaryAttribute.getPlusOutside(), false, bSPTree);
        }
        if (boundaryAttribute.getPlusInside() != null) {
            m57384a((SubCircle) boundaryAttribute.getPlusInside(), true, bSPTree);
        }
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitLeafNode(BSPTree<Sphere2D> bSPTree) {
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public BSPTreeVisitor.Order visitOrder(BSPTree<Sphere2D> bSPTree) {
        return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
    }
}
