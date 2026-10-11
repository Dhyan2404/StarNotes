package java.awt.geom;

import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public abstract class Rectangle2D extends RectangularShape {
    public static final int OUT_BOTTOM = 8;
    public static final int OUT_LEFT = 1;
    public static final int OUT_RIGHT = 4;
    public static final int OUT_TOP = 2;

    /* loaded from: classes5.dex */
    public static class Double extends Rectangle2D implements Serializable {
        private static final long serialVersionUID = 7771313791441850493L;
        public double height;
        public double width;

        /* renamed from: x */
        public double f97791x;

        /* renamed from: y */
        public double f97792y;

        public Double() {
        }

        @Override // java.awt.geom.Rectangle2D
        public Rectangle2D createIntersection(Rectangle2D rectangle2D) {
            Double r0 = new Double();
            Rectangle2D.intersect(this, rectangle2D, r0);
            return r0;
        }

        @Override // java.awt.geom.Rectangle2D
        public Rectangle2D createUnion(Rectangle2D rectangle2D) {
            Double r0 = new Double();
            Rectangle2D.union(this, rectangle2D, r0);
            return r0;
        }

        @Override // java.awt.geom.Rectangle2D, java.awt.Shape
        public Rectangle2D getBounds2D() {
            return new Double(this.f97791x, this.f97792y, this.width, this.height);
        }

        @Override // java.awt.geom.RectangularShape
        public double getHeight() {
            return this.height;
        }

        @Override // java.awt.geom.RectangularShape
        public double getWidth() {
            return this.width;
        }

        @Override // java.awt.geom.RectangularShape
        public double getX() {
            return this.f97791x;
        }

        @Override // java.awt.geom.RectangularShape
        public double getY() {
            return this.f97792y;
        }

        @Override // java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return this.width <= 0.0d || this.height <= 0.0d;
        }

        @Override // java.awt.geom.Rectangle2D
        public int outcode(double d, double d2) {
            int i;
            double d3 = this.width;
            if (d3 <= 0.0d) {
                i = 5;
            } else {
                double d4 = this.f97791x;
                i = d < d4 ? 1 : d > d4 + d3 ? 4 : 0;
            }
            double d5 = this.height;
            if (d5 <= 0.0d) {
                return i | 10;
            }
            double d6 = this.f97792y;
            return d2 < d6 ? i | 2 : d2 > d6 + d5 ? i | 8 : i;
        }

        @Override // java.awt.geom.Rectangle2D
        public void setRect(double d, double d2, double d3, double d4) {
            this.f97791x = d;
            this.f97792y = d2;
            this.width = d3;
            this.height = d4;
        }

        public String toString() {
            return getClass().getName() + "[x=" + this.f97791x + ",y=" + this.f97792y + ",w=" + this.width + ",h=" + this.height + IteratorUtils.f104924b;
        }

        public Double(double d, double d2, double d3, double d4) {
            setRect(d, d2, d3, d4);
        }

        @Override // java.awt.geom.Rectangle2D
        public void setRect(Rectangle2D rectangle2D) {
            this.f97791x = rectangle2D.getX();
            this.f97792y = rectangle2D.getY();
            this.width = rectangle2D.getWidth();
            this.height = rectangle2D.getHeight();
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends Rectangle2D implements Serializable {
        private static final long serialVersionUID = 3798716824173675777L;
        public float height;
        public float width;

        /* renamed from: x */
        public float f97793x;

        /* renamed from: y */
        public float f97794y;

        public Float() {
        }

        @Override // java.awt.geom.Rectangle2D
        public Rectangle2D createIntersection(Rectangle2D rectangle2D) {
            Rectangle2D rectangle2D2 = rectangle2D instanceof Float ? new Float() : new Double();
            Rectangle2D.intersect(this, rectangle2D, rectangle2D2);
            return rectangle2D2;
        }

        @Override // java.awt.geom.Rectangle2D
        public Rectangle2D createUnion(Rectangle2D rectangle2D) {
            Rectangle2D rectangle2D2 = rectangle2D instanceof Float ? new Float() : new Double();
            Rectangle2D.union(this, rectangle2D, rectangle2D2);
            return rectangle2D2;
        }

        @Override // java.awt.geom.Rectangle2D, java.awt.Shape
        public Rectangle2D getBounds2D() {
            return new Float(this.f97793x, this.f97794y, this.width, this.height);
        }

        @Override // java.awt.geom.RectangularShape
        public double getHeight() {
            return this.height;
        }

        @Override // java.awt.geom.RectangularShape
        public double getWidth() {
            return this.width;
        }

        @Override // java.awt.geom.RectangularShape
        public double getX() {
            return this.f97793x;
        }

        @Override // java.awt.geom.RectangularShape
        public double getY() {
            return this.f97794y;
        }

        @Override // java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return this.width <= 0.0f || this.height <= 0.0f;
        }

        @Override // java.awt.geom.Rectangle2D
        public int outcode(double d, double d2) {
            int i;
            float f = this.width;
            if (f <= 0.0f) {
                i = 5;
            } else {
                float f2 = this.f97793x;
                i = d < ((double) f2) ? 1 : d > ((double) f2) + ((double) f) ? 4 : 0;
            }
            float f3 = this.height;
            if (f3 <= 0.0f) {
                return i | 10;
            }
            float f4 = this.f97794y;
            return d2 < ((double) f4) ? i | 2 : d2 > ((double) f4) + ((double) f3) ? i | 8 : i;
        }

        public void setRect(float f, float f2, float f3, float f4) {
            this.f97793x = f;
            this.f97794y = f2;
            this.width = f3;
            this.height = f4;
        }

        public String toString() {
            return getClass().getName() + "[x=" + this.f97793x + ",y=" + this.f97794y + ",w=" + this.width + ",h=" + this.height + IteratorUtils.f104924b;
        }

        public Float(float f, float f2, float f3, float f4) {
            setRect(f, f2, f3, f4);
        }

        @Override // java.awt.geom.Rectangle2D
        public void setRect(double d, double d2, double d3, double d4) {
            this.f97793x = (float) d;
            this.f97794y = (float) d2;
            this.width = (float) d3;
            this.height = (float) d4;
        }

        @Override // java.awt.geom.Rectangle2D
        public void setRect(Rectangle2D rectangle2D) {
            this.f97793x = (float) rectangle2D.getX();
            this.f97794y = (float) rectangle2D.getY();
            this.width = (float) rectangle2D.getWidth();
            this.height = (float) rectangle2D.getHeight();
        }
    }

    public static void intersect(Rectangle2D rectangle2D, Rectangle2D rectangle2D2, Rectangle2D rectangle2D3) {
        double max = Math.max(rectangle2D.getMinX(), rectangle2D2.getMinX());
        double max2 = Math.max(rectangle2D.getMinY(), rectangle2D2.getMinY());
        rectangle2D3.setFrame(max, max2, Math.min(rectangle2D.getMaxX(), rectangle2D2.getMaxX()) - max, Math.min(rectangle2D.getMaxY(), rectangle2D2.getMaxY()) - max2);
    }

    public static void union(Rectangle2D rectangle2D, Rectangle2D rectangle2D2, Rectangle2D rectangle2D3) {
        rectangle2D3.setFrameFromDiagonal(Math.min(rectangle2D.getMinX(), rectangle2D2.getMinX()), Math.min(rectangle2D.getMinY(), rectangle2D2.getMinY()), Math.max(rectangle2D.getMaxX(), rectangle2D2.getMaxX()), Math.max(rectangle2D.getMaxY(), rectangle2D2.getMaxY()));
    }

    public void add(double d, double d2) {
        double min = Math.min(getMinX(), d);
        double max = Math.max(getMaxX(), d);
        double min2 = Math.min(getMinY(), d2);
        setRect(min, min2, max - min, Math.max(getMaxY(), d2) - min2);
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        double x = getX();
        double y = getY();
        return d >= x && d2 >= y && d < x + getWidth() && d2 < y + getHeight();
    }

    public abstract Rectangle2D createIntersection(Rectangle2D rectangle2D);

    public abstract Rectangle2D createUnion(Rectangle2D rectangle2D);

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Rectangle2D)) {
            return false;
        }
        Rectangle2D rectangle2D = (Rectangle2D) obj;
        return getX() == rectangle2D.getX() && getY() == rectangle2D.getY() && getWidth() == rectangle2D.getWidth() && getHeight() == rectangle2D.getHeight();
    }

    @Override // java.awt.Shape
    public Rectangle2D getBounds2D() {
        return (Rectangle2D) clone();
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new RectIterator(this, affineTransform);
    }

    public int hashCode() {
        long doubleToLongBits = java.lang.Double.doubleToLongBits(getX()) + (java.lang.Double.doubleToLongBits(getY()) * 37) + (java.lang.Double.doubleToLongBits(getWidth()) * 43) + (java.lang.Double.doubleToLongBits(getHeight()) * 47);
        return ((int) doubleToLongBits) ^ ((int) (doubleToLongBits >> 32));
    }

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        if (isEmpty() || d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        double x = getX();
        double y = getY();
        return d3 + d > x && d4 + d2 > y && d < x + getWidth() && d2 < y + getHeight();
    }

    public boolean intersectsLine(double d, double d2, double d3, double d4) {
        int outcode = outcode(d3, d4);
        if (outcode == 0) {
            return true;
        }
        double d5 = d;
        double d6 = d2;
        while (true) {
            int outcode2 = outcode(d5, d6);
            if (outcode2 == 0) {
                return true;
            }
            if ((outcode2 & outcode) != 0) {
                return false;
            }
            if ((outcode2 & 5) != 0) {
                double x = getX();
                if ((outcode2 & 4) != 0) {
                    x += getWidth();
                }
                d6 += ((x - d5) * (d4 - d6)) / (d3 - d5);
                d5 = x;
            } else {
                double y = getY();
                if ((outcode2 & 8) != 0) {
                    y += getHeight();
                }
                d5 += ((y - d6) * (d3 - d5)) / (d4 - d6);
                d6 = y;
            }
        }
    }

    public abstract int outcode(double d, double d2);

    public int outcode(Point2D point2D) {
        return outcode(point2D.getX(), point2D.getY());
    }

    @Override // java.awt.geom.RectangularShape
    public void setFrame(double d, double d2, double d3, double d4) {
        setRect(d, d2, d3, d4);
    }

    public abstract void setRect(double d, double d2, double d3, double d4);

    public void setRect(Rectangle2D rectangle2D) {
        setRect(rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getWidth(), rectangle2D.getHeight());
    }

    @Override // java.awt.geom.RectangularShape, java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform, double d) {
        return new RectIterator(this, affineTransform);
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        if (isEmpty() || d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        double x = getX();
        double y = getY();
        return d >= x && d2 >= y && d + d3 <= x + getWidth() && d2 + d4 <= y + getHeight();
    }

    public void add(Point2D point2D) {
        add(point2D.getX(), point2D.getY());
    }

    public void add(Rectangle2D rectangle2D) {
        double min = Math.min(getMinX(), rectangle2D.getMinX());
        double max = Math.max(getMaxX(), rectangle2D.getMaxX());
        double min2 = Math.min(getMinY(), rectangle2D.getMinY());
        setRect(min, min2, max - min, Math.max(getMaxY(), rectangle2D.getMaxY()) - min2);
    }

    public boolean intersectsLine(Line2D line2D) {
        return intersectsLine(line2D.getX1(), line2D.getY1(), line2D.getX2(), line2D.getY2());
    }
}
