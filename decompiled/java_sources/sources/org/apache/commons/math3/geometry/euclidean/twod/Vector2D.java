package org.apache.commons.math3.geometry.euclidean.twod;

import java.text.NumberFormat;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class Vector2D implements Vector<Euclidean2D> {
    private static final long serialVersionUID = 266938651998679754L;

    /* renamed from: x */
    private final double f108340x;

    /* renamed from: y */
    private final double f108341y;
    public static final Vector2D ZERO = new Vector2D(0.0d, 0.0d);
    public static final Vector2D NaN = new Vector2D(Double.NaN, Double.NaN);
    public static final Vector2D POSITIVE_INFINITY = new Vector2D(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
    public static final Vector2D NEGATIVE_INFINITY = new Vector2D(Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);

    public Vector2D(double d, double d2) {
        this.f108340x = d;
        this.f108341y = d2;
    }

    public static double angle(Vector2D vector2D, Vector2D vector2D2) throws MathArithmeticException {
        double norm = vector2D.getNorm() * vector2D2.getNorm();
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        double dotProduct = vector2D.dotProduct(vector2D2);
        double d = 0.9999d * norm;
        if (dotProduct >= (-d) && dotProduct <= d) {
            return FastMath.acos(dotProduct / norm);
        }
        double abs = FastMath.abs(MathArrays.linearCombination(vector2D.f108340x, vector2D2.f108341y, -vector2D.f108341y, vector2D2.f108340x));
        return dotProduct >= 0.0d ? FastMath.asin(abs / norm) : 3.141592653589793d - FastMath.asin(abs / norm);
    }

    public double crossProduct(Vector2D vector2D, Vector2D vector2D2) {
        return MathArrays.linearCombination(vector2D2.getX() - vector2D.getX(), getY() - vector2D.getY(), -(getX() - vector2D.getX()), vector2D2.getY() - vector2D.getY());
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distance(Vector<Euclidean2D> vector) {
        return distance((Point<Euclidean2D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distance1(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return FastMath.abs(vector2D.f108340x - this.f108340x) + FastMath.abs(vector2D.f108341y - this.f108341y);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distanceInf(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return FastMath.max(FastMath.abs(vector2D.f108340x - this.f108340x), FastMath.abs(vector2D.f108341y - this.f108341y));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distanceSq(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        double d = vector2D.f108340x - this.f108340x;
        double d2 = vector2D.f108341y - this.f108341y;
        return (d * d) + (d2 * d2);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double dotProduct(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return MathArrays.linearCombination(this.f108340x, vector2D.f108340x, this.f108341y, vector2D.f108341y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector2D)) {
            return false;
        }
        Vector2D vector2D = (Vector2D) obj;
        return vector2D.isNaN() ? isNaN() : this.f108340x == vector2D.f108340x && this.f108341y == vector2D.f108341y;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNorm() {
        double d = this.f108340x;
        double d2 = this.f108341y;
        return FastMath.sqrt((d * d) + (d2 * d2));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNorm1() {
        return FastMath.abs(this.f108340x) + FastMath.abs(this.f108341y);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNormInf() {
        return FastMath.max(FastMath.abs(this.f108340x), FastMath.abs(this.f108341y));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNormSq() {
        double d = this.f108340x;
        double d2 = this.f108341y;
        return (d * d) + (d2 * d2);
    }

    @Override // org.apache.commons.math3.geometry.Point
    public Space getSpace() {
        return Euclidean2D.getInstance();
    }

    public double getX() {
        return this.f108340x;
    }

    public double getY() {
        return this.f108341y;
    }

    public int hashCode() {
        if (isNaN()) {
            return 542;
        }
        return ((MathUtils.hash(this.f108340x) * 76) + MathUtils.hash(this.f108341y)) * 122;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public boolean isInfinite() {
        return !isNaN() && (Double.isInfinite(this.f108340x) || Double.isInfinite(this.f108341y));
    }

    @Override // org.apache.commons.math3.geometry.Point
    public boolean isNaN() {
        return Double.isNaN(this.f108340x) || Double.isNaN(this.f108341y);
    }

    public double[] toArray() {
        return new double[]{this.f108340x, this.f108341y};
    }

    public String toString() {
        return Vector2DFormat.getInstance().format(this);
    }

    @Override // org.apache.commons.math3.geometry.Point
    public double distance(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        double d = vector2D.f108340x - this.f108340x;
        double d2 = vector2D.f108341y - this.f108341y;
        return FastMath.sqrt((d * d) + (d2 * d2));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> getZero() {
        return ZERO;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> negate() {
        return new Vector2D(-this.f108340x, -this.f108341y);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> normalize() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return scalarMultiply(1.0d / norm);
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> scalarMultiply(double d) {
        return new Vector2D(this.f108340x * d, d * this.f108341y);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public String toString(NumberFormat numberFormat) {
        return new Vector2DFormat(numberFormat).format(this);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> add(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f108340x + vector2D.getX(), this.f108341y + vector2D.getY());
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> subtract(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f108340x - vector2D.f108340x, this.f108341y - vector2D.f108341y);
    }

    public Vector2D(double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 2) {
            this.f108340x = dArr[0];
            this.f108341y = dArr[1];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 2);
    }

    public static double distanceSq(Vector2D vector2D, Vector2D vector2D2) {
        return vector2D.distanceSq(vector2D2);
    }

    public static double distanceInf(Vector2D vector2D, Vector2D vector2D2) {
        return vector2D.distanceInf(vector2D2);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> add(double d, Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f108340x + (vector2D.getX() * d), this.f108341y + (d * vector2D.getY()));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean2D> subtract(double d, Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f108340x - (vector2D.getX() * d), this.f108341y - (d * vector2D.getY()));
    }

    public static double distance(Vector2D vector2D, Vector2D vector2D2) {
        return vector2D.distance((Vector<Euclidean2D>) vector2D2);
    }

    public Vector2D(double d, Vector2D vector2D) {
        this.f108340x = vector2D.f108340x * d;
        this.f108341y = d * vector2D.f108341y;
    }

    public Vector2D(double d, Vector2D vector2D, double d2, Vector2D vector2D2) {
        this.f108340x = (vector2D.f108340x * d) + (vector2D2.f108340x * d2);
        this.f108341y = (d * vector2D.f108341y) + (d2 * vector2D2.f108341y);
    }

    public Vector2D(double d, Vector2D vector2D, double d2, Vector2D vector2D2, double d3, Vector2D vector2D3) {
        this.f108340x = (vector2D.f108340x * d) + (vector2D2.f108340x * d2) + (vector2D3.f108340x * d3);
        this.f108341y = (d * vector2D.f108341y) + (d2 * vector2D2.f108341y) + (d3 * vector2D3.f108341y);
    }

    public Vector2D(double d, Vector2D vector2D, double d2, Vector2D vector2D2, double d3, Vector2D vector2D3, double d4, Vector2D vector2D4) {
        this.f108340x = (vector2D.f108340x * d) + (vector2D2.f108340x * d2) + (vector2D3.f108340x * d3) + (vector2D4.f108340x * d4);
        this.f108341y = (vector2D.f108341y * d) + (vector2D2.f108341y * d2) + (vector2D3.f108341y * d3) + (vector2D4.f108341y * d4);
    }
}
