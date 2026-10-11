package java.awt.geom;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;
import java.util.Arrays;
import sun.awt.geom.Curve;

/* loaded from: classes5.dex */
public abstract class CubicCurve2D implements Shape, Cloneable {

    /* loaded from: classes5.dex */
    public static class Double extends CubicCurve2D implements Serializable {
        private static final long serialVersionUID = -4202960122839707295L;
        public double ctrlx1;
        public double ctrlx2;
        public double ctrly1;
        public double ctrly2;

        /* renamed from: x1 */
        public double f97751x1;

        /* renamed from: x2 */
        public double f97752x2;

        /* renamed from: y1 */
        public double f97753y1;

        /* renamed from: y2 */
        public double f97754y2;

        public Double() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            double min = Math.min(Math.min(this.f97751x1, this.f97752x2), Math.min(this.ctrlx1, this.ctrlx2));
            double min2 = Math.min(Math.min(this.f97753y1, this.f97754y2), Math.min(this.ctrly1, this.ctrly2));
            return new Rectangle2D.Double(min, min2, Math.max(Math.max(this.f97751x1, this.f97752x2), Math.max(this.ctrlx1, this.ctrlx2)) - min, Math.max(Math.max(this.f97753y1, this.f97754y2), Math.max(this.ctrly1, this.ctrly2)) - min2);
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getCtrlP1() {
            return new Point2D.Double(this.ctrlx1, this.ctrly1);
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getCtrlP2() {
            return new Point2D.Double(this.ctrlx2, this.ctrly2);
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlX1() {
            return this.ctrlx1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlX2() {
            return this.ctrlx2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlY1() {
            return this.ctrly1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlY2() {
            return this.ctrly2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getP1() {
            return new Point2D.Double(this.f97751x1, this.f97753y1);
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getP2() {
            return new Point2D.Double(this.f97752x2, this.f97754y2);
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getX1() {
            return this.f97751x1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getX2() {
            return this.f97752x2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getY1() {
            return this.f97753y1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getY2() {
            return this.f97754y2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public void setCurve(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
            this.f97751x1 = d;
            this.f97753y1 = d2;
            this.ctrlx1 = d3;
            this.ctrly1 = d4;
            this.ctrlx2 = d5;
            this.ctrly2 = d6;
            this.f97752x2 = d7;
            this.f97754y2 = d8;
        }

        public Double(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
            setCurve(d, d2, d3, d4, d5, d6, d7, d8);
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends CubicCurve2D implements Serializable {
        private static final long serialVersionUID = -1272015596714244385L;
        public float ctrlx1;
        public float ctrlx2;
        public float ctrly1;
        public float ctrly2;

        /* renamed from: x1 */
        public float f97755x1;

        /* renamed from: x2 */
        public float f97756x2;

        /* renamed from: y1 */
        public float f97757y1;

        /* renamed from: y2 */
        public float f97758y2;

        public Float() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            float min = Math.min(Math.min(this.f97755x1, this.f97756x2), Math.min(this.ctrlx1, this.ctrlx2));
            float min2 = Math.min(Math.min(this.f97757y1, this.f97758y2), Math.min(this.ctrly1, this.ctrly2));
            return new Rectangle2D.Float(min, min2, Math.max(Math.max(this.f97755x1, this.f97756x2), Math.max(this.ctrlx1, this.ctrlx2)) - min, Math.max(Math.max(this.f97757y1, this.f97758y2), Math.max(this.ctrly1, this.ctrly2)) - min2);
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getCtrlP1() {
            return new Point2D.Float(this.ctrlx1, this.ctrly1);
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getCtrlP2() {
            return new Point2D.Float(this.ctrlx2, this.ctrly2);
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlX1() {
            return this.ctrlx1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlX2() {
            return this.ctrlx2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlY1() {
            return this.ctrly1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getCtrlY2() {
            return this.ctrly2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getP1() {
            return new Point2D.Float(this.f97755x1, this.f97757y1);
        }

        @Override // java.awt.geom.CubicCurve2D
        public Point2D getP2() {
            return new Point2D.Float(this.f97756x2, this.f97758y2);
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getX1() {
            return this.f97755x1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getX2() {
            return this.f97756x2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getY1() {
            return this.f97757y1;
        }

        @Override // java.awt.geom.CubicCurve2D
        public double getY2() {
            return this.f97758y2;
        }

        @Override // java.awt.geom.CubicCurve2D
        public void setCurve(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
            this.f97755x1 = (float) d;
            this.f97757y1 = (float) d2;
            this.ctrlx1 = (float) d3;
            this.ctrly1 = (float) d4;
            this.ctrlx2 = (float) d5;
            this.ctrly2 = (float) d6;
            this.f97756x2 = (float) d7;
            this.f97758y2 = (float) d8;
        }

        public Float(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
            setCurve(f, f2, f3, f4, f5, f6, f7, f8);
        }

        public void setCurve(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
            this.f97755x1 = f;
            this.f97757y1 = f2;
            this.ctrlx1 = f3;
            this.ctrly1 = f4;
            this.ctrlx2 = f5;
            this.ctrly2 = f6;
            this.f97756x2 = f7;
            this.f97758y2 = f8;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002b, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double bisectRoot(double[] r11, double r12, double r14) {
        /*
            r0 = 3
            double r1 = solveEqn(r11, r0, r12)
            double r3 = r14 - r12
            r5 = 4611686018427387904(0x4000000000000000, double:2.0)
        L9:
            double r3 = r3 / r5
            double r3 = r3 + r12
            int r7 = (r3 > r12 ? 1 : (r3 == r12 ? 0 : -1))
            if (r7 == 0) goto L2b
            int r7 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r7 == 0) goto L2b
            double r7 = solveEqn(r11, r0, r3)
            r9 = 0
            int r9 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r9 != 0) goto L1e
            return r3
        L1e:
            boolean r9 = oppositeSigns(r1, r7)
            if (r9 == 0) goto L26
            r14 = r3
            goto L28
        L26:
            r12 = r3
            r1 = r7
        L28:
            double r3 = r14 - r12
            goto L9
        L2b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.geom.CubicCurve2D.bisectRoot(double[], double, double):double");
    }

    private static double bisectRootWithHint(double[] dArr, double d, double d2, double d3) {
        double min = Math.min(Math.abs(d3 - d) / 64.0d, 0.0625d);
        double min2 = Math.min(Math.abs(d3 - d2) / 64.0d, 0.0625d);
        double d4 = d3 - min;
        double d5 = d3 + min2;
        double solveEqn = solveEqn(dArr, 3, d4);
        double solveEqn2 = solveEqn(dArr, 3, d5);
        double d6 = min2;
        double d7 = d2;
        double d8 = min;
        double d9 = d;
        while (oppositeSigns(solveEqn, solveEqn2)) {
            if (d4 >= d5) {
                return d4;
            }
            double d10 = d8 / 64.0d;
            d6 /= 64.0d;
            double d11 = d3 - d10;
            double d12 = d3 + d6;
            d8 = d10;
            d9 = d4;
            d4 = d11;
            solveEqn = solveEqn(dArr, 3, d11);
            solveEqn2 = solveEqn(dArr, 3, d12);
            d7 = d5;
            d5 = d12;
        }
        return solveEqn == 0.0d ? d4 : solveEqn2 == 0.0d ? d5 : bisectRoot(dArr, d9, d7);
    }

    private static int fixRoots(double[] dArr, double[] dArr2, int i) {
        double[] dArr3 = {dArr[1], dArr[2] * 2.0d, dArr[3] * 3.0d};
        int solveQuadratic = QuadCurve2D.solveQuadratic(dArr3, dArr3);
        if (solveQuadratic == 2 && dArr3[0] == dArr3[1]) {
            solveQuadratic--;
        }
        if (solveQuadratic == 2) {
            double d = dArr3[0];
            double d2 = dArr3[1];
            if (d > d2) {
                dArr3[0] = d2;
                dArr3[1] = d;
            }
        }
        if (i == 3) {
            double rootUpperBound = getRootUpperBound(dArr);
            double d3 = -rootUpperBound;
            Arrays.sort(dArr2, 0, i);
            if (solveQuadratic == 2) {
                dArr2[0] = refineRootWithHint(dArr, d3, dArr3[0], dArr2[0]);
                dArr2[1] = refineRootWithHint(dArr, dArr3[0], dArr3[1], dArr2[1]);
                dArr2[2] = refineRootWithHint(dArr, dArr3[1], rootUpperBound, dArr2[2]);
                return 3;
            }
            if (solveQuadratic == 1) {
                double d4 = dArr[3];
                double d5 = dArr3[0];
                double solveEqn = solveEqn(dArr, 3, d5);
                if (oppositeSigns(-d4, solveEqn)) {
                    dArr2[0] = bisectRootWithHint(dArr, d3, d5, dArr2[0]);
                } else if (oppositeSigns(solveEqn, d4)) {
                    dArr2[0] = bisectRootWithHint(dArr, d5, rootUpperBound, dArr2[2]);
                } else {
                    dArr2[0] = d5;
                }
            } else if (solveQuadratic == 0) {
                dArr2[0] = bisectRootWithHint(dArr, d3, rootUpperBound, dArr2[1]);
            }
        } else if (i == 2 && solveQuadratic == 2) {
            double d6 = dArr2[0];
            double d7 = dArr2[1];
            double d8 = dArr3[0];
            double d9 = dArr3[1];
            if (Math.abs(d8 - d6) <= Math.abs(d9 - d6)) {
                d8 = d9;
            }
            double solveEqn2 = solveEqn(dArr, 3, d8);
            if (iszero(solveEqn2, Math.ulp(d8) * 1.0E7d)) {
                if (Math.abs(solveEqn(dArr, 3, d7)) >= Math.abs(solveEqn2)) {
                    d7 = d8;
                }
                dArr2[1] = d7;
                return 2;
            }
        }
        return 1;
    }

    public static double getFlatness(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        return Math.sqrt(getFlatnessSq(d, d2, d3, d4, d5, d6, d7, d8));
    }

    public static double getFlatnessSq(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        return Math.max(Line2D.ptSegDistSq(d, d2, d7, d8, d3, d4), Line2D.ptSegDistSq(d, d2, d7, d8, d5, d6));
    }

    private static double getRootUpperBound(double[] dArr) {
        double d = dArr[3];
        double max = (Math.max(Math.max(Math.abs(dArr[2]), Math.abs(dArr[1])), Math.abs(dArr[0])) / Math.abs(d)) + 1.0d;
        return max + Math.ulp(max) + 1.0d;
    }

    private static boolean inInterval(double d, double d2, double d3) {
        return d2 <= d && d <= d3;
    }

    private static boolean iszero(double d, double d2) {
        return within(d, 0.0d, d2);
    }

    private static boolean oppositeSigns(double d, double d2) {
        return (d < 0.0d && d2 > 0.0d) || (d > 0.0d && d2 < 0.0d);
    }

    private int rectCrossings(double d, double d2, double d3, double d4) {
        int i = 0;
        return (!(getX1() == getX2() && getY1() == getY2()) && (i = Curve.rectCrossingsForLine(0, d, d2, d + d3, d2 + d4, getX1(), getY1(), getX2(), getY2())) == Integer.MIN_VALUE) ? i : Curve.rectCrossingsForCubic(i, d, d2, d + d3, d2 + d4, getX2(), getY2(), getCtrlX2(), getCtrlY2(), getCtrlX1(), getCtrlY1(), getX1(), getY1(), 0);
    }

    private static double refineRootWithHint(double[] dArr, double d, double d2, double d3) {
        if (!inInterval(d3, d, d2)) {
            return d3;
        }
        int i = 0;
        double[] dArr2 = {dArr[1], dArr[2] * 2.0d, dArr[3] * 3.0d};
        double d4 = d3;
        while (i < 3) {
            double solveEqn = solveEqn(dArr2, 2, d4);
            double solveEqn2 = solveEqn(dArr, 3, d4);
            double d5 = (-(solveEqn2 / solveEqn)) + d4;
            if (solveEqn == 0.0d || solveEqn2 == 0.0d || d4 == d5) {
                break;
            }
            i++;
            d4 = d5;
        }
        return (within(d4, d3, Math.ulp(d3) * 1000.0d) && inInterval(d4, d, d2)) ? d4 : d3;
    }

    public static int solveCubic(double[] dArr) {
        return solveCubic(dArr, dArr);
    }

    private static double solveEqn(double[] dArr, int i, double d) {
        double d2 = dArr[i];
        while (true) {
            i--;
            if (i < 0) {
                return d2;
            }
            d2 = (d2 * d) + dArr[i];
        }
    }

    private static boolean within(double d, double d2, double d3) {
        double d4 = d2 - d;
        return d4 <= d3 && d4 >= (-d3);
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        if ((d * 0.0d) + (d2 * 0.0d) != 0.0d) {
            return false;
        }
        double x1 = getX1();
        double y1 = getY1();
        double x2 = getX2();
        double y2 = getY2();
        return ((Curve.pointCrossingsForLine(d, d2, x1, y1, x2, y2) + Curve.pointCrossingsForCubic(d, d2, x1, y1, getCtrlX1(), getCtrlY1(), getCtrlX2(), getCtrlY2(), x2, y2, 0)) & 1) == 1;
    }

    @Override // java.awt.Shape
    public Rectangle getBounds() {
        return getBounds2D().getBounds();
    }

    public abstract Point2D getCtrlP1();

    public abstract Point2D getCtrlP2();

    public abstract double getCtrlX1();

    public abstract double getCtrlX2();

    public abstract double getCtrlY1();

    public abstract double getCtrlY2();

    public abstract Point2D getP1();

    public abstract Point2D getP2();

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new CubicIterator(this, affineTransform);
    }

    public abstract double getX1();

    public abstract double getX2();

    public abstract double getY1();

    public abstract double getY2();

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        return d3 > 0.0d && d4 > 0.0d && rectCrossings(d, d2, d3, d4) != 0;
    }

    public abstract void setCurve(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8);

    public void setCurve(double[] dArr, int i) {
        setCurve(dArr[i + 0], dArr[i + 1], dArr[i + 2], dArr[i + 3], dArr[i + 4], dArr[i + 5], dArr[i + 6], dArr[i + 7]);
    }

    public void subdivide(CubicCurve2D cubicCurve2D, CubicCurve2D cubicCurve2D2) {
        subdivide(this, cubicCurve2D, cubicCurve2D2);
    }

    public static double getFlatness(double[] dArr, int i) {
        return getFlatness(dArr[i + 0], dArr[i + 1], dArr[i + 2], dArr[i + 3], dArr[i + 4], dArr[i + 5], dArr[i + 6], dArr[i + 7]);
    }

    public static int solveCubic(double[] dArr, double[] dArr2) {
        int i;
        double[] dArr3 = dArr;
        double d = dArr3[3];
        if (d == 0.0d) {
            return QuadCurve2D.solveQuadratic(dArr, dArr2);
        }
        double d2 = dArr3[2] / d;
        double d3 = dArr3[1] / d;
        double d4 = dArr3[0] / d;
        double d5 = d2 * d2;
        double d6 = (((-0.3333333333333333d) * d5) + d3) * 0.3333333333333333d;
        double d7 = 0.07407407407407407d * d2 * d5;
        double d8 = d2 * 0.3333333333333333d;
        double d9 = 0.5d * ((d7 - (d3 * d8)) + d4);
        double d10 = d6 * d6 * d6;
        double d11 = (d9 * d9) + d10;
        if (d11 < 0.0d) {
            double acos = Math.acos((-d9) / Math.sqrt(-d10)) * 0.3333333333333333d;
            double sqrt = Math.sqrt(-d6) * 2.0d;
            if (dArr2 == dArr3) {
                dArr3 = Arrays.copyOf(dArr3, 4);
            }
            dArr2[0] = Math.cos(acos) * sqrt;
            double d12 = -sqrt;
            dArr2[1] = Math.cos(acos + 1.0471975511965976d) * d12;
            dArr2[2] = d12 * Math.cos(acos - 1.0471975511965976d);
            for (int i2 = 0; i2 < 3; i2++) {
                dArr2[i2] = dArr2[i2] - d8;
            }
            i = 3;
        } else {
            double sqrt2 = Math.sqrt(d11);
            double cbrt = Math.cbrt(sqrt2 - d9);
            double d13 = -Math.cbrt(sqrt2 + d9);
            double d14 = cbrt + d13;
            double ulp = Math.ulp(Math.abs(d14) + Math.abs(d8)) * 1.2E9d;
            if (iszero(d11, ulp) || within(cbrt, d13, ulp)) {
                if (dArr2 == dArr3) {
                    dArr3 = Arrays.copyOf(dArr3, 4);
                }
                dArr2[1] = (-(d14 / 2.0d)) - d8;
                i = 2;
            } else {
                i = 1;
            }
            dArr2[0] = d14 - d8;
        }
        if (i > 1) {
            i = fixRoots(dArr3, dArr2, i);
        }
        if (i > 2) {
            double d15 = dArr2[2];
            if (d15 == dArr2[1] || d15 == dArr2[0]) {
                i--;
            }
        }
        if (i <= 1 || dArr2[1] != dArr2[0]) {
            return i;
        }
        int i3 = i - 1;
        dArr2[1] = dArr2[i3];
        return i3;
    }

    public static void subdivide(CubicCurve2D cubicCurve2D, CubicCurve2D cubicCurve2D2, CubicCurve2D cubicCurve2D3) {
        double x1 = cubicCurve2D.getX1();
        double y1 = cubicCurve2D.getY1();
        double ctrlX1 = cubicCurve2D.getCtrlX1();
        double ctrlY1 = cubicCurve2D.getCtrlY1();
        double ctrlX2 = cubicCurve2D.getCtrlX2();
        double ctrlY2 = cubicCurve2D.getCtrlY2();
        double x2 = cubicCurve2D.getX2();
        double y2 = cubicCurve2D.getY2();
        double d = (ctrlX1 + ctrlX2) / 2.0d;
        double d2 = (ctrlY1 + ctrlY2) / 2.0d;
        double d3 = (ctrlX1 + x1) / 2.0d;
        double d4 = (ctrlY1 + y1) / 2.0d;
        double d5 = (x2 + ctrlX2) / 2.0d;
        double d6 = (y2 + ctrlY2) / 2.0d;
        double d7 = (d3 + d) / 2.0d;
        double d8 = (d4 + d2) / 2.0d;
        double d9 = (d5 + d) / 2.0d;
        double d10 = (d6 + d2) / 2.0d;
        double d11 = (d7 + d9) / 2.0d;
        double d12 = (d8 + d10) / 2.0d;
        if (cubicCurve2D2 != null) {
            cubicCurve2D2.setCurve(x1, y1, d3, d4, d7, d8, d11, d12);
        }
        if (cubicCurve2D3 != null) {
            cubicCurve2D3.setCurve(d11, d12, d9, d10, d5, d6, x2, y2);
        }
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return new FlatteningPathIterator(getPathIterator(affineTransform), d);
    }

    @Override // java.awt.Shape
    public boolean intersects(Rectangle2D rectangle2D) {
        return intersects(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    public void setCurve(Point2D point2D, Point2D point2D2, Point2D point2D3, Point2D point2D4) {
        setCurve(point2D.getX(), point2D.getY(), point2D2.getX(), point2D2.getY(), point2D3.getX(), point2D3.getY(), point2D4.getX(), point2D4.getY());
    }

    public double getFlatness() {
        return getFlatness(getX1(), getY1(), getCtrlX1(), getCtrlY1(), getCtrlX2(), getCtrlY2(), getX2(), getY2());
    }

    public static double getFlatnessSq(double[] dArr, int i) {
        return getFlatnessSq(dArr[i + 0], dArr[i + 1], dArr[i + 2], dArr[i + 3], dArr[i + 4], dArr[i + 5], dArr[i + 6], dArr[i + 7]);
    }

    public double getFlatnessSq() {
        return getFlatnessSq(getX1(), getY1(), getCtrlX1(), getCtrlY1(), getCtrlX2(), getCtrlY2(), getX2(), getY2());
    }

    public void setCurve(Point2D[] point2DArr, int i) {
        int i2 = i + 0;
        int i3 = i + 1;
        int i4 = i + 2;
        int i5 = i + 3;
        setCurve(point2DArr[i2].getX(), point2DArr[i2].getY(), point2DArr[i3].getX(), point2DArr[i3].getY(), point2DArr[i4].getX(), point2DArr[i4].getY(), point2DArr[i5].getX(), point2DArr[i5].getY());
    }

    @Override // java.awt.Shape
    public boolean contains(Point2D point2D) {
        return contains(point2D.getX(), point2D.getY());
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        int rectCrossings;
        return d3 > 0.0d && d4 > 0.0d && (rectCrossings = rectCrossings(d, d2, d3, d4)) != 0 && rectCrossings != Integer.MIN_VALUE;
    }

    public void setCurve(CubicCurve2D cubicCurve2D) {
        setCurve(cubicCurve2D.getX1(), cubicCurve2D.getY1(), cubicCurve2D.getCtrlX1(), cubicCurve2D.getCtrlY1(), cubicCurve2D.getCtrlX2(), cubicCurve2D.getCtrlY2(), cubicCurve2D.getX2(), cubicCurve2D.getY2());
    }

    @Override // java.awt.Shape
    public boolean contains(Rectangle2D rectangle2D) {
        return contains(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    public static void subdivide(double[] dArr, int i, double[] dArr2, int i2, double[] dArr3, int i3) {
        double d = dArr[i + 0];
        double d2 = dArr[i + 1];
        double d3 = dArr[i + 2];
        double d4 = dArr[i + 3];
        double d5 = dArr[i + 4];
        double d6 = dArr[i + 5];
        double d7 = dArr[i + 6];
        double d8 = dArr[i + 7];
        if (dArr2 != null) {
            dArr2[i2 + 0] = d;
            dArr2[i2 + 1] = d2;
        }
        if (dArr3 != null) {
            dArr3[i3 + 6] = d7;
            dArr3[i3 + 7] = d8;
        }
        double d9 = (d + d3) / 2.0d;
        double d10 = (d2 + d4) / 2.0d;
        double d11 = (d7 + d5) / 2.0d;
        double d12 = (d8 + d6) / 2.0d;
        double d13 = (d3 + d5) / 2.0d;
        double d14 = (d4 + d6) / 2.0d;
        double d15 = (d9 + d13) / 2.0d;
        double d16 = (d10 + d14) / 2.0d;
        double d17 = (d13 + d11) / 2.0d;
        double d18 = (d14 + d12) / 2.0d;
        double d19 = (d15 + d17) / 2.0d;
        double d20 = (d16 + d18) / 2.0d;
        if (dArr2 != null) {
            dArr2[i2 + 2] = d9;
            dArr2[i2 + 3] = d10;
            dArr2[i2 + 4] = d15;
            dArr2[i2 + 5] = d16;
            dArr2[i2 + 6] = d19;
            dArr2[i2 + 7] = d20;
        }
        if (dArr3 != null) {
            dArr3[i3 + 0] = d19;
            dArr3[i3 + 1] = d20;
            dArr3[i3 + 2] = d17;
            dArr3[i3 + 3] = d18;
            dArr3[i3 + 4] = d11;
            dArr3[i3 + 5] = d12;
        }
    }
}
