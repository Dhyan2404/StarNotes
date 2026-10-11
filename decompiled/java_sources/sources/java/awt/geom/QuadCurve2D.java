package java.awt.geom;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;

/* loaded from: classes5.dex */
public abstract class QuadCurve2D implements Shape, Cloneable {
    private static final int ABOVE = 2;
    private static final int BELOW = -2;
    private static final int HIGHEDGE = 1;
    private static final int INSIDE = 0;
    private static final int LOWEDGE = -1;

    /* loaded from: classes5.dex */
    public static class Double extends QuadCurve2D implements Serializable {
        private static final long serialVersionUID = 4217149928428559721L;
        public double ctrlx;
        public double ctrly;

        /* renamed from: x1 */
        public double f97779x1;

        /* renamed from: x2 */
        public double f97780x2;

        /* renamed from: y1 */
        public double f97781y1;

        /* renamed from: y2 */
        public double f97782y2;

        public Double() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            double min = Math.min(Math.min(this.f97779x1, this.f97780x2), this.ctrlx);
            double min2 = Math.min(Math.min(this.f97781y1, this.f97782y2), this.ctrly);
            return new Rectangle2D.Double(min, min2, Math.max(Math.max(this.f97779x1, this.f97780x2), this.ctrlx) - min, Math.max(Math.max(this.f97781y1, this.f97782y2), this.ctrly) - min2);
        }

        @Override // java.awt.geom.QuadCurve2D
        public Point2D getCtrlPt() {
            return new Point2D.Double(this.ctrlx, this.ctrly);
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getCtrlX() {
            return this.ctrlx;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getCtrlY() {
            return this.ctrly;
        }

        @Override // java.awt.geom.QuadCurve2D
        public Point2D getP1() {
            return new Point2D.Double(this.f97779x1, this.f97781y1);
        }

        @Override // java.awt.geom.QuadCurve2D
        public Point2D getP2() {
            return new Point2D.Double(this.f97780x2, this.f97782y2);
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getX1() {
            return this.f97779x1;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getX2() {
            return this.f97780x2;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getY1() {
            return this.f97781y1;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getY2() {
            return this.f97782y2;
        }

        @Override // java.awt.geom.QuadCurve2D
        public void setCurve(double d, double d2, double d3, double d4, double d5, double d6) {
            this.f97779x1 = d;
            this.f97781y1 = d2;
            this.ctrlx = d3;
            this.ctrly = d4;
            this.f97780x2 = d5;
            this.f97782y2 = d6;
        }

        public Double(double d, double d2, double d3, double d4, double d5, double d6) {
            setCurve(d, d2, d3, d4, d5, d6);
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends QuadCurve2D implements Serializable {
        private static final long serialVersionUID = -8511188402130719609L;
        public float ctrlx;
        public float ctrly;

        /* renamed from: x1 */
        public float f97783x1;

        /* renamed from: x2 */
        public float f97784x2;

        /* renamed from: y1 */
        public float f97785y1;

        /* renamed from: y2 */
        public float f97786y2;

        public Float() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            float min = Math.min(Math.min(this.f97783x1, this.f97784x2), this.ctrlx);
            float min2 = Math.min(Math.min(this.f97785y1, this.f97786y2), this.ctrly);
            return new Rectangle2D.Float(min, min2, Math.max(Math.max(this.f97783x1, this.f97784x2), this.ctrlx) - min, Math.max(Math.max(this.f97785y1, this.f97786y2), this.ctrly) - min2);
        }

        @Override // java.awt.geom.QuadCurve2D
        public Point2D getCtrlPt() {
            return new Point2D.Float(this.ctrlx, this.ctrly);
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getCtrlX() {
            return this.ctrlx;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getCtrlY() {
            return this.ctrly;
        }

        @Override // java.awt.geom.QuadCurve2D
        public Point2D getP1() {
            return new Point2D.Float(this.f97783x1, this.f97785y1);
        }

        @Override // java.awt.geom.QuadCurve2D
        public Point2D getP2() {
            return new Point2D.Float(this.f97784x2, this.f97786y2);
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getX1() {
            return this.f97783x1;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getX2() {
            return this.f97784x2;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getY1() {
            return this.f97785y1;
        }

        @Override // java.awt.geom.QuadCurve2D
        public double getY2() {
            return this.f97786y2;
        }

        @Override // java.awt.geom.QuadCurve2D
        public void setCurve(double d, double d2, double d3, double d4, double d5, double d6) {
            this.f97783x1 = (float) d;
            this.f97785y1 = (float) d2;
            this.ctrlx = (float) d3;
            this.ctrly = (float) d4;
            this.f97784x2 = (float) d5;
            this.f97786y2 = (float) d6;
        }

        public Float(float f, float f2, float f3, float f4, float f5, float f6) {
            setCurve(f, f2, f3, f4, f5, f6);
        }

        public void setCurve(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f97783x1 = f;
            this.f97785y1 = f2;
            this.ctrlx = f3;
            this.ctrly = f4;
            this.f97784x2 = f5;
            this.f97786y2 = f6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int evalQuadratic(double[] r15, int r16, boolean r17, boolean r18, double[] r19, double r20, double r22, double r24) {
        /*
            r0 = 0
            r2 = r16
            r1 = r0
        L4:
            if (r0 >= r2) goto L44
            r3 = r15[r0]
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r17 == 0) goto L11
            if (r7 < 0) goto L41
            goto L13
        L11:
            if (r7 <= 0) goto L41
        L13:
            r7 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r9 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r18 == 0) goto L1c
            if (r9 > 0) goto L41
            goto L1e
        L1c:
            if (r9 >= 0) goto L41
        L1e:
            r9 = 4611686018427387904(0x4000000000000000, double:2.0)
            if (r19 == 0) goto L2f
            r11 = 1
            r11 = r19[r11]
            r13 = 2
            r13 = r19[r13]
            double r13 = r13 * r9
            double r13 = r13 * r3
            double r11 = r11 + r13
            int r5 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
            if (r5 == 0) goto L41
        L2f:
            double r7 = r7 - r3
            int r5 = r1 + 1
            double r11 = r20 * r7
            double r11 = r11 * r7
            double r9 = r9 * r22
            double r9 = r9 * r3
            double r9 = r9 * r7
            double r11 = r11 + r9
            double r6 = r24 * r3
            double r6 = r6 * r3
            double r11 = r11 + r6
            r15[r1] = r11
            r1 = r5
        L41:
            int r0 = r0 + 1
            goto L4
        L44:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.geom.QuadCurve2D.evalQuadratic(double[], int, boolean, boolean, double[], double, double, double):int");
    }

    private static void fillEqn(double[] dArr, double d, double d2, double d3, double d4) {
        dArr[0] = d2 - d;
        dArr[1] = ((d3 + d3) - d2) - d2;
        dArr[2] = ((d2 - d3) - d3) + d4;
    }

    public static double getFlatness(double d, double d2, double d3, double d4, double d5, double d6) {
        return Line2D.ptSegDist(d, d2, d5, d6, d3, d4);
    }

    public static double getFlatnessSq(double d, double d2, double d3, double d4, double d5, double d6) {
        return Line2D.ptSegDistSq(d, d2, d5, d6, d3, d4);
    }

    private static int getTag(double d, double d2, double d3) {
        if (d <= d2) {
            return d < d2 ? -2 : -1;
        }
        if (d >= d3) {
            return d > d3 ? 2 : 1;
        }
        return 0;
    }

    private static boolean inwards(int i, int i2, int i3) {
        if (i == -1) {
            return i2 >= 0 || i3 >= 0;
        }
        if (i == 0) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        return i2 <= 0 || i3 <= 0;
    }

    public static int solveQuadratic(double[] dArr) {
        return solveQuadratic(dArr, dArr);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        double x1 = getX1();
        double y1 = getY1();
        double ctrlX = getCtrlX();
        double ctrlY = getCtrlY();
        double x2 = getX2();
        double y2 = getY2();
        double d3 = (x1 - (ctrlX * 2.0d)) + x2;
        double d4 = (y1 - (ctrlY * 2.0d)) + y2;
        double d5 = x2 - x1;
        double d6 = y2 - y1;
        double d7 = (((d - x1) * d4) - ((d2 - y1) * d3)) / ((d5 * d4) - (d6 * d3));
        if (d7 < 0.0d || d7 > 1.0d || d7 != d7) {
            return false;
        }
        double d8 = (d3 * d7 * d7) + ((ctrlX - x1) * 2.0d * d7) + x1;
        double d9 = (d4 * d7 * d7) + ((ctrlY - y1) * 2.0d * d7) + y1;
        double d10 = (d5 * d7) + x1;
        double d11 = (d6 * d7) + y1;
        return (d >= d8 && d < d10) || (d >= d10 && d < d8) || ((d2 >= d9 && d2 < d11) || (d2 >= d11 && d2 < d9));
    }

    @Override // java.awt.Shape
    public Rectangle getBounds() {
        return getBounds2D().getBounds();
    }

    public abstract Point2D getCtrlPt();

    public abstract double getCtrlX();

    public abstract double getCtrlY();

    public abstract Point2D getP1();

    public abstract Point2D getP2();

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new QuadIterator(this, affineTransform);
    }

    public abstract double getX1();

    public abstract double getX2();

    public abstract double getY1();

    public abstract double getY2();

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        double[] dArr;
        int tag;
        if (d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        double x1 = getX1();
        double y1 = getY1();
        double d5 = d + d3;
        int tag2 = getTag(x1, d, d5);
        double d6 = d2 + d4;
        int tag3 = getTag(y1, d2, d6);
        if (tag2 == 0 && tag3 == 0) {
            return true;
        }
        double x2 = getX2();
        double y2 = getY2();
        int tag4 = getTag(x2, d, d5);
        int tag5 = getTag(y2, d2, d6);
        if (tag4 == 0 && tag5 == 0) {
            return true;
        }
        double ctrlX = getCtrlX();
        double ctrlY = getCtrlY();
        int tag6 = getTag(ctrlX, d, d5);
        int tag7 = getTag(ctrlY, d2, d6);
        if (tag2 < 0 && tag4 < 0 && tag6 < 0) {
            return false;
        }
        if (tag3 < 0 && tag5 < 0 && tag7 < 0) {
            return false;
        }
        if (tag2 > 0 && tag4 > 0 && tag6 > 0) {
            return false;
        }
        if (tag3 > 0 && tag5 > 0 && tag7 > 0) {
            return false;
        }
        if (inwards(tag2, tag4, tag6) && inwards(tag3, tag5, tag7)) {
            return true;
        }
        if (inwards(tag4, tag2, tag6) && inwards(tag5, tag3, tag7)) {
            return true;
        }
        boolean z = tag2 * tag4 <= 0;
        boolean z2 = tag3 * tag5 <= 0;
        if (tag2 == 0 && tag4 == 0 && z2) {
            return true;
        }
        if (tag3 == 0 && tag5 == 0 && z) {
            return true;
        }
        double[] dArr2 = new double[3];
        double[] dArr3 = new double[3];
        if (!z2) {
            fillEqn(dArr2, tag3 < 0 ? d2 : d6, y1, ctrlY, y2);
            return solveQuadratic(dArr2, dArr3) == 2 && evalQuadratic(dArr3, 2, true, true, null, x1, ctrlX, x2) == 2 && getTag(dArr3[0], d, d5) * getTag(dArr3[1], d, d5) <= 0;
        }
        if (!z) {
            fillEqn(dArr2, tag2 < 0 ? d : d5, x1, ctrlX, x2);
            return solveQuadratic(dArr2, dArr3) == 2 && evalQuadratic(dArr3, 2, true, true, null, y1, ctrlY, y2) == 2 && getTag(dArr3[0], d2, d6) * getTag(dArr3[1], d2, d6) <= 0;
        }
        double d7 = x2 - x1;
        double d8 = y2 - y1;
        double d9 = (y2 * x1) - (x2 * y1);
        if (tag3 == 0) {
            tag = tag2;
            dArr = dArr2;
        } else {
            dArr = dArr2;
            tag = getTag((d9 + ((tag3 < 0 ? d2 : d6) * d7)) / d8, d, d5);
        }
        if (tag5 != 0) {
            tag4 = getTag((d9 + (d7 * (tag5 < 0 ? d2 : d6))) / d8, d, d5);
        }
        if (tag * tag4 <= 0) {
            return true;
        }
        int i = tag * tag2 <= 0 ? tag3 : tag5;
        fillEqn(dArr, tag4 < 0 ? d : d5, x1, ctrlX, x2);
        evalQuadratic(dArr3, solveQuadratic(dArr, dArr3), true, true, null, y1, ctrlY, y2);
        return i * getTag(dArr3[0], d2, d6) <= 0;
    }

    public abstract void setCurve(double d, double d2, double d3, double d4, double d5, double d6);

    public void setCurve(double[] dArr, int i) {
        setCurve(dArr[i + 0], dArr[i + 1], dArr[i + 2], dArr[i + 3], dArr[i + 4], dArr[i + 5]);
    }

    public void subdivide(QuadCurve2D quadCurve2D, QuadCurve2D quadCurve2D2) {
        subdivide(this, quadCurve2D, quadCurve2D2);
    }

    public static double getFlatness(double[] dArr, int i) {
        return Line2D.ptSegDist(dArr[i + 0], dArr[i + 1], dArr[i + 4], dArr[i + 5], dArr[i + 2], dArr[i + 3]);
    }

    public static double getFlatnessSq(double[] dArr, int i) {
        return Line2D.ptSegDistSq(dArr[i + 0], dArr[i + 1], dArr[i + 4], dArr[i + 5], dArr[i + 2], dArr[i + 3]);
    }

    public static int solveQuadratic(double[] dArr, double[] dArr2) {
        double d = dArr[2];
        double d2 = dArr[1];
        double d3 = dArr[0];
        if (d != 0.0d) {
            double d4 = (d2 * d2) - ((4.0d * d) * d3);
            if (d4 < 0.0d) {
                return 0;
            }
            double sqrt = Math.sqrt(d4);
            if (d2 < 0.0d) {
                sqrt = -sqrt;
            }
            double d5 = (d2 + sqrt) / (-2.0d);
            dArr2[0] = d5 / d;
            if (d5 != 0.0d) {
                dArr2[1] = d3 / d5;
                return 2;
            }
        } else {
            if (d2 == 0.0d) {
                return -1;
            }
            dArr2[0] = (-d3) / d2;
        }
        return 1;
    }

    public static void subdivide(QuadCurve2D quadCurve2D, QuadCurve2D quadCurve2D2, QuadCurve2D quadCurve2D3) {
        double x1 = quadCurve2D.getX1();
        double y1 = quadCurve2D.getY1();
        double ctrlX = quadCurve2D.getCtrlX();
        double ctrlY = quadCurve2D.getCtrlY();
        double x2 = quadCurve2D.getX2();
        double y2 = quadCurve2D.getY2();
        double d = (x1 + ctrlX) / 2.0d;
        double d2 = (y1 + ctrlY) / 2.0d;
        double d3 = (x2 + ctrlX) / 2.0d;
        double d4 = (y2 + ctrlY) / 2.0d;
        double d5 = (d + d3) / 2.0d;
        double d6 = (d2 + d4) / 2.0d;
        if (quadCurve2D2 != null) {
            quadCurve2D2.setCurve(x1, y1, d, d2, d5, d6);
        }
        if (quadCurve2D3 != null) {
            quadCurve2D3.setCurve(d5, d6, d3, d4, x2, y2);
        }
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return new FlatteningPathIterator(getPathIterator(affineTransform), d);
    }

    public void setCurve(Point2D point2D, Point2D point2D2, Point2D point2D3) {
        setCurve(point2D.getX(), point2D.getY(), point2D2.getX(), point2D2.getY(), point2D3.getX(), point2D3.getY());
    }

    public double getFlatness() {
        return Line2D.ptSegDist(getX1(), getY1(), getX2(), getY2(), getCtrlX(), getCtrlY());
    }

    public double getFlatnessSq() {
        return Line2D.ptSegDistSq(getX1(), getY1(), getX2(), getY2(), getCtrlX(), getCtrlY());
    }

    public void setCurve(Point2D[] point2DArr, int i) {
        int i2 = i + 0;
        double x = point2DArr[i2].getX();
        double y = point2DArr[i2].getY();
        int i3 = i + 1;
        double x2 = point2DArr[i3].getX();
        double y2 = point2DArr[i3].getY();
        int i4 = i + 2;
        setCurve(x, y, x2, y2, point2DArr[i4].getX(), point2DArr[i4].getY());
    }

    @Override // java.awt.Shape
    public boolean contains(Point2D point2D) {
        return contains(point2D.getX(), point2D.getY());
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        if (d3 <= 0.0d || d4 <= 0.0d || !contains(d, d2)) {
            return false;
        }
        double d5 = d3 + d;
        if (!contains(d5, d2)) {
            return false;
        }
        double d6 = d2 + d4;
        return contains(d5, d6) && contains(d, d6);
    }

    public static void subdivide(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double d = dArr[i + 0];
        double d2 = dArr[i + 1];
        double d3 = dArr[i + 2];
        double d4 = dArr[i + 3];
        double d5 = dArr[i + 4];
        double d6 = dArr[i + 5];
        if (dArr2 != null) {
            dArr2[i2 + 0] = d;
            dArr2[i2 + 1] = d2;
        }
        if (dArr3 != null) {
            dArr3[i3 + 4] = d5;
            dArr3[i3 + 5] = d6;
        }
        double d7 = (d + d3) / 2.0d;
        double d8 = (d2 + d4) / 2.0d;
        double d9 = (d5 + d3) / 2.0d;
        double d10 = (d6 + d4) / 2.0d;
        double d11 = (d7 + d9) / 2.0d;
        double d12 = (d8 + d10) / 2.0d;
        if (dArr2 != null) {
            dArr2[i2 + 2] = d7;
            dArr2[i2 + 3] = d8;
            dArr2[i2 + 4] = d11;
            dArr2[i2 + 5] = d12;
        }
        if (dArr3 != null) {
            dArr3[i3 + 0] = d11;
            dArr3[i3 + 1] = d12;
            dArr3[i3 + 2] = d9;
            dArr3[i3 + 3] = d10;
        }
    }

    public void setCurve(QuadCurve2D quadCurve2D) {
        setCurve(quadCurve2D.getX1(), quadCurve2D.getY1(), quadCurve2D.getCtrlX(), quadCurve2D.getCtrlY(), quadCurve2D.getX2(), quadCurve2D.getY2());
    }

    @Override // java.awt.Shape
    public boolean contains(Rectangle2D rectangle2D) {
        return contains(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    @Override // java.awt.Shape
    public boolean intersects(Rectangle2D rectangle2D) {
        return intersects(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }
}
