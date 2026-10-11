package java.awt.geom;

import java.awt.InternalError;
import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public abstract class Point2D implements Cloneable {

    /* loaded from: classes5.dex */
    public static class Double extends Point2D implements Serializable {
        private static final long serialVersionUID = 6150783262733311327L;

        /* renamed from: x */
        public double f97775x;

        /* renamed from: y */
        public double f97776y;

        public Double() {
        }

        @Override // java.awt.geom.Point2D
        public double getX() {
            return this.f97775x;
        }

        @Override // java.awt.geom.Point2D
        public double getY() {
            return this.f97776y;
        }

        @Override // java.awt.geom.Point2D
        public void setLocation(double d, double d2) {
            this.f97775x = d;
            this.f97776y = d2;
        }

        public String toString() {
            return "Point2D.Double[" + this.f97775x + ", " + this.f97776y + IteratorUtils.f104924b;
        }

        public Double(double d, double d2) {
            this.f97775x = d;
            this.f97776y = d2;
        }
    }

    /* loaded from: classes5.dex */
    public static class Float extends Point2D implements Serializable {
        private static final long serialVersionUID = -2870572449815403710L;

        /* renamed from: x */
        public float f97777x;

        /* renamed from: y */
        public float f97778y;

        public Float() {
        }

        @Override // java.awt.geom.Point2D
        public double getX() {
            return this.f97777x;
        }

        @Override // java.awt.geom.Point2D
        public double getY() {
            return this.f97778y;
        }

        @Override // java.awt.geom.Point2D
        public void setLocation(double d, double d2) {
            this.f97777x = (float) d;
            this.f97778y = (float) d2;
        }

        public String toString() {
            return "Point2D.Float[" + this.f97777x + ", " + this.f97778y + IteratorUtils.f104924b;
        }

        public Float(float f, float f2) {
            this.f97777x = f;
            this.f97778y = f2;
        }

        public void setLocation(float f, float f2) {
            this.f97777x = f;
            this.f97778y = f2;
        }
    }

    public static double distance(double d, double d2, double d3, double d4) {
        double d5 = d - d3;
        double d6 = d2 - d4;
        return Math.sqrt((d5 * d5) + (d6 * d6));
    }

    public static double distanceSq(double d, double d2, double d3, double d4) {
        double d5 = d - d3;
        double d6 = d2 - d4;
        return (d5 * d5) + (d6 * d6);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Point2D)) {
            return super.equals(obj);
        }
        Point2D point2D = (Point2D) obj;
        return getX() == point2D.getX() && getY() == point2D.getY();
    }

    public abstract double getX();

    public abstract double getY();

    public int hashCode() {
        long doubleToLongBits = java.lang.Double.doubleToLongBits(getX()) ^ (java.lang.Double.doubleToLongBits(getY()) * 31);
        return ((int) doubleToLongBits) ^ ((int) (doubleToLongBits >> 32));
    }

    public abstract void setLocation(double d, double d2);

    public void setLocation(Point2D point2D) {
        setLocation(point2D.getX(), point2D.getY());
    }

    public double distance(double d, double d2) {
        double x = d - getX();
        double y = d2 - getY();
        return Math.sqrt((x * x) + (y * y));
    }

    public double distanceSq(double d, double d2) {
        double x = d - getX();
        double y = d2 - getY();
        return (x * x) + (y * y);
    }

    public double distanceSq(Point2D point2D) {
        double x = point2D.getX() - getX();
        double y = point2D.getY() - getY();
        return (x * x) + (y * y);
    }

    public double distance(Point2D point2D) {
        double x = point2D.getX() - getX();
        double y = point2D.getY() - getY();
        return Math.sqrt((x * x) + (y * y));
    }
}
