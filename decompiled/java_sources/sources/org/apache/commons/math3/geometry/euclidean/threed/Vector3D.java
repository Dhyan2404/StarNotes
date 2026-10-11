package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
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
public class Vector3D implements Serializable, Vector<Euclidean3D> {
    private static final long serialVersionUID = 1313493323784566947L;

    /* renamed from: x */
    private final double f108297x;

    /* renamed from: y */
    private final double f108298y;

    /* renamed from: z */
    private final double f108299z;
    public static final Vector3D ZERO = new Vector3D(0.0d, 0.0d, 0.0d);
    public static final Vector3D PLUS_I = new Vector3D(1.0d, 0.0d, 0.0d);
    public static final Vector3D MINUS_I = new Vector3D(-1.0d, 0.0d, 0.0d);
    public static final Vector3D PLUS_J = new Vector3D(0.0d, 1.0d, 0.0d);
    public static final Vector3D MINUS_J = new Vector3D(0.0d, -1.0d, 0.0d);
    public static final Vector3D PLUS_K = new Vector3D(0.0d, 0.0d, 1.0d);
    public static final Vector3D MINUS_K = new Vector3D(0.0d, 0.0d, -1.0d);
    public static final Vector3D NaN = new Vector3D(Double.NaN, Double.NaN, Double.NaN);
    public static final Vector3D POSITIVE_INFINITY = new Vector3D(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
    public static final Vector3D NEGATIVE_INFINITY = new Vector3D(Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);

    public Vector3D(double d, double d2, double d3) {
        this.f108297x = d;
        this.f108298y = d2;
        this.f108299z = d3;
    }

    public static double angle(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        double norm = vector3D.getNorm() * vector3D2.getNorm();
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        double dotProduct = vector3D.dotProduct(vector3D2);
        double d = 0.9999d * norm;
        if (dotProduct >= (-d) && dotProduct <= d) {
            return FastMath.acos(dotProduct / norm);
        }
        Vector3D crossProduct = crossProduct(vector3D, vector3D2);
        return dotProduct >= 0.0d ? FastMath.asin(crossProduct.getNorm() / norm) : 3.141592653589793d - FastMath.asin(crossProduct.getNorm() / norm);
    }

    public Vector3D crossProduct(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return new Vector3D(MathArrays.linearCombination(this.f108298y, vector3D.f108299z, -this.f108299z, vector3D.f108298y), MathArrays.linearCombination(this.f108299z, vector3D.f108297x, -this.f108297x, vector3D.f108299z), MathArrays.linearCombination(this.f108297x, vector3D.f108298y, -this.f108298y, vector3D.f108297x));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distance(Vector<Euclidean3D> vector) {
        return distance((Point<Euclidean3D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distance1(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return FastMath.abs(vector3D.f108297x - this.f108297x) + FastMath.abs(vector3D.f108298y - this.f108298y) + FastMath.abs(vector3D.f108299z - this.f108299z);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distanceInf(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        double abs = FastMath.abs(vector3D.f108297x - this.f108297x);
        double abs2 = FastMath.abs(vector3D.f108298y - this.f108298y);
        return FastMath.max(FastMath.max(abs, abs2), FastMath.abs(vector3D.f108299z - this.f108299z));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distanceSq(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        double d = vector3D.f108297x - this.f108297x;
        double d2 = vector3D.f108298y - this.f108298y;
        double d3 = vector3D.f108299z - this.f108299z;
        return (d * d) + (d2 * d2) + (d3 * d3);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double dotProduct(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return MathArrays.linearCombination(this.f108297x, vector3D.f108297x, this.f108298y, vector3D.f108298y, this.f108299z, vector3D.f108299z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector3D)) {
            return false;
        }
        Vector3D vector3D = (Vector3D) obj;
        return vector3D.isNaN() ? isNaN() : this.f108297x == vector3D.f108297x && this.f108298y == vector3D.f108298y && this.f108299z == vector3D.f108299z;
    }

    public double getAlpha() {
        return FastMath.atan2(this.f108298y, this.f108297x);
    }

    public double getDelta() {
        return FastMath.asin(this.f108299z / getNorm());
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNorm() {
        double d = this.f108297x;
        double d2 = this.f108298y;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.f108299z;
        return FastMath.sqrt(d3 + (d4 * d4));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNorm1() {
        return FastMath.abs(this.f108297x) + FastMath.abs(this.f108298y) + FastMath.abs(this.f108299z);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNormInf() {
        return FastMath.max(FastMath.max(FastMath.abs(this.f108297x), FastMath.abs(this.f108298y)), FastMath.abs(this.f108299z));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNormSq() {
        double d = this.f108297x;
        double d2 = this.f108298y;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.f108299z;
        return d3 + (d4 * d4);
    }

    @Override // org.apache.commons.math3.geometry.Point
    public Space getSpace() {
        return Euclidean3D.getInstance();
    }

    public double getX() {
        return this.f108297x;
    }

    public double getY() {
        return this.f108298y;
    }

    public double getZ() {
        return this.f108299z;
    }

    public int hashCode() {
        if (isNaN()) {
            return 642;
        }
        return ((MathUtils.hash(this.f108297x) * 164) + (MathUtils.hash(this.f108298y) * 3) + MathUtils.hash(this.f108299z)) * 643;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public boolean isInfinite() {
        return !isNaN() && (Double.isInfinite(this.f108297x) || Double.isInfinite(this.f108298y) || Double.isInfinite(this.f108299z));
    }

    @Override // org.apache.commons.math3.geometry.Point
    public boolean isNaN() {
        return Double.isNaN(this.f108297x) || Double.isNaN(this.f108298y) || Double.isNaN(this.f108299z);
    }

    public Vector3D orthogonal() throws MathArithmeticException {
        double norm = getNorm() * 0.6d;
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        if (FastMath.abs(this.f108297x) <= norm) {
            double d = this.f108298y;
            double d2 = this.f108299z;
            double sqrt = 1.0d / FastMath.sqrt((d * d) + (d2 * d2));
            return new Vector3D(0.0d, sqrt * this.f108299z, (-sqrt) * this.f108298y);
        }
        if (FastMath.abs(this.f108298y) <= norm) {
            double d3 = this.f108297x;
            double d4 = this.f108299z;
            double sqrt2 = 1.0d / FastMath.sqrt((d3 * d3) + (d4 * d4));
            return new Vector3D((-sqrt2) * this.f108299z, 0.0d, sqrt2 * this.f108297x);
        }
        double d5 = this.f108297x;
        double d6 = this.f108298y;
        double sqrt3 = 1.0d / FastMath.sqrt((d5 * d5) + (d6 * d6));
        return new Vector3D(sqrt3 * this.f108298y, (-sqrt3) * this.f108297x, 0.0d);
    }

    public double[] toArray() {
        return new double[]{this.f108297x, this.f108298y, this.f108299z};
    }

    public String toString() {
        return Vector3DFormat.getInstance().format(this);
    }

    @Override // org.apache.commons.math3.geometry.Point
    public double distance(Point<Euclidean3D> point) {
        Vector3D vector3D = (Vector3D) point;
        double d = vector3D.f108297x - this.f108297x;
        double d2 = vector3D.f108298y - this.f108298y;
        double d3 = vector3D.f108299z - this.f108299z;
        return FastMath.sqrt((d * d) + (d2 * d2) + (d3 * d3));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> getZero() {
        return ZERO;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> negate() {
        return new Vector3D(-this.f108297x, -this.f108298y, -this.f108299z);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> normalize() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return scalarMultiply(1.0d / norm);
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> scalarMultiply(double d) {
        return new Vector3D(d * this.f108297x, this.f108298y * d, this.f108299z * d);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public String toString(NumberFormat numberFormat) {
        return new Vector3DFormat(numberFormat).format(this);
    }

    public static Vector3D crossProduct(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.crossProduct(vector3D2);
    }

    public static double dotProduct(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.dotProduct(vector3D2);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> add(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return new Vector3D(this.f108297x + vector3D.f108297x, this.f108298y + vector3D.f108298y, this.f108299z + vector3D.f108299z);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> subtract(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return new Vector3D(this.f108297x - vector3D.f108297x, this.f108298y - vector3D.f108298y, this.f108299z - vector3D.f108299z);
    }

    public Vector3D(double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 3) {
            this.f108297x = dArr[0];
            this.f108298y = dArr[1];
            this.f108299z = dArr[2];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 3);
    }

    public static double distance1(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distance1(vector3D2);
    }

    public static double distanceSq(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distanceSq(vector3D2);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> add(double d, Vector<Euclidean3D> vector) {
        return new Vector3D(1.0d, this, d, (Vector3D) vector);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean3D> subtract(double d, Vector<Euclidean3D> vector) {
        return new Vector3D(1.0d, this, -d, (Vector3D) vector);
    }

    public static double distanceInf(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distanceInf(vector3D2);
    }

    public static double distance(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distance((Vector<Euclidean3D>) vector3D2);
    }

    public Vector3D(double d, double d2) {
        double cos = FastMath.cos(d2);
        this.f108297x = FastMath.cos(d) * cos;
        this.f108298y = FastMath.sin(d) * cos;
        this.f108299z = FastMath.sin(d2);
    }

    public Vector3D(double d, Vector3D vector3D) {
        this.f108297x = vector3D.f108297x * d;
        this.f108298y = vector3D.f108298y * d;
        this.f108299z = d * vector3D.f108299z;
    }

    public Vector3D(double d, Vector3D vector3D, double d2, Vector3D vector3D2) {
        this.f108297x = MathArrays.linearCombination(d, vector3D.f108297x, d2, vector3D2.f108297x);
        this.f108298y = MathArrays.linearCombination(d, vector3D.f108298y, d2, vector3D2.f108298y);
        this.f108299z = MathArrays.linearCombination(d, vector3D.f108299z, d2, vector3D2.f108299z);
    }

    public Vector3D(double d, Vector3D vector3D, double d2, Vector3D vector3D2, double d3, Vector3D vector3D3) {
        this.f108297x = MathArrays.linearCombination(d, vector3D.f108297x, d2, vector3D2.f108297x, d3, vector3D3.f108297x);
        this.f108298y = MathArrays.linearCombination(d, vector3D.f108298y, d2, vector3D2.f108298y, d3, vector3D3.f108298y);
        this.f108299z = MathArrays.linearCombination(d, vector3D.f108299z, d2, vector3D2.f108299z, d3, vector3D3.f108299z);
    }

    public Vector3D(double d, Vector3D vector3D, double d2, Vector3D vector3D2, double d3, Vector3D vector3D3, double d4, Vector3D vector3D4) {
        this.f108297x = MathArrays.linearCombination(d, vector3D.f108297x, d2, vector3D2.f108297x, d3, vector3D3.f108297x, d4, vector3D4.f108297x);
        this.f108298y = MathArrays.linearCombination(d, vector3D.f108298y, d2, vector3D2.f108298y, d3, vector3D3.f108298y, d4, vector3D4.f108298y);
        this.f108299z = MathArrays.linearCombination(d, vector3D.f108299z, d2, vector3D2.f108299z, d3, vector3D3.f108299z, d4, vector3D4.f108299z);
    }
}
