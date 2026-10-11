package org.apache.commons.math3.geometry.euclidean.threed;

import java.util.ArrayList;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.euclidean.twod.Euclidean2D;
import org.apache.commons.math3.geometry.euclidean.twod.PolygonsSet;
import org.apache.commons.math3.geometry.euclidean.twod.Vector2D;
import org.apache.commons.math3.geometry.partitioning.AbstractSubHyperplane;
import org.apache.commons.math3.geometry.partitioning.BSPTree;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.BoundaryAttribute;
import org.apache.commons.math3.geometry.partitioning.RegionFactory;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class OutlineExtractor {

    /* renamed from: a */
    public Vector3D f108256a;

    /* renamed from: b */
    public Vector3D f108257b;

    /* renamed from: c */
    public Vector3D f108258c;

    /* renamed from: org.apache.commons.math3.geometry.euclidean.threed.OutlineExtractor$a */
    /* loaded from: classes12.dex */
    public class C19111a implements BSPTreeVisitor<Euclidean3D> {

        /* renamed from: a */
        public PolygonsSet f108259a;

        /* renamed from: b */
        public final double f108260b;

        public C19111a(double d) {
            this.f108259a = new PolygonsSet((BSPTree<Euclidean2D>) new BSPTree(Boolean.FALSE), d);
            this.f108260b = d;
        }

        /* JADX WARN: Type inference failed for: r11v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        /* JADX WARN: Type inference failed for: r5v9, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
        /* renamed from: a */
        public final void m67637a(SubHyperplane<Euclidean3D> subHyperplane, boolean z) {
            AbstractSubHyperplane abstractSubHyperplane = (AbstractSubHyperplane) subHyperplane;
            Plane plane = (Plane) subHyperplane.getHyperplane();
            double dotProduct = plane.getNormal().dotProduct(OutlineExtractor.this.f108258c);
            if (FastMath.abs(dotProduct) > 0.001d) {
                Vector2D[][] vertices = ((PolygonsSet) abstractSubHyperplane.getRemainingRegion()).getVertices();
                int i = 0;
                int i2 = 1;
                if ((dotProduct < 0.0d) ^ z) {
                    Vector2D[][] vector2DArr = new Vector2D[vertices.length];
                    for (int i3 = 0; i3 < vertices.length; i3++) {
                        Vector2D[] vector2DArr2 = vertices[i3];
                        Vector2D[] vector2DArr3 = new Vector2D[vector2DArr2.length];
                        if (vector2DArr2[0] == null) {
                            vector2DArr3[0] = null;
                            for (int i4 = 1; i4 < vector2DArr2.length; i4++) {
                                vector2DArr3[i4] = vector2DArr2[vector2DArr2.length - i4];
                            }
                        } else {
                            int i5 = 0;
                            while (i5 < vector2DArr2.length) {
                                int i6 = i5 + 1;
                                vector2DArr3[i5] = vector2DArr2[vector2DArr2.length - i6];
                                i5 = i6;
                            }
                        }
                        vector2DArr[i3] = vector2DArr3;
                    }
                    vertices = vector2DArr;
                }
                ArrayList arrayList = new ArrayList();
                int length = vertices.length;
                int i7 = 0;
                while (i7 < length) {
                    Vector2D[] vector2DArr4 = vertices[i7];
                    int i8 = vector2DArr4[i] != null ? i2 : i;
                    int length2 = i8 != 0 ? vector2DArr4.length - i2 : i2;
                    ?? space = plane.toSpace((Point<Euclidean2D>) vector2DArr4[length2]);
                    int length3 = (length2 + 1) % vector2DArr4.length;
                    int i9 = length;
                    Vector2D vector2D = new Vector2D(space.dotProduct(OutlineExtractor.this.f108256a), space.dotProduct(OutlineExtractor.this.f108257b));
                    int i10 = length2;
                    int i11 = length3;
                    while (i11 < vector2DArr4.length) {
                        ?? space2 = plane.toSpace((Point<Euclidean2D>) vector2DArr4[i11]);
                        Vector2D vector2D2 = new Vector2D(space2.dotProduct(OutlineExtractor.this.f108256a), space2.dotProduct(OutlineExtractor.this.f108257b));
                        org.apache.commons.math3.geometry.euclidean.twod.Line line = new org.apache.commons.math3.geometry.euclidean.twod.Line(vector2D, vector2D2, this.f108260b);
                        SubHyperplane<Euclidean2D> wholeHyperplane = line.wholeHyperplane();
                        if (i8 != 0 || i10 != 1) {
                            wholeHyperplane = wholeHyperplane.split(new org.apache.commons.math3.geometry.euclidean.twod.Line(vector2D, line.getAngle() + 1.5707963267948966d, this.f108260b)).getPlus();
                        }
                        if (i8 == 0 && i11 == vector2DArr4.length - 1) {
                            arrayList.add(wholeHyperplane);
                            vector2D = vector2D2;
                            int i12 = i11;
                            i11++;
                            i10 = i12;
                        }
                        wholeHyperplane = wholeHyperplane.split(new org.apache.commons.math3.geometry.euclidean.twod.Line(vector2D2, line.getAngle() + 1.5707963267948966d, this.f108260b)).getMinus();
                        arrayList.add(wholeHyperplane);
                        vector2D = vector2D2;
                        int i122 = i11;
                        i11++;
                        i10 = i122;
                    }
                    i7++;
                    length = i9;
                    i2 = 1;
                    i = 0;
                }
                this.f108259a = (PolygonsSet) new RegionFactory().union(this.f108259a, new PolygonsSet(arrayList, this.f108260b));
            }
        }

        /* renamed from: b */
        public PolygonsSet m67638b() {
            return this.f108259a;
        }

        @Override // org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor
        public void visitInternalNode(BSPTree<Euclidean3D> bSPTree) {
            BoundaryAttribute boundaryAttribute = (BoundaryAttribute) bSPTree.getAttribute();
            if (boundaryAttribute.getPlusOutside() != null) {
                m67637a(boundaryAttribute.getPlusOutside(), false);
            }
            if (boundaryAttribute.getPlusInside() != null) {
                m67637a(boundaryAttribute.getPlusInside(), true);
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

    public OutlineExtractor(Vector3D vector3D, Vector3D vector3D2) {
        this.f108256a = vector3D;
        this.f108257b = vector3D2;
        this.f108258c = Vector3D.crossProduct(vector3D, vector3D2);
    }

    /* renamed from: d */
    public final boolean m67636d(Vector2D[] vector2DArr, int i, int i2) {
        Vector2D vector2D = vector2DArr[((i2 + i) - 1) % i];
        Vector2D vector2D2 = vector2DArr[i2];
        Vector2D vector2D3 = vector2DArr[(i2 + 1) % i];
        double x = vector2D2.getX() - vector2D.getX();
        double y = vector2D2.getY() - vector2D.getY();
        double x2 = vector2D3.getX() - vector2D2.getX();
        double y2 = vector2D3.getY() - vector2D2.getY();
        return FastMath.abs((x * y2) - (x2 * y)) <= FastMath.sqrt(((x * x) + (y * y)) * ((x2 * x2) + (y2 * y2))) * 1.0E-6d && (x * x2) + (y * y2) >= 0.0d;
    }

    public Vector2D[][] getOutline(PolyhedronsSet polyhedronsSet) {
        C19111a c19111a = new C19111a(polyhedronsSet.getTolerance());
        polyhedronsSet.getTree(true).visit(c19111a);
        Vector2D[][] vertices = c19111a.m67638b().getVertices();
        for (int i = 0; i < vertices.length; i++) {
            Vector2D[] vector2DArr = vertices[i];
            int length = vector2DArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (m67636d(vector2DArr, length, i2)) {
                    int i3 = i2;
                    while (i3 < length - 1) {
                        int i4 = i3 + 1;
                        vector2DArr[i3] = vector2DArr[i4];
                        i3 = i4;
                    }
                    length--;
                } else {
                    i2++;
                }
            }
            if (length != vector2DArr.length) {
                Vector2D[] vector2DArr2 = new Vector2D[length];
                vertices[i] = vector2DArr2;
                System.arraycopy(vector2DArr, 0, vector2DArr2, 0, length);
            }
        }
        return vertices;
    }
}
