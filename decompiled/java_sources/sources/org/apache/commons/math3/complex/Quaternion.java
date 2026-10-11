package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public final class Quaternion implements Serializable {
    private static final long serialVersionUID = 20092012;

    /* renamed from: q0 */
    private final double f108000q0;

    /* renamed from: q1 */
    private final double f108001q1;

    /* renamed from: q2 */
    private final double f108002q2;

    /* renamed from: q3 */
    private final double f108003q3;
    public static final Quaternion IDENTITY = new Quaternion(1.0d, 0.0d, 0.0d, 0.0d);
    public static final Quaternion ZERO = new Quaternion(0.0d, 0.0d, 0.0d, 0.0d);

    /* renamed from: I */
    public static final Quaternion f107997I = new Quaternion(0.0d, 1.0d, 0.0d, 0.0d);

    /* renamed from: J */
    public static final Quaternion f107998J = new Quaternion(0.0d, 0.0d, 1.0d, 0.0d);

    /* renamed from: K */
    public static final Quaternion f107999K = new Quaternion(0.0d, 0.0d, 0.0d, 1.0d);

    public Quaternion(double d, double d2, double d3, double d4) {
        this.f108000q0 = d;
        this.f108001q1 = d2;
        this.f108002q2 = d3;
        this.f108003q3 = d4;
    }

    public static Quaternion add(Quaternion quaternion, Quaternion quaternion2) {
        return new Quaternion(quaternion.getQ0() + quaternion2.getQ0(), quaternion.getQ1() + quaternion2.getQ1(), quaternion.getQ2() + quaternion2.getQ2(), quaternion.getQ3() + quaternion2.getQ3());
    }

    public static double dotProduct(Quaternion quaternion, Quaternion quaternion2) {
        return (quaternion.getQ0() * quaternion2.getQ0()) + (quaternion.getQ1() * quaternion2.getQ1()) + (quaternion.getQ2() * quaternion2.getQ2()) + (quaternion.getQ3() * quaternion2.getQ3());
    }

    public static Quaternion multiply(Quaternion quaternion, Quaternion quaternion2) {
        double q0 = quaternion.getQ0();
        double q1 = quaternion.getQ1();
        double q2 = quaternion.getQ2();
        double q3 = quaternion.getQ3();
        double q02 = quaternion2.getQ0();
        double q12 = quaternion2.getQ1();
        double q22 = quaternion2.getQ2();
        double q32 = quaternion2.getQ3();
        return new Quaternion((((q0 * q02) - (q1 * q12)) - (q2 * q22)) - (q3 * q32), (((q0 * q12) + (q1 * q02)) + (q2 * q32)) - (q3 * q22), ((q0 * q22) - (q1 * q32)) + (q2 * q02) + (q3 * q12), (((q0 * q32) + (q1 * q22)) - (q2 * q12)) + (q3 * q02));
    }

    public static Quaternion subtract(Quaternion quaternion, Quaternion quaternion2) {
        return new Quaternion(quaternion.getQ0() - quaternion2.getQ0(), quaternion.getQ1() - quaternion2.getQ1(), quaternion.getQ2() - quaternion2.getQ2(), quaternion.getQ3() - quaternion2.getQ3());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Quaternion)) {
            return false;
        }
        Quaternion quaternion = (Quaternion) obj;
        return this.f108000q0 == quaternion.getQ0() && this.f108001q1 == quaternion.getQ1() && this.f108002q2 == quaternion.getQ2() && this.f108003q3 == quaternion.getQ3();
    }

    public Quaternion getConjugate() {
        return new Quaternion(this.f108000q0, -this.f108001q1, -this.f108002q2, -this.f108003q3);
    }

    public Quaternion getInverse() {
        double d = this.f108000q0;
        double d2 = this.f108001q1;
        double d3 = this.f108002q2;
        double d4 = this.f108003q3;
        double d5 = (d * d) + (d2 * d2) + (d3 * d3) + (d4 * d4);
        if (d5 >= Precision.SAFE_MIN) {
            return new Quaternion(d / d5, (-d2) / d5, (-d3) / d5, (-d4) / d5);
        }
        throw new ZeroException(LocalizedFormats.NORM, Double.valueOf(d5));
    }

    public double getNorm() {
        double d = this.f108000q0;
        double d2 = this.f108001q1;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.f108002q2;
        double d5 = d3 + (d4 * d4);
        double d6 = this.f108003q3;
        return FastMath.sqrt(d5 + (d6 * d6));
    }

    public Quaternion getPositivePolarForm() {
        if (getQ0() >= 0.0d) {
            return normalize();
        }
        Quaternion normalize = normalize();
        return new Quaternion(-normalize.getQ0(), -normalize.getQ1(), -normalize.getQ2(), -normalize.getQ3());
    }

    public double getQ0() {
        return this.f108000q0;
    }

    public double getQ1() {
        return this.f108001q1;
    }

    public double getQ2() {
        return this.f108002q2;
    }

    public double getQ3() {
        return this.f108003q3;
    }

    public double getScalarPart() {
        return getQ0();
    }

    public double[] getVectorPart() {
        return new double[]{getQ1(), getQ2(), getQ3()};
    }

    public int hashCode() {
        double[] dArr = {this.f108000q0, this.f108001q1, this.f108002q2, this.f108003q3};
        int i = 17;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i * 31) + MathUtils.hash(dArr[i2]);
        }
        return i;
    }

    public boolean isPureQuaternion(double d) {
        return FastMath.abs(getQ0()) <= d;
    }

    public boolean isUnitQuaternion(double d) {
        return Precision.equals(getNorm(), 1.0d, d);
    }

    public Quaternion normalize() {
        double norm = getNorm();
        if (norm >= Precision.SAFE_MIN) {
            return new Quaternion(this.f108000q0 / norm, this.f108001q1 / norm, this.f108002q2 / norm, this.f108003q3 / norm);
        }
        throw new ZeroException(LocalizedFormats.NORM, Double.valueOf(norm));
    }

    public String toString() {
        return IteratorUtils.f104923a + this.f108000q0 + " " + this.f108001q1 + " " + this.f108002q2 + " " + this.f108003q3 + IteratorUtils.f104924b;
    }

    public Quaternion add(Quaternion quaternion) {
        return add(this, quaternion);
    }

    public double dotProduct(Quaternion quaternion) {
        return dotProduct(this, quaternion);
    }

    public Quaternion subtract(Quaternion quaternion) {
        return subtract(this, quaternion);
    }

    public boolean equals(Quaternion quaternion, double d) {
        return Precision.equals(this.f108000q0, quaternion.getQ0(), d) && Precision.equals(this.f108001q1, quaternion.getQ1(), d) && Precision.equals(this.f108002q2, quaternion.getQ2(), d) && Precision.equals(this.f108003q3, quaternion.getQ3(), d);
    }

    public Quaternion(double d, double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 3) {
            this.f108000q0 = d;
            this.f108001q1 = dArr[0];
            this.f108002q2 = dArr[1];
            this.f108003q3 = dArr[2];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 3);
    }

    public Quaternion multiply(Quaternion quaternion) {
        return multiply(this, quaternion);
    }

    public Quaternion multiply(double d) {
        return new Quaternion(d * this.f108000q0, this.f108001q1 * d, this.f108002q2 * d, this.f108003q3 * d);
    }

    public Quaternion(double[] dArr) {
        this(0.0d, dArr);
    }
}
