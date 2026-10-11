package org.apache.commons.math3.geometry.spherical.twod;

import com.sunia.HTREnginev2.t8l;
import com.sunia.HTREnginev2.tkf;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.geometry.enclosing.EnclosingBall;
import org.apache.commons.math3.geometry.enclosing.WelzlEncloser;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;
import org.apache.commons.math3.geometry.euclidean.threed.RotationConvention;
import org.apache.commons.math3.geometry.euclidean.threed.SphereGenerator;
import org.apache.commons.math3.geometry.euclidean.threed.Vector3D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BoundaryProjection;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.spherical.oned.Sphere1D;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class SphericalPolygonsSet extends AbstractRegion<Sphere2D, Sphere1D> {

    /* renamed from: i */
    public List<Vertex> f108437i;

    public SphericalPolygonsSet(double d) {
        super(d);
    }

    /* renamed from: d */
    public static S2Point[] m67800d(Vector3D vector3D, Vector3D vector3D2, double d, int i) {
        S2Point[] s2PointArr = new S2Point[i];
        Vector3D crossProduct = Vector3D.crossProduct(vector3D, vector3D2);
        RotationConvention rotationConvention = RotationConvention.VECTOR_OPERATOR;
        s2PointArr[0] = new S2Point(new Rotation(crossProduct, d, rotationConvention).applyTo(vector3D));
        Rotation rotation = new Rotation(vector3D, 6.283185307179586d / i, rotationConvention);
        for (int i2 = 1; i2 < i; i2++) {
            s2PointArr[i2] = new S2Point(rotation.applyTo(s2PointArr[i2 - 1].getVector()));
        }
        return s2PointArr;
    }

    /* renamed from: h */
    public static void m67801h(double d, BSPTree<Sphere2D> bSPTree, List<Edge> list) {
        Edge edge;
        int i;
        int i2 = 0;
        loop0: while (true) {
            edge = null;
            while (edge == null && i2 < list.size()) {
                i = i2 + 1;
                Edge edge2 = list.get(i2);
                if (!bSPTree.insertCut(edge2.getCircle())) {
                    break;
                }
                edge = edge2;
                i2 = i;
            }
            i2 = i;
        }
        if (edge == null) {
            BSPTree<Sphere2D> parent = bSPTree.getParent();
            if (parent == null || bSPTree == parent.getMinus()) {
                bSPTree.setAttribute(Boolean.TRUE);
                return;
            } else {
                bSPTree.setAttribute(Boolean.FALSE);
                return;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Edge edge3 : list) {
            if (edge3 != edge) {
                edge3.m67798c(edge.getCircle(), arrayList, arrayList2);
            }
        }
        if (arrayList.isEmpty()) {
            bSPTree.getPlus().setAttribute(Boolean.FALSE);
        } else {
            m67801h(d, bSPTree.getPlus(), arrayList);
        }
        if (arrayList2.isEmpty()) {
            bSPTree.getMinus().setAttribute(Boolean.TRUE);
        } else {
            m67801h(d, bSPTree.getMinus(), arrayList2);
        }
    }

    /* renamed from: i */
    public static BSPTree<Sphere2D> m67802i(double d, S2Point... s2PointArr) {
        int length = s2PointArr.length;
        if (length == 0) {
            return new BSPTree<>(Boolean.TRUE);
        }
        Vertex[] vertexArr = new Vertex[length];
        for (int i = 0; i < length; i++) {
            vertexArr[i] = new Vertex(s2PointArr[i]);
        }
        ArrayList arrayList = new ArrayList(length);
        Vertex vertex = vertexArr[length - 1];
        int i2 = 0;
        while (i2 < length) {
            Vertex vertex2 = vertexArr[i2];
            Circle m67808d = vertex.m67808d(vertex2);
            if (m67808d == null) {
                m67808d = new Circle(vertex.getLocation(), vertex2.getLocation(), d);
            }
            Circle circle = m67808d;
            arrayList.add(new Edge(vertex, vertex2, Vector3D.angle(vertex.getLocation().getVector(), vertex2.getLocation().getVector()), circle));
            for (int i3 = 0; i3 < length; i3++) {
                Vertex vertex3 = vertexArr[i3];
                if (vertex3 != vertex && vertex3 != vertex2 && FastMath.abs(circle.getOffset(vertex3.getLocation())) <= d) {
                    vertex3.m67805a(circle);
                }
            }
            i2++;
            vertex = vertex2;
        }
        BSPTree<Sphere2D> bSPTree = new BSPTree<>();
        m67801h(d, bSPTree, arrayList);
        return bSPTree;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere2D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    public void computeGeometricalProperties() throws MathIllegalStateException {
        BSPTree<Sphere2D> tree = getTree(true);
        if (tree.getCut() != null) {
            t8l t8lVar = new t8l(getTolerance());
            tree.visit(t8lVar);
            setSize(t8lVar.m57312c());
            setBarycenter(t8lVar.m57313d());
            return;
        }
        if (tree.getCut() == null && ((Boolean) tree.getAttribute()).booleanValue()) {
            setSize(12.566370614359172d);
            setBarycenter(new S2Point(0.0d, 0.0d));
        } else {
            setSize(0.0d);
            setBarycenter(S2Point.NaN);
        }
    }

    /* renamed from: e */
    public final List<Vector3D> m67803e() {
        t8l t8lVar = new t8l(getTolerance());
        getTree(true).visit(t8lVar);
        return t8lVar.m57314e();
    }

    /* renamed from: g */
    public final List<Vector3D> m67804g() {
        SphericalPolygonsSet sphericalPolygonsSet = (SphericalPolygonsSet) new RegionFactory().getComplement(this);
        t8l t8lVar = new t8l(getTolerance());
        sphericalPolygonsSet.getTree(true).visit(t8lVar);
        return t8lVar.m57314e();
    }

    public List<Vertex> getBoundaryLoops() throws MathIllegalStateException {
        if (this.f108437i == null) {
            if (getTree(false).getCut() == null) {
                this.f108437i = Collections.emptyList();
            } else {
                BSPTree<Sphere2D> tree = getTree(true);
                tkf tkfVar = new tkf(tree, getTolerance());
                tree.visit(tkfVar);
                List<Edge> m57385b = tkfVar.m57385b();
                this.f108437i = new ArrayList();
                while (!m57385b.isEmpty()) {
                    Edge edge = m57385b.get(0);
                    Vertex start = edge.getStart();
                    this.f108437i.add(start);
                    do {
                        Iterator<Edge> it2 = m57385b.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            if (it2.next() == edge) {
                                it2.remove();
                                break;
                            }
                        }
                        edge = edge.getEnd().getOutgoing();
                    } while (edge.getStart() != start);
                }
            }
        }
        return Collections.unmodifiableList(this.f108437i);
    }

    public EnclosingBall<Sphere2D, S2Point> getEnclosingCap() {
        if (isEmpty()) {
            return new EnclosingBall<>(S2Point.PLUS_K, Double.NEGATIVE_INFINITY, new S2Point[0]);
        }
        if (isFull()) {
            return new EnclosingBall<>(S2Point.PLUS_K, Double.POSITIVE_INFINITY, new S2Point[0]);
        }
        BSPTree<Sphere2D> tree = getTree(false);
        if (isEmpty(tree.getMinus()) && isFull(tree.getPlus())) {
            return new EnclosingBall<>(new S2Point(((Circle) tree.getCut().getHyperplane()).getPole()).negate(), 1.5707963267948966d, new S2Point[0]);
        }
        if (isFull(tree.getMinus()) && isEmpty(tree.getPlus())) {
            return new EnclosingBall<>(new S2Point(((Circle) tree.getCut().getHyperplane()).getPole()), 1.5707963267948966d, new S2Point[0]);
        }
        List<Vector3D> m67803e = m67803e();
        for (Vertex vertex : getBoundaryLoops()) {
            int i = 0;
            Vertex vertex2 = vertex;
            while (true) {
                if (i == 0 || vertex2 != vertex) {
                    i++;
                    m67803e.add(vertex2.getLocation().getVector());
                    vertex2 = vertex2.getOutgoing().getEnd();
                }
            }
        }
        EnclosingBall enclose = new WelzlEncloser(getTolerance(), new SphereGenerator()).enclose(m67803e);
        Vector3D[] vector3DArr = (Vector3D[]) enclose.getSupport();
        double radius = enclose.getRadius();
        double norm = ((Vector3D) enclose.getCenter()).getNorm();
        if (norm >= getTolerance()) {
            S2Point[] s2PointArr = new S2Point[vector3DArr.length];
            for (int i2 = 0; i2 < vector3DArr.length; i2++) {
                s2PointArr[i2] = new S2Point(vector3DArr[i2]);
            }
            return new EnclosingBall<>(new S2Point((Vector3D) enclose.getCenter()), FastMath.acos((((norm * norm) + 1.0d) - (radius * radius)) / (norm * 2.0d)), s2PointArr);
        }
        EnclosingBall<Sphere2D, S2Point> enclosingBall = new EnclosingBall<>(S2Point.PLUS_K, Double.POSITIVE_INFINITY, new S2Point[0]);
        Iterator<Vector3D> it2 = m67804g().iterator();
        while (it2.hasNext()) {
            S2Point s2Point = new S2Point(it2.next());
            BoundaryProjection<Sphere2D> projectToBoundary = projectToBoundary(s2Point);
            if (3.141592653589793d - projectToBoundary.getOffset() < enclosingBall.getRadius()) {
                enclosingBall = new EnclosingBall<>(s2Point.negate(), 3.141592653589793d - projectToBoundary.getOffset(), (S2Point) projectToBoundary.getProjected());
            }
        }
        return enclosingBall;
    }

    public SphericalPolygonsSet(Vector3D vector3D, double d) {
        super(new BSPTree(new Circle(vector3D, d).wholeHyperplane(), new BSPTree(Boolean.FALSE), new BSPTree(Boolean.TRUE), null), d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Sphere2D>) bSPTree);
    }

    public SphericalPolygonsSet(Vector3D vector3D, Vector3D vector3D2, double d, int i, double d2) {
        this(d2, m67800d(vector3D, vector3D2, d, i));
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public SphericalPolygonsSet buildNew(BSPTree<Sphere2D> bSPTree) {
        return new SphericalPolygonsSet(bSPTree, getTolerance());
    }

    public SphericalPolygonsSet(BSPTree<Sphere2D> bSPTree, double d) {
        super(bSPTree, d);
    }

    public SphericalPolygonsSet(Collection<SubHyperplane<Sphere2D>> collection, double d) {
        super(collection, d);
    }

    public SphericalPolygonsSet(double d, S2Point... s2PointArr) {
        super(m67802i(d, s2PointArr), d);
    }
}
