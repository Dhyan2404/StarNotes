package java.awt.geom;

import java.awt.geom.Rectangle2D;
import java.io.Serializable;

/* loaded from: classes5.dex */
public abstract class RoundRectangle2D extends RectangularShape {

    /* loaded from: classes5.dex */
    public static class Double extends RoundRectangle2D implements Serializable {
        private static final long serialVersionUID = 1048939333485206117L;
        public double archeight;
        public double arcwidth;
        public double height;
        public double width;

        /* renamed from: x */
        public double f97805x;

        /* renamed from: y */
        public double f97806y;

        public Double() {
        }

        @Override // java.awt.geom.RoundRectangle2D
        public double getArcHeight() {
            return this.archeight;
        }

        @Override // java.awt.geom.RoundRectangle2D
        public double getArcWidth() {
            return this.arcwidth;
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            return new Rectangle2D.Double(this.f97805x, this.f97806y, this.width, this.height);
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
            return this.f97805x;
        }

        @Override // java.awt.geom.RectangularShape
        public double getY() {
            return this.f97806y;
        }

        @Override // java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return this.width <= 0.0d || this.height <= 0.0d;
        }

        @Override // java.awt.geom.RoundRectangle2D
        public void setRoundRect(double d, double d2, double d3, double d4, double d5, double d6) {
            this.f97805x = d;
            this.f97806y = d2;
            this.width = d3;
            this.height = d4;
            this.arcwidth = d5;
            this.archeight = d6;
        }

        public Double(double d, double d2, double d3, double d4, double d5, double d6) {
            setRoundRect(d, d2, d3, d4, d5, d6);
        }

        @Override // java.awt.geom.RoundRectangle2D
        public void setRoundRect(RoundRectangle2D roundRectangle2D) {
            this.f97805x = roundRectangle2D.getX();
            this.f97806y = roundRectangle2D.getY();
            this.width = roundRectangle2D.getWidth();
            this.height = roundRectangle2D.getHeight();
            this.arcwidth = roundRectangle2D.getArcWidth();
            this.archeight = roundRectangle2D.getArcHeight();
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends RoundRectangle2D implements Serializable {
        private static final long serialVersionUID = -3423150618393866922L;
        public float archeight;
        public float arcwidth;
        public float height;
        public float width;

        /* renamed from: x */
        public float f97807x;

        /* renamed from: y */
        public float f97808y;

        public Float() {
        }

        @Override // java.awt.geom.RoundRectangle2D
        public double getArcHeight() {
            return this.archeight;
        }

        @Override // java.awt.geom.RoundRectangle2D
        public double getArcWidth() {
            return this.arcwidth;
        }

        @Override // java.awt.Shape
        public Rectangle2D getBounds2D() {
            return new Rectangle2D.Float(this.f97807x, this.f97808y, this.width, this.height);
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
            return this.f97807x;
        }

        @Override // java.awt.geom.RectangularShape
        public double getY() {
            return this.f97808y;
        }

        @Override // java.awt.geom.RectangularShape
        public boolean isEmpty() {
            return this.width <= 0.0f || this.height <= 0.0f;
        }

        public void setRoundRect(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f97807x = f;
            this.f97808y = f2;
            this.width = f3;
            this.height = f4;
            this.arcwidth = f5;
            this.archeight = f6;
        }

        public Float(float f, float f2, float f3, float f4, float f5, float f6) {
            setRoundRect(f, f2, f3, f4, f5, f6);
        }

        @Override // java.awt.geom.RoundRectangle2D
        public void setRoundRect(double d, double d2, double d3, double d4, double d5, double d6) {
            this.f97807x = (float) d;
            this.f97808y = (float) d2;
            this.width = (float) d3;
            this.height = (float) d4;
            this.arcwidth = (float) d5;
            this.archeight = (float) d6;
        }

        @Override // java.awt.geom.RoundRectangle2D
        public void setRoundRect(RoundRectangle2D roundRectangle2D) {
            this.f97807x = (float) roundRectangle2D.getX();
            this.f97808y = (float) roundRectangle2D.getY();
            this.width = (float) roundRectangle2D.getWidth();
            this.height = (float) roundRectangle2D.getHeight();
            this.arcwidth = (float) roundRectangle2D.getArcWidth();
            this.archeight = (float) roundRectangle2D.getArcHeight();
        }
    }

    private int classify(double d, double d2, double d3, double d4) {
        if (d < d2) {
            return 0;
        }
        if (d < d2 + d4) {
            return 1;
        }
        if (d < d3 - d4) {
            return 2;
        }
        return d < d3 ? 3 : 4;
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2) {
        if (isEmpty()) {
            return false;
        }
        double x = getX();
        double y = getY();
        double width = getWidth() + x;
        double height = getHeight() + y;
        if (d < x || d2 < y || d >= width || d2 >= height) {
            return false;
        }
        double min = Math.min(getWidth(), Math.abs(getArcWidth())) / 2.0d;
        double min2 = Math.min(getHeight(), Math.abs(getArcHeight())) / 2.0d;
        double d3 = x + min;
        if (d >= d3) {
            d3 = width - min;
            if (d < d3) {
                return true;
            }
        }
        double d4 = y + min2;
        if (d2 >= d4) {
            d4 = height - min2;
            if (d2 < d4) {
                return true;
            }
        }
        double d5 = (d - d3) / min;
        double d6 = (d2 - d4) / min2;
        return (d5 * d5) + (d6 * d6) <= 1.0d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RoundRectangle2D)) {
            return false;
        }
        RoundRectangle2D roundRectangle2D = (RoundRectangle2D) obj;
        return getX() == roundRectangle2D.getX() && getY() == roundRectangle2D.getY() && getWidth() == roundRectangle2D.getWidth() && getHeight() == roundRectangle2D.getHeight() && getArcWidth() == roundRectangle2D.getArcWidth() && getArcHeight() == roundRectangle2D.getArcHeight();
    }

    public abstract double getArcHeight();

    public abstract double getArcWidth();

    @Override // java.awt.Shape
    public PathIterator getPathIterator(AffineTransform affineTransform) {
        return new RoundRectIterator(this, affineTransform);
    }

    public int hashCode() {
        long doubleToLongBits = java.lang.Double.doubleToLongBits(getX()) + (java.lang.Double.doubleToLongBits(getY()) * 37) + (java.lang.Double.doubleToLongBits(getWidth()) * 43) + (java.lang.Double.doubleToLongBits(getHeight()) * 47) + (java.lang.Double.doubleToLongBits(getArcWidth()) * 53) + (java.lang.Double.doubleToLongBits(getArcHeight()) * 59);
        return ((int) doubleToLongBits) ^ ((int) (doubleToLongBits >> 32));
    }

    @Override // java.awt.Shape
    public boolean intersects(double d, double d2, double d3, double d4) {
        if (!isEmpty() && d3 > 0.0d && d4 > 0.0d) {
            double x = getX();
            double y = getY();
            double width = x + getWidth();
            double height = y + getHeight();
            double d5 = d + d3;
            if (d5 > x && d < width) {
                double d6 = d2 + d4;
                if (d6 > y && d2 < height) {
                    double min = Math.min(getWidth(), Math.abs(getArcWidth())) / 2.0d;
                    double min2 = Math.min(getHeight(), Math.abs(getArcHeight())) / 2.0d;
                    int classify = classify(d, x, width, min);
                    int classify2 = classify(d5, x, width, min);
                    int classify3 = classify(d2, y, height, min2);
                    int classify4 = classify(d6, y, height, min2);
                    if (classify == 2 || classify2 == 2 || classify3 == 2 || classify4 == 2) {
                        return true;
                    }
                    if ((classify < 2 && classify2 > 2) || (classify3 < 2 && classify4 > 2)) {
                        return true;
                    }
                    double d7 = (classify2 == 1 ? d5 - (x + min) : d - (width - min)) / min;
                    double d8 = (classify4 == 1 ? d6 - (y + min2) : d2 - (height - min2)) / min2;
                    return (d7 * d7) + (d8 * d8) <= 1.0d;
                }
            }
        }
        return false;
    }

    @Override // java.awt.geom.RectangularShape
    public void setFrame(double d, double d2, double d3, double d4) {
        setRoundRect(d, d2, d3, d4, getArcWidth(), getArcHeight());
    }

    public abstract void setRoundRect(double d, double d2, double d3, double d4, double d5, double d6);

    public void setRoundRect(RoundRectangle2D roundRectangle2D) {
        setRoundRect(roundRectangle2D.getX(), roundRectangle2D.getY(), roundRectangle2D.getWidth(), roundRectangle2D.getHeight(), roundRectangle2D.getArcWidth(), roundRectangle2D.getArcHeight());
    }

    @Override // java.awt.Shape
    public boolean contains(double d, double d2, double d3, double d4) {
        if (isEmpty() || d3 <= 0.0d || d4 <= 0.0d || !contains(d, d2)) {
            return false;
        }
        double d5 = d3 + d;
        if (!contains(d5, d2)) {
            return false;
        }
        double d6 = d2 + d4;
        return contains(d, d6) && contains(d5, d6);
    }
}
