package com.sun.javafx.geom;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes9.dex */
public class Point2D {

    /* renamed from: x */
    public float f64054x;

    /* renamed from: y */
    public float f64055y;

    public Point2D() {
    }

    public static float distance(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    public static float distanceSq(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (f5 * f5) + (f6 * f6);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Point2D)) {
            return false;
        }
        Point2D point2D = (Point2D) obj;
        return this.f64054x == point2D.f64054x && this.f64055y == point2D.f64055y;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f64055y) * 31) ^ Float.floatToIntBits(this.f64054x);
    }

    public void setLocation(float f, float f2) {
        this.f64054x = f;
        this.f64055y = f2;
    }

    public String toString() {
        return "Point2D[" + this.f64054x + ", " + this.f64055y + IteratorUtils.f104924b;
    }

    public Point2D(float f, float f2) {
        this.f64054x = f;
        this.f64055y = f2;
    }

    public float distance(float f, float f2) {
        float f3 = f - this.f64054x;
        float f4 = f2 - this.f64055y;
        return (float) Math.sqrt((f3 * f3) + (f4 * f4));
    }

    public float distanceSq(float f, float f2) {
        float f3 = f - this.f64054x;
        float f4 = f2 - this.f64055y;
        return (f3 * f3) + (f4 * f4);
    }

    public void setLocation(Point2D point2D) {
        setLocation(point2D.f64054x, point2D.f64055y);
    }

    public float distanceSq(Point2D point2D) {
        float f = point2D.f64054x - this.f64054x;
        float f2 = point2D.f64055y - this.f64055y;
        return (f * f) + (f2 * f2);
    }

    public float distance(Point2D point2D) {
        float f = point2D.f64054x - this.f64054x;
        float f2 = point2D.f64055y - this.f64055y;
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }
}
