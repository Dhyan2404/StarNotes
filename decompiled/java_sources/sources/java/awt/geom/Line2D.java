package java.awt.geom;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.Serializable;

/* loaded from: classes5.dex */
public abstract class Line2D implements Shape, Cloneable {

    /* loaded from: classes5.dex */
    public static class Double extends Line2D implements Serializable {
        private static final long serialVersionUID = 7979627399746467499L;

        /* renamed from: x1 */
        public double f97767x1;

        /* renamed from: x2 */
        public double f97768x2;

        /* renamed from: y1 */
        public double f97769y1;

        /* renamed from: y2 */
        public double f97770y2;

        public Double() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            double d;
            double d2;
            double d3;
            double d4;
            double d5 = this.f97767x1;
            double d6 = this.f97768x2;
            if (d5 < d6) {
                d2 = d5;
                d = d6 - d5;
            } else {
                d = d5 - d6;
                d2 = d6;
            }
            double d7 = this.f97769y1;
            double d8 = this.f97770y2;
            if (d7 < d8) {
                d4 = d7;
                d3 = d8 - d7;
            } else {
                d3 = d7 - d8;
                d4 = d8;
            }
            return new Rectangle2D.Double(d2, d4, d, d3);
        }

        @Override // java.awt.geom.Line2D
        public Point2D getP1() {
            return new Point2D.Double(this.f97767x1, this.f97769y1);
        }

        @Override // java.awt.geom.Line2D
        public Point2D getP2() {
            return new Point2D.Double(this.f97768x2, this.f97770y2);
        }

        @Override // java.awt.geom.Line2D
        public double getX1() {
            return this.f97767x1;
        }

        @Override // java.awt.geom.Line2D
        public double getX2() {
            return this.f97768x2;
        }

        @Override // java.awt.geom.Line2D
        public double getY1() {
            return this.f97769y1;
        }

        @Override // java.awt.geom.Line2D
        public double getY2() {
            return this.f97770y2;
        }

        @Override // java.awt.geom.Line2D
        public void setLine(double d, double d2, double d3, double d4) {
            this.f97767x1 = d;
            this.f97769y1 = d2;
            this.f97768x2 = d3;
            this.f97770y2 = d4;
        }

        public Double(double d, double d2, double d3, double d4) {
            setLine(d, d2, d3, d4);
        }

        public Double(Point2D point2D, Point2D point2D2) {
            setLine(point2D, point2D2);
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends Line2D implements Serializable {
        private static final long serialVersionUID = 6161772511649436349L;

        /* renamed from: x1 */
        public float f97771x1;

        /* renamed from: x2 */
        public float f97772x2;

        /* renamed from: y1 */
        public float f97773y1;

        /* renamed from: y2 */
        public float f97774y2;

        public Float() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            float f;
            float f2;
            float f3 = this.f97771x1;
            float f4 = this.f97772x2;
            if (f3 < f4) {
                f = f4 - f3;
            } else {
                f = f3 - f4;
                f3 = f4;
            }
            float f5 = this.f97773y1;
            float f6 = this.f97774y2;
            if (f5 < f6) {
                f2 = f6 - f5;
            } else {
                float f7 = f5 - f6;
                f5 = f6;
                f2 = f7;
            }
            return new Rectangle2D.Float(f3, f5, f, f2);
        }

        @Override // java.awt.geom.Line2D
        public Point2D getP1() {
            return new Point2D.Float(this.f97771x1, this.f97773y1);
        }

        @Override // java.awt.geom.Line2D
        public Point2D getP2() {
            return new Point2D.Float(this.f97772x2, this.f97774y2);
        }

        @Override // java.awt.geom.Line2D
        public double getX1() {
            return this.f97771x1;
        }

        @Override // java.awt.geom.Line2D
        public double getX2() {
            return this.f97772x2;
        }

        @Override // java.awt.geom.Line2D
        public double getY1() {
            return this.f97773y1;
        }

        @Override // java.awt.geom.Line2D
        public double getY2() {
            return this.f97774y2;
        }

        @Override // java.awt.geom.Line2D
        public void setLine(double d, double d2, double d3, double d4) {
            this.f97771x1 = (float) d;
            this.f97773y1 = (float) d2;
            this.f97772x2 = (float) d3;
            this.f97774y2 = (float) d4;
        }

        public Float(float f, float f2, float f3, float f4) {
            setLine(f, f2, f3, f4);
        }

        public Float(Point2D point2D, Point2D point2D2) {
            setLine(point2D, point2D2);
        }

        public void setLine(float f, float f2, float f3, float f4) {
            this.f97771x1 = f;
            this.f97773y1 = f2;
            this.f97772x2 = f3;
            this.f97774y2 = f4;
        }
    }

    public static boolean linesIntersect(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        return relativeCCW(d, d2, d3, d4, d5, d6) * relativeCCW(d, d2, d3, d4, d7, d8) <= 0 && relativeCCW(d5, d6, d7, d8, d, d2) * relativeCCW(d5, d6, d7, d8, d3, d4) <= 0;
    }

    public static double ptLineDist(double d, double d2, double d3, double d4, double d5, double d6) {
        return Math.sqrt(ptLineDistSq(d, d2, d3, d4, d5, d6));
    }

    public static double ptLineDistSq(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d3 - d;
        double d8 = d4 - d2;
        double d9 = d5 - d;
        double d10 = d6 - d2;
        double d11 = (d9 * d7) + (d10 * d8);
        double d12 = ((d9 * d9) + (d10 * d10)) - ((d11 * d11) / ((d7 * d7) + (d8 * d8)));
        if (d12 < 0.0d) {
            return 0.0d;
        }
        return d12;
    }

    public static double ptSegDist(double d, double d2, double d3, double d4, double d5, double d6) {
        return Math.sqrt(ptSegDistSq(d, d2, d3, d4, d5, d6));
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double ptSegDistSq(double r2, double r4, double r6, double r8, double r10, double r12) {
        /*
            double r6 = r6 - r2
            double r8 = r8 - r4
            double r10 = r10 - r2
            double r12 = r12 - r4
            double r2 = r10 * r6
            double r4 = r12 * r8
            double r2 = r2 + r4
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L11
        Lf:
            r2 = r4
            goto L24
        L11:
            double r10 = r6 - r10
            double r12 = r8 - r12
            double r2 = r10 * r6
            double r0 = r12 * r8
            double r2 = r2 + r0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L1f
            goto Lf
        L1f:
            double r2 = r2 * r2
            double r6 = r6 * r6
            double r8 = r8 * r8
            double r6 = r6 + r8
            double r2 = r2 / r6
        L24:
            double r10 = r10 * r10
            double r12 = r12 * r12
            double r10 = r10 + r12
            double r10 = r10 - r2
            int r2 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r2 >= 0) goto L2d
            goto L2e
        L2d:
            r4 = r10
        L2e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.geom.Line2D.ptSegDistSq(double, double, double, double, double, double):double");
    }

    public static int relativeCCW(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d3 - d;
        double d8 = d4 - d2;
        double d9 = d5 - d;
        double d10 = d6 - d2;
        double d11 = (d9 * d8) - (d10 * d7);
        if (d11 == 0.0d) {
            d11 = (d9 * d7) + (d10 * d8);
            if (d11 > 0.0d) {
                d11 = ((d9 - d7) * d7) + ((d10 - d8) * d8);
                if (d11 < 0.0d) {
                    d11 = 0.0d;
                }
            }
        }
        if (d11 < 0.0d) {
            return -1;
        }
        return d11 > 0.0d ? 1 : 0;
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        return false;
    }

    @Override // java.awt.Shape
    public Rectangle getBounds() {
        return getBounds2D().getBounds();
    }

    public abstract Point2D getP1();

    public abstract Point2D getP2();

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new LineIterator(this, affineTransform);
    }

    public abstract double getX1();

    public abstract double getX2();

    public abstract double getY1();

    public abstract double getY2();

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        return intersects(new Rectangle2D.Double(d, d2, d3, d4));
    }

    public boolean intersectsLine(double d, double d2, double d3, double d4) {
        return linesIntersect(d, d2, d3, d4, getX1(), getY1(), getX2(), getY2());
    }

    public abstract void setLine(double d, double d2, double d3, double d4);

    public void setLine(Point2D point2D, Point2D point2D2) {
        setLine(point2D.getX(), point2D.getY(), point2D2.getX(), point2D2.getY());
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        return false;
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return new LineIterator(this, affineTransform);
    }

    @Override // java.awt.Shape
    public boolean intersects(Rectangle2D rectangle2D) {
        return rectangle2D.intersectsLine(getX1(), getY1(), getX2(), getY2());
    }

    public double ptLineDist(double d, double d2) {
        return ptLineDist(getX1(), getY1(), getX2(), getY2(), d, d2);
    }

    public double ptLineDistSq(double d, double d2) {
        return ptLineDistSq(getX1(), getY1(), getX2(), getY2(), d, d2);
    }

    public double ptSegDist(double d, double d2) {
        return ptSegDist(getX1(), getY1(), getX2(), getY2(), d, d2);
    }

    public double ptSegDistSq(double d, double d2) {
        return ptSegDistSq(getX1(), getY1(), getX2(), getY2(), d, d2);
    }

    public int relativeCCW(double d, double d2) {
        return relativeCCW(getX1(), getY1(), getX2(), getY2(), d, d2);
    }

    public void setLine(Line2D line2D) {
        setLine(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2());
    }

    @Override // java.awt.Shape
    public boolean contains(Point2D point2D) {
        return false;
    }

    public boolean intersectsLine(Line2D line2D) {
        return linesIntersect(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2(), getX1(), getY1(), getX2(), getY2());
    }

    public double ptLineDist(Point2D point2D) {
        return ptLineDist(getX1(), getY1(), getX2(), getY2(), point2D.getX(), point2D.getY());
    }

    public double ptLineDistSq(Point2D point2D) {
        return ptLineDistSq(getX1(), getY1(), getX2(), getY2(), point2D.getX(), point2D.getY());
    }

    public double ptSegDist(Point2D point2D) {
        return ptSegDist(getX1(), getY1(), getX2(), getY2(), point2D.getX(), point2D.getY());
    }

    public double ptSegDistSq(Point2D point2D) {
        return ptSegDistSq(getX1(), getY1(), getX2(), getY2(), point2D.getX(), point2D.getY());
    }

    public int relativeCCW(Point2D point2D) {
        return relativeCCW(getX1(), getY1(), getX2(), getY2(), point2D.getX(), point2D.getY());
    }

    @Override // java.awt.Shape
    public boolean contains(Rectangle2D rectangle2D) {
        return false;
    }
}
