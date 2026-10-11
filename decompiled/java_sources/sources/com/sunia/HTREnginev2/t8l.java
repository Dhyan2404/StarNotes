package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.spherical.twod.Edge;
import org.apache.commons.math3.geometry.spherical.twod.S2Point;
import org.apache.commons.math3.geometry.spherical.twod.Sphere2D;
import org.apache.commons.math3.geometry.spherical.twod.SphericalPolygonsSet;
import org.apache.commons.math3.geometry.spherical.twod.Vertex;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class t8l implements BSPTreeVisitor<Sphere2D> {

    /* renamed from: a */
    public final double f84991a;

    /* renamed from: b */
    public double f84992b = 0.0d;

    /* renamed from: c */
    public Vector3D f84993c = Vector3D.ZERO;

    /* renamed from: d */
    public final List<Vector3D> f84994d = new ArrayList();

    public t8l(double d) {
        this.f84991a = d;
    }

    /* renamed from: a */
    public final double m57310a(Vertex vertex) {
        Edge outgoing = vertex.getOutgoing();
        int i = 0;
        double d = 0.0d;
        while (true) {
            if (i != 0 && outgoing.getStart() == vertex) {
                return d - ((i - 2) * 3.141592653589793d);
            }
            Vector3D pole = outgoing.getCircle().getPole();
            Vector3D pole2 = outgoing.getEnd().getOutgoing().getCircle().getPole();
            double atan2 = FastMath.atan2(Vector3D.dotProduct(pole2, Vector3D.crossProduct(outgoing.getEnd().getLocation().getVector(), pole)), -Vector3D.dotProduct(pole2, pole));
            if (atan2 < 0.0d) {
                atan2 += 6.283185307179586d;
            }
            d += atan2;
            i++;
            outgoing = outgoing.getEnd().getOutgoing();
        }
    }

    /* JADX WARN: Type inference failed for: r9v5, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* renamed from: b */
    public final Vector3D m57311b(Vertex vertex) {
        Vector3D vector3D = Vector3D.ZERO;
        Edge outgoing = vertex.getOutgoing();
        int i = 0;
        while (true) {
            Vector3D vector3D2 = vector3D;
            if (i != 0 && outgoing.getStart() == vertex) {
                return vector3D2.normalize();
            }
            vector3D = new Vector3D(1.0d, vector3D2, outgoing.getLength(), outgoing.getCircle().getPole());
            i++;
            outgoing = outgoing.getEnd().getOutgoing();
        }
    }

    /* renamed from: c */
    public double m57312c() {
        return this.f84992b;
    }

    /* renamed from: d */
    public S2Point m57313d() {
        return this.f84993c.getNormSq() == 0.0d ? S2Point.NaN : new S2Point(this.f84993c);
    }

    /* renamed from: e */
    public List<Vector3D> m57314e() {
        return this.f84994d;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitInternalNode(BSPTree<Sphere2D> bSPTree) {
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public void visitLeafNode(BSPTree<Sphere2D> bSPTree) {
        if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
            List<Vertex> boundaryLoops = new SphericalPolygonsSet(bSPTree.pruneAroundConvexCell(Boolean.TRUE, Boolean.FALSE, null), this.f84991a).getBoundaryLoops();
            if (boundaryLoops.size() != 1) {
                throw new MathInternalError();
            }
            double m57310a = m57310a(boundaryLoops.get(0));
            Vector3D m57311b = m57311b(boundaryLoops.get(0));
            this.f84994d.add(m57311b);
            this.f84992b += m57310a;
            this.f84993c = new Vector3D(1.0d, this.f84993c, m57310a, m57311b);
        }
    }

    @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
    public BSPTreeVisitor.Order visitOrder(BSPTree<Sphere2D> bSPTree) {
        return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
    }
}
