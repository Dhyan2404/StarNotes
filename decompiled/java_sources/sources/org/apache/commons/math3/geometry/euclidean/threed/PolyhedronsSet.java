package org.apache.commons.math3.geometry.euclidean.threed;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.euclidean.oned.Euclidean1D;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.AbstractRegion;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.Hyperplane;
import org.apache.commons.math3.geometry.partitioning.Region;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.geometry.partitioning.Transform;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class PolyhedronsSet extends AbstractRegion<Euclidean3D, Euclidean2D> {

    /* renamed from: i */
    public static final double f108269i = 1.0E-10d;

    /* renamed from: org.apache.commons.math3.geometry.euclidean.threed.PolyhedronsSet$a */
    /* loaded from: classes12.dex */
    public class C19112a implements BSPTreeVisitor<Euclidean3D> {
        public C19112a() {
            PolyhedronsSet.this.setSize(0.0d);
            PolyhedronsSet.this.setBarycenter((Point) new Vector3D(0.0d, 0.0d, 0.0d));
        }

        /* JADX WARN: Type inference failed for: r9v0, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        /* renamed from: a */
        public final void m67653a(SubHyperplane<Euclidean3D> subHyperplane, boolean z) {
            Region<Euclidean2D> remainingRegion = ((SubPlane) subHyperplane).getRemainingRegion();
            double size = remainingRegion.getSize();
            if (Double.isInfinite(size)) {
                PolyhedronsSet.this.setSize(Double.POSITIVE_INFINITY);
                PolyhedronsSet.this.setBarycenter((Point) Vector3D.NaN);
                return;
            }
            Plane plane = (Plane) subHyperplane.getHyperplane();
            ?? space = plane.toSpace(remainingRegion.getBarycenter());
            double dotProduct = size * space.dotProduct(plane.getNormal());
            double d = z ? -dotProduct : dotProduct;
            PolyhedronsSet polyhedronsSet = PolyhedronsSet.this;
            polyhedronsSet.setSize(polyhedronsSet.getSize() + d);
            PolyhedronsSet.this.setBarycenter((Point) new Vector3D(1.0d, (Vector3D) PolyhedronsSet.this.getBarycenter(), d, space));
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitInternalNode(BSPTree<Euclidean3D> bSPTree) {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute.getPlusOutside() != null) {
                m67653a(boundaryAttribute.getPlusOutside(), false);
            }
            if (boundaryAttribute.getPlusInside() != null) {
                m67653a(boundaryAttribute.getPlusInside(), true);
            }
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitLeafNode(BSPTree<Euclidean3D> bSPTree) {
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public BSPTreeVisitor.Order visitOrder(BSPTree<Euclidean3D> bSPTree) {
            return BSPTreeVisitor.Order.MINUS_SUB_PLUS;
        }
    }

    public PolyhedronsSet(double d) {
        super(d);
    }

    /* renamed from: l */
    public static List<SubHyperplane<Euclidean3D>> m67647l(List<Vector3D> list, List<int[]> list2, double d) {
        int i = 0;
        while (i < list.size() - 1) {
            Vector3D vector3D = list.get(i);
            i++;
            for (int i2 = i; i2 < list.size(); i2++) {
                if (Vector3D.distance(vector3D, list.get(i2)) <= d) {
                    throw new MathIllegalArgumentException(LocalizedFormats.CLOSE_VERTICES, Double.valueOf(vector3D.getX()), Double.valueOf(vector3D.getY()), Double.valueOf(vector3D.getZ()));
                }
            }
        }
        int[][] m67650p = m67650p(list, list2, m67649n(list, list2));
        int i3 = 0;
        while (i3 < list.size()) {
            for (int i4 : m67650p[i3]) {
                if (i4 >= 0) {
                    boolean z = false;
                    for (int i5 : m67650p[i4]) {
                        z = z || i5 == i3;
                    }
                    if (!z) {
                        Vector3D vector3D2 = list.get(i3);
                        Vector3D vector3D3 = list.get(i4);
                        throw new MathIllegalArgumentException(LocalizedFormats.EDGE_CONNECTED_TO_ONE_FACET, Double.valueOf(vector3D2.getX()), Double.valueOf(vector3D2.getY()), Double.valueOf(vector3D2.getZ()), Double.valueOf(vector3D3.getX()), Double.valueOf(vector3D3.getY()), Double.valueOf(vector3D3.getZ()));
                    }
                }
            }
            i3++;
        }
        ArrayList arrayList = new ArrayList();
        for (int[] iArr : list2) {
            Plane plane = new Plane(list.get(iArr[0]), list.get(iArr[1]), list.get(iArr[2]), d);
            Vector2D[] vector2DArr = new Vector2D[iArr.length];
            for (int i6 = 0; i6 < iArr.length; i6++) {
                Vector3D vector3D4 = list.get(iArr[i6]);
                if (!plane.contains(vector3D4)) {
                    throw new MathIllegalArgumentException(LocalizedFormats.OUT_OF_PLANE, Double.valueOf(vector3D4.getX()), Double.valueOf(vector3D4.getY()), Double.valueOf(vector3D4.getZ()));
                }
                vector2DArr[i6] = plane.toSubSpace((Vector<Euclidean3D>) vector3D4);
            }
            arrayList.add(new SubPlane(plane, new PolygonsSet(d, vector2DArr)));
        }
        return arrayList;
    }

    /* renamed from: m */
    public static BSPTree<Euclidean3D> m67648m(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        if (d >= d2 - d7 || d3 >= d4 - d7 || d5 >= d6 - d7) {
            return new BSPTree<>(Boolean.FALSE);
        }
        return new RegionFactory().buildConvex(new Plane(new Vector3D(d, 0.0d, 0.0d), Vector3D.MINUS_I, d7), new Plane(new Vector3D(d2, 0.0d, 0.0d), Vector3D.PLUS_I, d7), new Plane(new Vector3D(0.0d, d3, 0.0d), Vector3D.MINUS_J, d7), new Plane(new Vector3D(0.0d, d4, 0.0d), Vector3D.PLUS_J, d7), new Plane(new Vector3D(0.0d, 0.0d, d5), Vector3D.MINUS_K, d7), new Plane(new Vector3D(0.0d, 0.0d, d6), Vector3D.PLUS_K, d7)).getTree(false);
    }

    /* renamed from: n */
    public static int[][] m67649n(List<Vector3D> list, List<int[]> list2) {
        int[] iArr = new int[list.size()];
        int i = 0;
        for (int[] iArr2 : list2) {
            if (iArr2.length < 3) {
                throw new NumberIsTooSmallException(LocalizedFormats.WRONG_NUMBER_OF_POINTS, 3, Integer.valueOf(iArr2.length), true);
            }
            for (int i2 : iArr2) {
                int i3 = iArr[i2] + 1;
                iArr[i2] = i3;
                i = FastMath.max(i, i3);
            }
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, list.size(), i);
        for (int[] iArr4 : iArr3) {
            Arrays.fill(iArr4, -1);
        }
        for (int i4 = 0; i4 < list2.size(); i4++) {
            for (int i5 : list2.get(i4)) {
                int i6 = 0;
                while (i6 < i && iArr3[i5][i6] >= 0) {
                    i6++;
                }
                iArr3[i5][i6] = i4;
            }
        }
        return iArr3;
    }

    /* renamed from: p */
    public static int[][] m67650p(List<Vector3D> list, List<int[]> list2, int[][] iArr) {
        int i;
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, list.size(), iArr[0].length);
        for (int[] iArr3 : iArr2) {
            Arrays.fill(iArr3, -1);
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            for (int i3 = 0; i3 < iArr2[i2].length && (i = iArr[i2][i3]) >= 0; i3++) {
                int[] iArr4 = list2.get(i);
                int i4 = 0;
                while (i4 < iArr4.length && iArr4[i4] != i2) {
                    i4++;
                }
                iArr2[i2][i3] = iArr4[(i4 + 1) % iArr4.length];
                for (int i5 = 0; i5 < i3; i5++) {
                    int[] iArr5 = iArr2[i2];
                    if (iArr5[i5] == iArr5[i3]) {
                        Vector3D vector3D = list.get(i2);
                        Vector3D vector3D2 = list.get(iArr2[i2][i3]);
                        throw new MathIllegalArgumentException(LocalizedFormats.FACET_ORIENTATION_MISMATCH, Double.valueOf(vector3D.getX()), Double.valueOf(vector3D.getY()), Double.valueOf(vector3D.getZ()), Double.valueOf(vector3D2.getX()), Double.valueOf(vector3D2.getY()), Double.valueOf(vector3D2.getZ()));
                    }
                }
            }
        }
        return iArr2;
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ AbstractRegion buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean3D>) bSPTree);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion
    public void computeGeometricalProperties() {
        getTree(true).visit(new C19112a());
        if (getSize() < 0.0d) {
            setSize(Double.POSITIVE_INFINITY);
            setBarycenter((Point) Vector3D.NaN);
        } else {
            setSize(getSize() / 3.0d);
            setBarycenter((Point) new Vector3D(1.0d / (getSize() * 4.0d), (Vector3D) getBarycenter()));
        }
    }

    public SubHyperplane<Euclidean3D> firstIntersection(Vector3D vector3D, Line line) {
        return m67652o(getTree(true), vector3D, line);
    }

    /* renamed from: k */
    public final SubHyperplane<Euclidean3D> m67651k(Vector3D vector3D, BSPTree<Euclidean3D> bSPTree) {
        Point<Euclidean2D> subSpace = ((Plane) bSPTree.getCut().getHyperplane()).toSubSpace((Point<Euclidean3D>) vector3D);
        BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
        if (boundaryAttribute.getPlusOutside() != null && ((SubPlane) boundaryAttribute.getPlusOutside()).getRemainingRegion().checkPoint(subSpace) == Region.Location.INSIDE) {
            return boundaryAttribute.getPlusOutside();
        }
        if (boundaryAttribute.getPlusInside() == null || ((SubPlane) boundaryAttribute.getPlusInside()).getRemainingRegion().checkPoint(subSpace) != Region.Location.INSIDE) {
            return null;
        }
        return boundaryAttribute.getPlusInside();
    }

    /* renamed from: o */
    public final SubHyperplane<Euclidean3D> m67652o(BSPTree<Euclidean3D> bSPTree, Vector3D vector3D, Line line) {
        Vector3D intersection;
        SubHyperplane<Euclidean3D> m67651k;
        SubHyperplane<Euclidean3D> m67651k2;
        SubHyperplane<Euclidean3D> cut = bSPTree.getCut();
        if (cut == null) {
            return null;
        }
        BSPTree<Euclidean3D> minus = bSPTree.getMinus();
        BSPTree<Euclidean3D> plus = bSPTree.getPlus();
        Plane plane = (Plane) cut.getHyperplane();
        double offset = plane.getOffset((Point<Euclidean3D>) vector3D);
        boolean z = FastMath.abs(offset) < getTolerance();
        if (offset >= 0.0d) {
            plus = minus;
            minus = plus;
        }
        if (z && (m67651k2 = m67651k(vector3D, bSPTree)) != null) {
            return m67651k2;
        }
        SubHyperplane<Euclidean3D> m67652o = m67652o(minus, vector3D, line);
        return m67652o != null ? m67652o : (z || (intersection = plane.intersection(line)) == null || line.getAbscissa(intersection) <= line.getAbscissa(vector3D) || (m67651k = m67651k(intersection, bSPTree)) == null) ? m67652o(plus, vector3D, line) : m67651k;
    }

    public PolyhedronsSet rotate(Vector3D vector3D, Rotation rotation) {
        return (PolyhedronsSet) applyTransform(new C19113b(vector3D, rotation));
    }

    public PolyhedronsSet translate(Vector3D vector3D) {
        return (PolyhedronsSet) applyTransform(new C19114c(vector3D));
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.threed.PolyhedronsSet$b */
    /* loaded from: classes12.dex */
    public static class C19113b implements Transform<Euclidean3D, Euclidean2D> {

        /* renamed from: a */
        public Vector3D f108271a;

        /* renamed from: b */
        public Rotation f108272b;

        /* renamed from: c */
        public Plane f108273c;

        /* renamed from: d */
        public Transform<Euclidean2D, Euclidean1D> f108274d;

        public C19113b(Vector3D vector3D, Rotation rotation) {
            this.f108271a = vector3D;
            this.f108272b = rotation;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Plane apply(Hyperplane<Euclidean3D> hyperplane) {
            return ((Plane) hyperplane).rotate(this.f108271a, this.f108272b);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v2, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Vector3D apply(Point<Euclidean3D> point) {
            return new Vector3D(1.0d, this.f108271a, 1.0d, this.f108272b.applyTo((Vector3D) ((Vector3D) point).subtract((Vector<Euclidean3D>) this.f108271a)));
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* JADX WARN: Type inference failed for: r3v2, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        /* JADX WARN: Type inference failed for: r4v3, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        public SubHyperplane<Euclidean2D> apply(SubHyperplane<Euclidean2D> subHyperplane, Hyperplane<Euclidean3D> hyperplane, Hyperplane<Euclidean3D> hyperplane2) {
            if (hyperplane != this.f108273c) {
                Plane plane = (Plane) hyperplane;
                Plane plane2 = (Plane) hyperplane2;
                Vector3D origin = plane.getOrigin();
                Point<Euclidean3D> space = plane.toSpace((Point<Euclidean2D>) new Vector2D(1.0d, 0.0d));
                Point<Euclidean3D> space2 = plane.toSpace((Point<Euclidean2D>) new Vector2D(0.0d, 1.0d));
                ?? subSpace = plane2.toSubSpace((Point<Euclidean3D>) apply(origin));
                ?? subSpace2 = plane2.toSubSpace((Point<Euclidean3D>) apply(space));
                ?? subSpace3 = plane2.toSubSpace((Point<Euclidean3D>) apply(space2));
                this.f108273c = plane;
                this.f108274d = org.apache.commons.math3.geometry.euclidean.twod.Line.getTransform(subSpace2.getX() - subSpace.getX(), subSpace2.getY() - subSpace.getY(), subSpace3.getX() - subSpace.getX(), subSpace3.getY() - subSpace.getY(), subSpace.getX(), subSpace.getY());
            }
            return ((org.apache.commons.math3.geometry.euclidean.twod.SubLine) subHyperplane).applyTransform(this.f108274d);
        }
    }

    /* renamed from: org.apache.commons.math3.geometry.euclidean.threed.PolyhedronsSet$c */
    /* loaded from: classes12.dex */
    public static class C19114c implements Transform<Euclidean3D, Euclidean2D> {

        /* renamed from: a */
        public Vector3D f108275a;

        /* renamed from: b */
        public Plane f108276b;

        /* renamed from: c */
        public Transform<Euclidean2D, Euclidean1D> f108277c;

        public C19114c(Vector3D vector3D) {
            this.f108275a = vector3D;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Plane apply(Hyperplane<Euclidean3D> hyperplane) {
            return ((Plane) hyperplane).translate(this.f108275a);
        }

        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Vector3D apply(Point<Euclidean3D> point) {
            return new Vector3D(1.0d, (Vector3D) point, 1.0d, this.f108275a);
        }

        /* JADX WARN: Type inference failed for: r15v2, types: [org.apache.commons.math3.geometry.euclidean.twod.Vector2D] */
        @Override // org.apache.commons.math3.geometry.partitioning.Transform
        public SubHyperplane<Euclidean2D> apply(SubHyperplane<Euclidean2D> subHyperplane, Hyperplane<Euclidean3D> hyperplane, Hyperplane<Euclidean3D> hyperplane2) {
            if (hyperplane != this.f108276b) {
                Plane plane = (Plane) hyperplane;
                ?? subSpace = ((Plane) hyperplane2).toSubSpace((Point<Euclidean3D>) apply(plane.getOrigin()));
                this.f108276b = plane;
                this.f108277c = org.apache.commons.math3.geometry.euclidean.twod.Line.getTransform(1.0d, 0.0d, 0.0d, 1.0d, subSpace.getX(), subSpace.getY());
            }
            return ((org.apache.commons.math3.geometry.euclidean.twod.SubLine) subHyperplane).applyTransform(this.f108277c);
        }
    }

    public PolyhedronsSet(BSPTree<Euclidean3D> bSPTree, double d) {
        super(bSPTree, d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public /* bridge */ /* synthetic */ Region buildNew(BSPTree bSPTree) {
        return buildNew((BSPTree<Euclidean3D>) bSPTree);
    }

    public PolyhedronsSet(Collection<SubHyperplane<Euclidean3D>> collection, double d) {
        super(collection, d);
    }

    @Override // org.apache.commons.math3.geometry.partitioning.AbstractRegion, org.apache.commons.math3.geometry.partitioning.Region
    public PolyhedronsSet buildNew(BSPTree<Euclidean3D> bSPTree) {
        return new PolyhedronsSet(bSPTree, getTolerance());
    }

    public PolyhedronsSet(List<Vector3D> list, List<int[]> list2, double d) {
        super(m67647l(list, list2, d), d);
    }

    public PolyhedronsSet(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        super(m67648m(d, d2, d3, d4, d5, d6, d7), d7);
    }

    @Deprecated
    public PolyhedronsSet() {
        this(1.0E-10d);
    }

    @Deprecated
    public PolyhedronsSet(BSPTree<Euclidean3D> bSPTree) {
        this(bSPTree, 1.0E-10d);
    }

    @Deprecated
    public PolyhedronsSet(Collection<SubHyperplane<Euclidean3D>> collection) {
        this(collection, 1.0E-10d);
    }

    @Deprecated
    public PolyhedronsSet(double d, double d2, double d3, double d4, double d5, double d6) {
        this(d, d2, d3, d4, d5, d6, 1.0E-10d);
    }
}
