package org.apache.commons.math3.geometry.euclidean.oned;

import java.text.NumberFormat;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class Vector1D implements Vector<Euclidean1D> {
    private static final long serialVersionUID = 7556674948671647925L;

    /* renamed from: x */
    private final double f108243x;
    public static final Vector1D ZERO = new Vector1D(0.0d);
    public static final Vector1D ONE = new Vector1D(1.0d);
    public static final Vector1D NaN = new Vector1D(Double.NaN);
    public static final Vector1D POSITIVE_INFINITY = new Vector1D(Double.POSITIVE_INFINITY);
    public static final Vector1D NEGATIVE_INFINITY = new Vector1D(Double.NEGATIVE_INFINITY);

    public Vector1D(double d) {
        this.f108243x = d;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    @Deprecated
    public double distance(Vector<Euclidean1D> vector) {
        return distance((Point<Euclidean1D>) vector);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distance1(Vector<Euclidean1D> vector) {
        return FastMath.abs(((Vector1D) vector).f108243x - this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distanceInf(Vector<Euclidean1D> vector) {
        return FastMath.abs(((Vector1D) vector).f108243x - this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double distanceSq(Vector<Euclidean1D> vector) {
        double d = ((Vector1D) vector).f108243x - this.f108243x;
        return d * d;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double dotProduct(Vector<Euclidean1D> vector) {
        return this.f108243x * ((Vector1D) vector).f108243x;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector1D)) {
            return false;
        }
        Vector1D vector1D = (Vector1D) obj;
        return vector1D.isNaN() ? isNaN() : this.f108243x == vector1D.f108243x;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNorm() {
        return FastMath.abs(this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNorm1() {
        return FastMath.abs(this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNormInf() {
        return FastMath.abs(this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public double getNormSq() {
        double d = this.f108243x;
        return d * d;
    }

    @Override // org.apache.commons.math3.geometry.Point
    public Space getSpace() {
        return Euclidean1D.getInstance();
    }

    public double getX() {
        return this.f108243x;
    }

    public int hashCode() {
        if (isNaN()) {
            return 7785;
        }
        return MathUtils.hash(this.f108243x) * 997;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public boolean isInfinite() {
        return !isNaN() && Double.isInfinite(this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Point
    public boolean isNaN() {
        return Double.isNaN(this.f108243x);
    }

    public String toString() {
        return Vector1DFormat.getInstance().format(this);
    }

    @Override // org.apache.commons.math3.geometry.Point
    public double distance(Point<Euclidean1D> point) {
        return FastMath.abs(((Vector1D) point).f108243x - this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> getZero() {
        return ZERO;
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> negate() {
        return new Vector1D(-this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> normalize() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return scalarMultiply(1.0d / norm);
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> scalarMultiply(double d) {
        return new Vector1D(d * this.f108243x);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public String toString(NumberFormat numberFormat) {
        return new Vector1DFormat(numberFormat).format(this);
    }

    public Vector1D(double d, Vector1D vector1D) {
        this.f108243x = d * vector1D.f108243x;
    }

    public static double distanceInf(Vector1D vector1D, Vector1D vector1D2) {
        return vector1D.distanceInf(vector1D2);
    }

    public static double distanceSq(Vector1D vector1D, Vector1D vector1D2) {
        return vector1D.distanceSq(vector1D2);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> add(Vector<Euclidean1D> vector) {
        return new Vector1D(this.f108243x + ((Vector1D) vector).getX());
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> subtract(Vector<Euclidean1D> vector) {
        return new Vector1D(this.f108243x - ((Vector1D) vector).f108243x);
    }

    public Vector1D(double d, Vector1D vector1D, double d2, Vector1D vector1D2) {
        this.f108243x = (d * vector1D.f108243x) + (d2 * vector1D2.f108243x);
    }

    public static double distance(Vector1D vector1D, Vector1D vector1D2) {
        return vector1D.distance((Vector<Euclidean1D>) vector1D2);
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> add(double d, Vector<Euclidean1D> vector) {
        return new Vector1D(this.f108243x + (d * ((Vector1D) vector).getX()));
    }

    @Override // org.apache.commons.math3.geometry.Vector
    public Vector<Euclidean1D> subtract(double d, Vector<Euclidean1D> vector) {
        return new Vector1D(this.f108243x - (d * ((Vector1D) vector).getX()));
    }

    public Vector1D(double d, Vector1D vector1D, double d2, Vector1D vector1D2, double d3, Vector1D vector1D3) {
        this.f108243x = (d * vector1D.f108243x) + (d2 * vector1D2.f108243x) + (d3 * vector1D3.f108243x);
    }

    public Vector1D(double d, Vector1D vector1D, double d2, Vector1D vector1D2, double d3, Vector1D vector1D3, double d4, Vector1D vector1D4) {
        this.f108243x = (d * vector1D.f108243x) + (d2 * vector1D2.f108243x) + (d3 * vector1D3.f108243x) + (d4 * vector1D4.f108243x);
    }
}
