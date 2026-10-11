package java.awt.geom;

import java.awt.geom.Rectangle2D;
import java.io.Serializable;

/* loaded from: classes5.dex */
public abstract class Ellipse2D extends RectangularShape {

    /* loaded from: classes5.dex */
    public static class Double extends Ellipse2D implements Serializable {
        private static final long serialVersionUID = 5555464816372320683L;
        public double height;
        public double width;

        /* renamed from: x */
        public double f97759x;

        /* renamed from: y */
        public double f97760y;

        public Double() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            return new Rectangle2D.Double(this.f97759x, this.f97760y, this.width, this.height);
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
            return this.f97759x;
        }

        @Override // java.awt.geom.RectangularShape
        public double getY() {
            return this.f97760y;
        }

        @Override // java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return this.width <= 0.0d || this.height <= 0.0d;
        }

        @Override // java.awt.geom.RectangularShape
        public void setFrame(double d, double d2, double d3, double d4) {
            this.f97759x = d;
            this.f97760y = d2;
            this.width = d3;
            this.height = d4;
        }

        public Double(double d, double d2, double d3, double d4) {
            setFrame(d, d2, d3, d4);
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends Ellipse2D implements Serializable {
        private static final long serialVersionUID = -6633761252372475977L;
        public float height;
        public float width;

        /* renamed from: x */
        public float f97761x;

        /* renamed from: y */
        public float f97762y;

        public Float() {
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            return new Rectangle2D.Float(this.f97761x, this.f97762y, this.width, this.height);
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
            return this.f97761x;
        }

        @Override // java.awt.geom.RectangularShape
        public double getY() {
            return this.f97762y;
        }

        @Override // java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return ((double) this.width) <= 0.0d || ((double) this.height) <= 0.0d;
        }

        public void setFrame(float f, float f2, float f3, float f4) {
            this.f97761x = f;
            this.f97762y = f2;
            this.width = f3;
            this.height = f4;
        }

        public Float(float f, float f2, float f3, float f4) {
            setFrame(f, f2, f3, f4);
        }

        @Override // java.awt.geom.RectangularShape
        public void setFrame(double d, double d2, double d3, double d4) {
            this.f97761x = (float) d;
            this.f97762y = (float) d2;
            this.width = (float) d3;
            this.height = (float) d4;
        }
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        double width = getWidth();
        if (width <= 0.0d) {
            return false;
        }
        double x = ((d - getX()) / width) - 0.5d;
        double height = getHeight();
        if (height <= 0.0d) {
            return false;
        }
        double y = ((d2 - getY()) / height) - 0.5d;
        return (x * x) + (y * y) < 0.25d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ellipse2D)) {
            return false;
        }
        Ellipse2D ellipse2D = (Ellipse2D) obj;
        return getX() == ellipse2D.getX() && getY() == ellipse2D.getY() && getWidth() == ellipse2D.getWidth() && getHeight() == ellipse2D.getHeight();
    }

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new EllipseIterator(this, affineTransform);
    }

    public int hashCode() {
        long doubleToLongBits = java.lang.Double.doubleToLongBits(getX()) + (java.lang.Double.doubleToLongBits(getY()) * 37) + (java.lang.Double.doubleToLongBits(getWidth()) * 43) + (java.lang.Double.doubleToLongBits(getHeight()) * 47);
        return ((int) doubleToLongBits) ^ ((int) (doubleToLongBits >> 32));
    }

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        double d5 = 0.0d;
        if (d3 <= 0.0d || d4 <= 0.0d) {
            return false;
        }
        double width = getWidth();
        if (width <= 0.0d) {
            return false;
        }
        double x = ((d - getX()) / width) - 0.5d;
        double d6 = (d3 / width) + x;
        double height = getHeight();
        if (height <= 0.0d) {
            return false;
        }
        double y = ((d2 - getY()) / height) - 0.5d;
        double d7 = (d4 / height) + y;
        if (x <= 0.0d) {
            x = d6 < 0.0d ? d6 : 0.0d;
        }
        if (y > 0.0d) {
            d5 = y;
        } else if (d7 < 0.0d) {
            d5 = d7;
        }
        return (x * x) + (d5 * d5) < 0.25d;
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        if (contains(d, d2)) {
            double d5 = d3 + d;
            if (contains(d5, d2)) {
                double d6 = d2 + d4;
                if (contains(d, d6) && contains(d5, d6)) {
                    return true;
                }
            }
        }
        return false;
    }
}
