package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class Rotation implements Serializable {
    public static final Rotation IDENTITY = new Rotation(1.0d, 0.0d, 0.0d, 0.0d, false);
    private static final long serialVersionUID = -2153622329907944313L;

    /* renamed from: q0 */
    private final double f108278q0;

    /* renamed from: q1 */
    private final double f108279q1;

    /* renamed from: q2 */
    private final double f108280q2;

    /* renamed from: q3 */
    private final double f108281q3;

    public Rotation(double d, double d2, double d3, double d4, boolean z) {
        if (z) {
            double sqrt = 1.0d / FastMath.sqrt((((d * d) + (d2 * d2)) + (d3 * d3)) + (d4 * d4));
            d *= sqrt;
            d2 *= sqrt;
            d3 *= sqrt;
            d4 *= sqrt;
        }
        this.f108278q0 = d;
        this.f108279q1 = d2;
        this.f108280q2 = d3;
        this.f108281q3 = d4;
    }

    private Rotation composeInternal(Rotation rotation) {
        double d = rotation.f108278q0;
        double d2 = this.f108278q0;
        double d3 = d * d2;
        double d4 = rotation.f108279q1;
        double d5 = this.f108279q1;
        double d6 = rotation.f108280q2;
        double d7 = this.f108280q2;
        double d8 = (d4 * d5) + (d6 * d7);
        double d9 = rotation.f108281q3;
        double d10 = this.f108281q3;
        return new Rotation(d3 - (d8 + (d9 * d10)), (d4 * d2) + (d * d5) + ((d6 * d10) - (d9 * d7)), (d6 * d2) + (d * d7) + ((d9 * d5) - (d4 * d10)), ((d4 * d7) - (d6 * d5)) + (d9 * d2) + (d10 * d), false);
    }

    private Rotation composeInverseInternal(Rotation rotation) {
        double d = rotation.f108278q0;
        double d2 = this.f108278q0;
        double d3 = (-d) * d2;
        double d4 = rotation.f108279q1;
        double d5 = this.f108279q1;
        double d6 = rotation.f108280q2;
        double d7 = this.f108280q2;
        double d8 = (d4 * d5) + (d6 * d7);
        double d9 = rotation.f108281q3;
        double d10 = this.f108281q3;
        return new Rotation(d3 - (d8 + (d9 * d10)), ((-d4) * d2) + (d * d5) + ((d6 * d10) - (d9 * d7)), ((-d6) * d2) + (d * d7) + ((d9 * d5) - (d4 * d10)), ((-d9) * d2) + (d10 * d) + ((d4 * d7) - (d6 * d5)), false);
    }

    public static double distance(Rotation rotation, Rotation rotation2) {
        return rotation.composeInverseInternal(rotation2).getAngle();
    }

    private static double[] mat2quat(double[][] dArr) {
        double[] dArr2 = new double[4];
        double d = dArr[0][0];
        double d2 = dArr[1][1];
        double d3 = dArr[2][2];
        double d4 = d + d2 + d3;
        if (d4 > -0.19d) {
            double sqrt = FastMath.sqrt(d4 + 1.0d) * 0.5d;
            dArr2[0] = sqrt;
            double d5 = 0.25d / sqrt;
            double[] dArr3 = dArr[1];
            double d6 = dArr3[2];
            double[] dArr4 = dArr[2];
            dArr2[1] = (d6 - dArr4[1]) * d5;
            double d7 = dArr4[0];
            double[] dArr5 = dArr[0];
            dArr2[2] = (d7 - dArr5[2]) * d5;
            dArr2[3] = d5 * (dArr5[1] - dArr3[0]);
        } else {
            double d8 = (d - d2) - d3;
            if (d8 > -0.19d) {
                double sqrt2 = FastMath.sqrt(d8 + 1.0d) * 0.5d;
                dArr2[1] = sqrt2;
                double d9 = 0.25d / sqrt2;
                double[] dArr6 = dArr[1];
                double d10 = dArr6[2];
                double[] dArr7 = dArr[2];
                dArr2[0] = (d10 - dArr7[1]) * d9;
                double[] dArr8 = dArr[0];
                dArr2[2] = (dArr8[1] + dArr6[0]) * d9;
                dArr2[3] = d9 * (dArr8[2] + dArr7[0]);
            } else {
                double d11 = (d2 - d) - d3;
                if (d11 > -0.19d) {
                    double sqrt3 = FastMath.sqrt(d11 + 1.0d) * 0.5d;
                    dArr2[2] = sqrt3;
                    double d12 = 0.25d / sqrt3;
                    double[] dArr9 = dArr[2];
                    double d13 = dArr9[0];
                    double[] dArr10 = dArr[0];
                    dArr2[0] = (d13 - dArr10[2]) * d12;
                    double d14 = dArr10[1];
                    double[] dArr11 = dArr[1];
                    dArr2[1] = (d14 + dArr11[0]) * d12;
                    dArr2[3] = d12 * (dArr9[1] + dArr11[2]);
                } else {
                    double sqrt4 = FastMath.sqrt(((d3 - d) - d2) + 1.0d) * 0.5d;
                    dArr2[3] = sqrt4;
                    double d15 = 0.25d / sqrt4;
                    double[] dArr12 = dArr[0];
                    double d16 = dArr12[1];
                    double[] dArr13 = dArr[1];
                    dArr2[0] = (d16 - dArr13[0]) * d15;
                    double d17 = dArr12[2];
                    double[] dArr14 = dArr[2];
                    dArr2[1] = (d17 + dArr14[0]) * d15;
                    dArr2[2] = d15 * (dArr14[1] + dArr13[2]);
                }
            }
        }
        return dArr2;
    }

    private double[][] orthogonalizeMatrix(double[][] dArr, double d) throws NotARotationMatrixException {
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        double[] dArr4 = dArr[2];
        double d2 = dArr2[0];
        double d3 = dArr2[1];
        double d4 = dArr2[2];
        double d5 = dArr3[0];
        double d6 = dArr3[1];
        double d7 = dArr3[2];
        double d8 = dArr4[0];
        double d9 = dArr4[1];
        double d10 = dArr4[2];
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, 3, 3);
        double[] dArr6 = dArr5[0];
        int i = 1;
        double[] dArr7 = dArr5[1];
        double[] dArr8 = dArr5[2];
        double d11 = 0.0d;
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            double[][] dArr9 = dArr5;
            if (i3 >= 11) {
                throw new NotARotationMatrixException(LocalizedFormats.UNABLE_TO_ORTHOGONOLIZE_MATRIX, Integer.valueOf(i3 - i));
            }
            double d12 = dArr2[0];
            double d13 = dArr3[0];
            double d14 = dArr4[0];
            double d15 = (d12 * d2) + (d13 * d5) + (d14 * d8);
            double d16 = dArr2[i];
            double d17 = dArr3[i];
            double d18 = dArr4[i];
            double d19 = (d16 * d2) + (d17 * d5) + (d18 * d8);
            double d20 = dArr2[2];
            double d21 = dArr3[2];
            double d22 = dArr4[2];
            double d23 = (d20 * d2) + (d21 * d5) + (d22 * d8);
            double d24 = (d12 * d3) + (d13 * d6) + (d14 * d9);
            double d25 = (d16 * d3) + (d17 * d6) + (d18 * d9);
            double d26 = (d20 * d3) + (d21 * d6) + (d22 * d9);
            double d27 = (d12 * d4) + (d13 * d7) + (d14 * d10);
            double d28 = (d16 * d4) + (d17 * d7) + (d18 * d10);
            double d29 = (d20 * d4) + (d21 * d7) + (d22 * d10);
            dArr6[0] = d2 - (((((d2 * d15) + (d3 * d19)) + (d4 * d23)) - d12) * 0.5d);
            dArr6[1] = d3 - (((((d2 * d24) + (d3 * d25)) + (d4 * d26)) - d16) * 0.5d);
            dArr6[2] = d4 - (((((d2 * d27) + (d3 * d28)) + (d4 * d29)) - d20) * 0.5d);
            dArr7[0] = d5 - (((((d5 * d15) + (d6 * d19)) + (d7 * d23)) - dArr3[0]) * 0.5d);
            dArr7[1] = d6 - (((((d5 * d24) + (d6 * d25)) + (d7 * d26)) - dArr3[1]) * 0.5d);
            dArr7[2] = d7 - (((((d5 * d27) + (d6 * d28)) + (d7 * d29)) - dArr3[2]) * 0.5d);
            double d30 = d8 - (((((d15 * d8) + (d19 * d9)) + (d23 * d10)) - dArr4[0]) * 0.5d);
            dArr8[0] = d30;
            double d31 = d9 - (((((d24 * d8) + (d25 * d9)) + (d26 * d10)) - dArr4[1]) * 0.5d);
            dArr8[1] = d31;
            double d32 = d10 - (((((d8 * d27) + (d9 * d28)) + (d29 * d10)) - dArr4[2]) * 0.5d);
            dArr8[2] = d32;
            double d33 = dArr6[0] - dArr2[0];
            double d34 = dArr6[1] - dArr2[1];
            double d35 = dArr6[2] - dArr2[2];
            double d36 = dArr7[0] - dArr3[0];
            double d37 = dArr7[1] - dArr3[1];
            double d38 = dArr7[2] - dArr3[2];
            double d39 = d30 - dArr4[0];
            double d40 = d31 - dArr4[1];
            double d41 = d32 - dArr4[2];
            double d42 = (d33 * d33) + (d34 * d34) + (d35 * d35) + (d36 * d36) + (d37 * d37) + (d38 * d38) + (d39 * d39) + (d40 * d40) + (d41 * d41);
            if (FastMath.abs(d42 - d11) <= d) {
                return dArr9;
            }
            double d43 = dArr6[0];
            double d44 = dArr6[1];
            double d45 = dArr6[2];
            double d46 = dArr7[0];
            double d47 = dArr7[1];
            double d48 = dArr7[2];
            double d49 = dArr8[0];
            double d50 = dArr8[1];
            dArr5 = dArr9;
            i2 = i3;
            i = 1;
            d10 = dArr8[2];
            d9 = d50;
            d11 = d42;
            d2 = d43;
            d3 = d44;
            d4 = d45;
            d5 = d46;
            d6 = d47;
            d7 = d48;
            d8 = d49;
        }
    }

    public Vector3D applyInverseTo(Vector3D vector3D) {
        double x = vector3D.getX();
        double y = vector3D.getY();
        double z = vector3D.getZ();
        double d = (this.f108279q1 * x) + (this.f108280q2 * y) + (this.f108281q3 * z);
        double d2 = -this.f108278q0;
        double d3 = this.f108280q2;
        double d4 = d3 * z;
        double d5 = this.f108281q3;
        double d6 = this.f108279q1;
        return new Vector3D((((((x * d2) - (d4 - (d5 * y))) * d2) + (d * d6)) * 2.0d) - x, (((((y * d2) - ((d5 * x) - (d6 * z))) * d2) + (d * d3)) * 2.0d) - y, (((d2 * ((z * d2) - ((d6 * y) - (d3 * x)))) + (d * d5)) * 2.0d) - z);
    }

    public Vector3D applyTo(Vector3D vector3D) {
        double x = vector3D.getX();
        double y = vector3D.getY();
        double z = vector3D.getZ();
        double d = (this.f108279q1 * x) + (this.f108280q2 * y) + (this.f108281q3 * z);
        double d2 = this.f108278q0;
        double d3 = this.f108280q2;
        double d4 = d3 * z;
        double d5 = this.f108281q3;
        double d6 = this.f108279q1;
        return new Vector3D((((((x * d2) - (d4 - (d5 * y))) * d2) + (d * d6)) * 2.0d) - x, (((((y * d2) - ((d5 * x) - (d6 * z))) * d2) + (d * d3)) * 2.0d) - y, (((d2 * ((z * d2) - ((d6 * y) - (d3 * x)))) + (d * d5)) * 2.0d) - z);
    }

    public Rotation compose(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(rotation) : rotation.composeInternal(this);
    }

    public Rotation composeInverse(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(rotation) : rotation.composeInternal(revert());
    }

    public double getAngle() {
        double asin;
        double d = this.f108278q0;
        if (d < -0.1d || d > 0.1d) {
            double d2 = this.f108279q1;
            double d3 = this.f108280q2;
            double d4 = (d2 * d2) + (d3 * d3);
            double d5 = this.f108281q3;
            asin = FastMath.asin(FastMath.sqrt(d4 + (d5 * d5)));
        } else {
            asin = d < 0.0d ? FastMath.acos(-d) : FastMath.acos(d);
        }
        return asin * 2.0d;
    }

    @Deprecated
    public double[] getAngles(RotationOrder rotationOrder) throws CardanEulerSingularityException {
        return getAngles(rotationOrder, RotationConvention.VECTOR_OPERATOR);
    }

    @Deprecated
    public Vector3D getAxis() {
        return getAxis(RotationConvention.VECTOR_OPERATOR);
    }

    public double[][] getMatrix() {
        double d = this.f108278q0;
        double d2 = d * d;
        double d3 = this.f108279q1;
        double d4 = d * d3;
        double d5 = this.f108280q2;
        double d6 = d * d5;
        double d7 = this.f108281q3;
        double d8 = d * d7;
        double d9 = d3 * d3;
        double d10 = d3 * d5;
        double d11 = d3 * d7;
        double d12 = d5 * d5;
        double d13 = d5 * d7;
        double d14 = d7 * d7;
        double[][] dArr = {r14, r7, r0};
        double[] dArr2 = {((d9 + d2) * 2.0d) - 1.0d, (d10 + d8) * 2.0d, (d11 - d6) * 2.0d};
        double[] dArr3 = {(d10 - d8) * 2.0d, ((d2 + d12) * 2.0d) - 1.0d, (d13 + d4) * 2.0d};
        double[] dArr4 = {(d11 + d6) * 2.0d, (d13 - d4) * 2.0d, ((d2 + d14) * 2.0d) - 1.0d};
        return dArr;
    }

    public double getQ0() {
        return this.f108278q0;
    }

    public double getQ1() {
        return this.f108279q1;
    }

    public double getQ2() {
        return this.f108280q2;
    }

    public double getQ3() {
        return this.f108281q3;
    }

    public Rotation revert() {
        return new Rotation(-this.f108278q0, this.f108279q1, this.f108280q2, this.f108281q3, false);
    }

    public double[] getAngles(RotationOrder rotationOrder, RotationConvention rotationConvention) throws CardanEulerSingularityException {
        if (rotationConvention == RotationConvention.VECTOR_OPERATOR) {
            if (rotationOrder == RotationOrder.XYZ) {
                Vector3D applyTo = applyTo(Vector3D.PLUS_K);
                Vector3D applyInverseTo = applyInverseTo(Vector3D.PLUS_I);
                if (applyInverseTo.getZ() < -0.9999999999d || applyInverseTo.getZ() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(-applyTo.getY(), applyTo.getZ()), FastMath.asin(applyInverseTo.getZ()), FastMath.atan2(-applyInverseTo.getY(), applyInverseTo.getX())};
            }
            if (rotationOrder == RotationOrder.XZY) {
                Vector3D applyTo2 = applyTo(Vector3D.PLUS_J);
                Vector3D applyInverseTo2 = applyInverseTo(Vector3D.PLUS_I);
                if (applyInverseTo2.getY() < -0.9999999999d || applyInverseTo2.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(applyTo2.getZ(), applyTo2.getY()), -FastMath.asin(applyInverseTo2.getY()), FastMath.atan2(applyInverseTo2.getZ(), applyInverseTo2.getX())};
            }
            if (rotationOrder == RotationOrder.YXZ) {
                Vector3D applyTo3 = applyTo(Vector3D.PLUS_K);
                Vector3D applyInverseTo3 = applyInverseTo(Vector3D.PLUS_J);
                if (applyInverseTo3.getZ() < -0.9999999999d || applyInverseTo3.getZ() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(applyTo3.getX(), applyTo3.getZ()), -FastMath.asin(applyInverseTo3.getZ()), FastMath.atan2(applyInverseTo3.getX(), applyInverseTo3.getY())};
            }
            if (rotationOrder == RotationOrder.YZX) {
                Vector3D applyTo4 = applyTo(Vector3D.PLUS_I);
                Vector3D applyInverseTo4 = applyInverseTo(Vector3D.PLUS_J);
                if (applyInverseTo4.getX() < -0.9999999999d || applyInverseTo4.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(-applyTo4.getZ(), applyTo4.getX()), FastMath.asin(applyInverseTo4.getX()), FastMath.atan2(-applyInverseTo4.getZ(), applyInverseTo4.getY())};
            }
            if (rotationOrder == RotationOrder.ZXY) {
                Vector3D applyTo5 = applyTo(Vector3D.PLUS_J);
                Vector3D applyInverseTo5 = applyInverseTo(Vector3D.PLUS_K);
                if (applyInverseTo5.getY() < -0.9999999999d || applyInverseTo5.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(-applyTo5.getX(), applyTo5.getY()), FastMath.asin(applyInverseTo5.getY()), FastMath.atan2(-applyInverseTo5.getX(), applyInverseTo5.getZ())};
            }
            if (rotationOrder == RotationOrder.ZYX) {
                Vector3D applyTo6 = applyTo(Vector3D.PLUS_I);
                Vector3D applyInverseTo6 = applyInverseTo(Vector3D.PLUS_K);
                if (applyInverseTo6.getX() < -0.9999999999d || applyInverseTo6.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(true);
                }
                return new double[]{FastMath.atan2(applyTo6.getY(), applyTo6.getX()), -FastMath.asin(applyInverseTo6.getX()), FastMath.atan2(applyInverseTo6.getY(), applyInverseTo6.getZ())};
            }
            if (rotationOrder == RotationOrder.XYX) {
                Vector3D vector3D = Vector3D.PLUS_I;
                Vector3D applyTo7 = applyTo(vector3D);
                Vector3D applyInverseTo7 = applyInverseTo(vector3D);
                if (applyInverseTo7.getX() < -0.9999999999d || applyInverseTo7.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(applyTo7.getY(), -applyTo7.getZ()), FastMath.acos(applyInverseTo7.getX()), FastMath.atan2(applyInverseTo7.getY(), applyInverseTo7.getZ())};
            }
            if (rotationOrder == RotationOrder.XZX) {
                Vector3D vector3D2 = Vector3D.PLUS_I;
                Vector3D applyTo8 = applyTo(vector3D2);
                Vector3D applyInverseTo8 = applyInverseTo(vector3D2);
                if (applyInverseTo8.getX() < -0.9999999999d || applyInverseTo8.getX() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(applyTo8.getZ(), applyTo8.getY()), FastMath.acos(applyInverseTo8.getX()), FastMath.atan2(applyInverseTo8.getZ(), -applyInverseTo8.getY())};
            }
            if (rotationOrder == RotationOrder.YXY) {
                Vector3D vector3D3 = Vector3D.PLUS_J;
                Vector3D applyTo9 = applyTo(vector3D3);
                Vector3D applyInverseTo9 = applyInverseTo(vector3D3);
                if (applyInverseTo9.getY() < -0.9999999999d || applyInverseTo9.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(applyTo9.getX(), applyTo9.getZ()), FastMath.acos(applyInverseTo9.getY()), FastMath.atan2(applyInverseTo9.getX(), -applyInverseTo9.getZ())};
            }
            if (rotationOrder == RotationOrder.YZY) {
                Vector3D vector3D4 = Vector3D.PLUS_J;
                Vector3D applyTo10 = applyTo(vector3D4);
                Vector3D applyInverseTo10 = applyInverseTo(vector3D4);
                if (applyInverseTo10.getY() < -0.9999999999d || applyInverseTo10.getY() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(applyTo10.getZ(), -applyTo10.getX()), FastMath.acos(applyInverseTo10.getY()), FastMath.atan2(applyInverseTo10.getZ(), applyInverseTo10.getX())};
            }
            if (rotationOrder == RotationOrder.ZXZ) {
                Vector3D vector3D5 = Vector3D.PLUS_K;
                Vector3D applyTo11 = applyTo(vector3D5);
                Vector3D applyInverseTo11 = applyInverseTo(vector3D5);
                if (applyInverseTo11.getZ() < -0.9999999999d || applyInverseTo11.getZ() > 0.9999999999d) {
                    throw new CardanEulerSingularityException(false);
                }
                return new double[]{FastMath.atan2(applyTo11.getX(), -applyTo11.getY()), FastMath.acos(applyInverseTo11.getZ()), FastMath.atan2(applyInverseTo11.getX(), applyInverseTo11.getY())};
            }
            Vector3D vector3D6 = Vector3D.PLUS_K;
            Vector3D applyTo12 = applyTo(vector3D6);
            Vector3D applyInverseTo12 = applyInverseTo(vector3D6);
            if (applyInverseTo12.getZ() < -0.9999999999d || applyInverseTo12.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(applyTo12.getY(), applyTo12.getX()), FastMath.acos(applyInverseTo12.getZ()), FastMath.atan2(applyInverseTo12.getY(), -applyInverseTo12.getX())};
        }
        if (rotationOrder == RotationOrder.XYZ) {
            Vector3D applyTo13 = applyTo(Vector3D.PLUS_I);
            Vector3D applyInverseTo13 = applyInverseTo(Vector3D.PLUS_K);
            if (applyInverseTo13.getX() < -0.9999999999d || applyInverseTo13.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(-applyInverseTo13.getY(), applyInverseTo13.getZ()), FastMath.asin(applyInverseTo13.getX()), FastMath.atan2(-applyTo13.getY(), applyTo13.getX())};
        }
        if (rotationOrder == RotationOrder.XZY) {
            Vector3D applyTo14 = applyTo(Vector3D.PLUS_I);
            Vector3D applyInverseTo14 = applyInverseTo(Vector3D.PLUS_J);
            if (applyInverseTo14.getX() < -0.9999999999d || applyInverseTo14.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(applyInverseTo14.getZ(), applyInverseTo14.getY()), -FastMath.asin(applyInverseTo14.getX()), FastMath.atan2(applyTo14.getZ(), applyTo14.getX())};
        }
        if (rotationOrder == RotationOrder.YXZ) {
            Vector3D applyTo15 = applyTo(Vector3D.PLUS_J);
            Vector3D applyInverseTo15 = applyInverseTo(Vector3D.PLUS_K);
            if (applyInverseTo15.getY() < -0.9999999999d || applyInverseTo15.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(applyInverseTo15.getX(), applyInverseTo15.getZ()), -FastMath.asin(applyInverseTo15.getY()), FastMath.atan2(applyTo15.getX(), applyTo15.getY())};
        }
        if (rotationOrder == RotationOrder.YZX) {
            Vector3D applyTo16 = applyTo(Vector3D.PLUS_J);
            Vector3D applyInverseTo16 = applyInverseTo(Vector3D.PLUS_I);
            if (applyInverseTo16.getY() < -0.9999999999d || applyInverseTo16.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(-applyInverseTo16.getZ(), applyInverseTo16.getX()), FastMath.asin(applyInverseTo16.getY()), FastMath.atan2(-applyTo16.getZ(), applyTo16.getY())};
        }
        if (rotationOrder == RotationOrder.ZXY) {
            Vector3D applyTo17 = applyTo(Vector3D.PLUS_K);
            Vector3D applyInverseTo17 = applyInverseTo(Vector3D.PLUS_J);
            if (applyInverseTo17.getZ() < -0.9999999999d || applyInverseTo17.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(-applyInverseTo17.getX(), applyInverseTo17.getY()), FastMath.asin(applyInverseTo17.getZ()), FastMath.atan2(-applyTo17.getX(), applyTo17.getZ())};
        }
        if (rotationOrder == RotationOrder.ZYX) {
            Vector3D applyTo18 = applyTo(Vector3D.PLUS_K);
            Vector3D applyInverseTo18 = applyInverseTo(Vector3D.PLUS_I);
            if (applyInverseTo18.getZ() < -0.9999999999d || applyInverseTo18.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(true);
            }
            return new double[]{FastMath.atan2(applyInverseTo18.getY(), applyInverseTo18.getX()), -FastMath.asin(applyInverseTo18.getZ()), FastMath.atan2(applyTo18.getY(), applyTo18.getZ())};
        }
        if (rotationOrder == RotationOrder.XYX) {
            Vector3D vector3D7 = Vector3D.PLUS_I;
            Vector3D applyTo19 = applyTo(vector3D7);
            Vector3D applyInverseTo19 = applyInverseTo(vector3D7);
            if (applyInverseTo19.getX() < -0.9999999999d || applyInverseTo19.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(applyInverseTo19.getY(), -applyInverseTo19.getZ()), FastMath.acos(applyInverseTo19.getX()), FastMath.atan2(applyTo19.getY(), applyTo19.getZ())};
        }
        if (rotationOrder == RotationOrder.XZX) {
            Vector3D vector3D8 = Vector3D.PLUS_I;
            Vector3D applyTo20 = applyTo(vector3D8);
            Vector3D applyInverseTo20 = applyInverseTo(vector3D8);
            if (applyInverseTo20.getX() < -0.9999999999d || applyInverseTo20.getX() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(applyInverseTo20.getZ(), applyInverseTo20.getY()), FastMath.acos(applyInverseTo20.getX()), FastMath.atan2(applyTo20.getZ(), -applyTo20.getY())};
        }
        if (rotationOrder == RotationOrder.YXY) {
            Vector3D vector3D9 = Vector3D.PLUS_J;
            Vector3D applyTo21 = applyTo(vector3D9);
            Vector3D applyInverseTo21 = applyInverseTo(vector3D9);
            if (applyInverseTo21.getY() < -0.9999999999d || applyInverseTo21.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(applyInverseTo21.getX(), applyInverseTo21.getZ()), FastMath.acos(applyInverseTo21.getY()), FastMath.atan2(applyTo21.getX(), -applyTo21.getZ())};
        }
        if (rotationOrder == RotationOrder.YZY) {
            Vector3D vector3D10 = Vector3D.PLUS_J;
            Vector3D applyTo22 = applyTo(vector3D10);
            Vector3D applyInverseTo22 = applyInverseTo(vector3D10);
            if (applyInverseTo22.getY() < -0.9999999999d || applyInverseTo22.getY() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(applyInverseTo22.getZ(), -applyInverseTo22.getX()), FastMath.acos(applyInverseTo22.getY()), FastMath.atan2(applyTo22.getZ(), applyTo22.getX())};
        }
        if (rotationOrder == RotationOrder.ZXZ) {
            Vector3D vector3D11 = Vector3D.PLUS_K;
            Vector3D applyTo23 = applyTo(vector3D11);
            Vector3D applyInverseTo23 = applyInverseTo(vector3D11);
            if (applyInverseTo23.getZ() < -0.9999999999d || applyInverseTo23.getZ() > 0.9999999999d) {
                throw new CardanEulerSingularityException(false);
            }
            return new double[]{FastMath.atan2(applyInverseTo23.getX(), -applyInverseTo23.getY()), FastMath.acos(applyInverseTo23.getZ()), FastMath.atan2(applyTo23.getX(), applyTo23.getY())};
        }
        Vector3D vector3D12 = Vector3D.PLUS_K;
        Vector3D applyTo24 = applyTo(vector3D12);
        Vector3D applyInverseTo24 = applyInverseTo(vector3D12);
        if (applyInverseTo24.getZ() < -0.9999999999d || applyInverseTo24.getZ() > 0.9999999999d) {
            throw new CardanEulerSingularityException(false);
        }
        return new double[]{FastMath.atan2(applyInverseTo24.getY(), applyInverseTo24.getX()), FastMath.acos(applyInverseTo24.getZ()), FastMath.atan2(applyTo24.getY(), -applyTo24.getX())};
    }

    public Vector3D getAxis(RotationConvention rotationConvention) {
        double d = this.f108279q1;
        double d2 = this.f108280q2;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.f108281q3;
        double d5 = d3 + (d4 * d4);
        if (d5 == 0.0d) {
            return rotationConvention == RotationConvention.VECTOR_OPERATOR ? Vector3D.PLUS_I : Vector3D.MINUS_I;
        }
        double d6 = rotationConvention == RotationConvention.VECTOR_OPERATOR ? 1.0d : -1.0d;
        if (this.f108278q0 < 0.0d) {
            double sqrt = d6 / FastMath.sqrt(d5);
            return new Vector3D(this.f108279q1 * sqrt, this.f108280q2 * sqrt, this.f108281q3 * sqrt);
        }
        double sqrt2 = (-d6) / FastMath.sqrt(d5);
        return new Vector3D(this.f108279q1 * sqrt2, this.f108280q2 * sqrt2, this.f108281q3 * sqrt2);
    }

    public void applyTo(double[] dArr, double[] dArr2) {
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = dArr[2];
        double d4 = this.f108279q1;
        double d5 = this.f108280q2;
        double d6 = this.f108281q3;
        double d7 = (d4 * d) + (d5 * d2) + (d6 * d3);
        double d8 = this.f108278q0;
        dArr2[0] = (((((d * d8) - ((d5 * d3) - (d6 * d2))) * d8) + (d7 * d4)) * 2.0d) - d;
        dArr2[1] = (((((d2 * d8) - ((d6 * d) - (d4 * d3))) * d8) + (d7 * d5)) * 2.0d) - d2;
        dArr2[2] = (((d8 * ((d3 * d8) - ((d4 * d2) - (d5 * d)))) + (d7 * d6)) * 2.0d) - d3;
    }

    @Deprecated
    public Rotation(Vector3D vector3D, double d) throws MathIllegalArgumentException {
        this(vector3D, d, RotationConvention.VECTOR_OPERATOR);
    }

    public void applyInverseTo(double[] dArr, double[] dArr2) {
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = dArr[2];
        double d4 = this.f108279q1;
        double d5 = this.f108280q2;
        double d6 = this.f108281q3;
        double d7 = (d4 * d) + (d5 * d2) + (d6 * d3);
        double d8 = -this.f108278q0;
        dArr2[0] = (((((d * d8) - ((d5 * d3) - (d6 * d2))) * d8) + (d7 * d4)) * 2.0d) - d;
        dArr2[1] = (((((d2 * d8) - ((d6 * d) - (d4 * d3))) * d8) + (d7 * d5)) * 2.0d) - d2;
        dArr2[2] = (((d8 * ((d3 * d8) - ((d4 * d2) - (d5 * d)))) + (d7 * d6)) * 2.0d) - d3;
    }

    public Rotation(Vector3D vector3D, double d, RotationConvention rotationConvention) throws MathIllegalArgumentException {
        double norm = vector3D.getNorm();
        if (norm != 0.0d) {
            double d2 = d * (rotationConvention == RotationConvention.VECTOR_OPERATOR ? -0.5d : 0.5d);
            double sin = FastMath.sin(d2) / norm;
            this.f108278q0 = FastMath.cos(d2);
            this.f108279q1 = vector3D.getX() * sin;
            this.f108280q2 = vector3D.getY() * sin;
            this.f108281q3 = sin * vector3D.getZ();
            return;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_AXIS, new Object[0]);
    }

    public Rotation applyTo(Rotation rotation) {
        return compose(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public Rotation applyInverseTo(Rotation rotation) {
        return composeInverse(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public Rotation(double[][] dArr, double d) throws NotARotationMatrixException {
        if (dArr.length == 3 && dArr[0].length == 3 && dArr[1].length == 3 && dArr[2].length == 3) {
            double[][] orthogonalizeMatrix = orthogonalizeMatrix(dArr, d);
            double[] dArr2 = orthogonalizeMatrix[0];
            double d2 = dArr2[0];
            double[] dArr3 = orthogonalizeMatrix[1];
            double d3 = dArr3[1];
            double[] dArr4 = orthogonalizeMatrix[2];
            double d4 = dArr4[2];
            double d5 = dArr4[1];
            double d6 = dArr3[2];
            double d7 = dArr3[0];
            double d8 = dArr2[1];
            double d9 = dArr2[2];
            double d10 = ((d2 * ((d3 * d4) - (d5 * d6))) - (d7 * ((d4 * d8) - (d5 * d9)))) + (dArr4[0] * ((d8 * d6) - (d3 * d9)));
            if (d10 >= 0.0d) {
                double[] mat2quat = mat2quat(orthogonalizeMatrix);
                this.f108278q0 = mat2quat[0];
                this.f108279q1 = mat2quat[1];
                this.f108280q2 = mat2quat[2];
                this.f108281q3 = mat2quat[3];
                return;
            }
            throw new NotARotationMatrixException(LocalizedFormats.CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT, Double.valueOf(d10));
        }
        throw new NotARotationMatrixException(LocalizedFormats.ROTATION_MATRIX_DIMENSIONS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Rotation(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, Vector3D vector3D4) throws MathArithmeticException {
        ?? normalize = vector3D.crossProduct(vector3D2).normalize();
        ?? normalize2 = normalize.crossProduct(vector3D).normalize();
        ?? normalize3 = vector3D.normalize();
        ?? normalize4 = vector3D3.crossProduct(vector3D4).normalize();
        ?? normalize5 = normalize4.crossProduct(vector3D3).normalize();
        ?? normalize6 = vector3D3.normalize();
        double[] mat2quat = mat2quat(new double[][]{new double[]{MathArrays.linearCombination(normalize3.getX(), normalize6.getX(), normalize2.getX(), normalize5.getX(), normalize.getX(), normalize4.getX()), MathArrays.linearCombination(normalize3.getY(), normalize6.getX(), normalize2.getY(), normalize5.getX(), normalize.getY(), normalize4.getX()), MathArrays.linearCombination(normalize3.getZ(), normalize6.getX(), normalize2.getZ(), normalize5.getX(), normalize.getZ(), normalize4.getX())}, new double[]{MathArrays.linearCombination(normalize3.getX(), normalize6.getY(), normalize2.getX(), normalize5.getY(), normalize.getX(), normalize4.getY()), MathArrays.linearCombination(normalize3.getY(), normalize6.getY(), normalize2.getY(), normalize5.getY(), normalize.getY(), normalize4.getY()), MathArrays.linearCombination(normalize3.getZ(), normalize6.getY(), normalize2.getZ(), normalize5.getY(), normalize.getZ(), normalize4.getY())}, new double[]{MathArrays.linearCombination(normalize3.getX(), normalize6.getZ(), normalize2.getX(), normalize5.getZ(), normalize.getX(), normalize4.getZ()), MathArrays.linearCombination(normalize3.getY(), normalize6.getZ(), normalize2.getY(), normalize5.getZ(), normalize.getY(), normalize4.getZ()), MathArrays.linearCombination(normalize3.getZ(), normalize6.getZ(), normalize2.getZ(), normalize5.getZ(), normalize.getZ(), normalize4.getZ())}});
        this.f108278q0 = mat2quat[0];
        this.f108279q1 = mat2quat[1];
        this.f108280q2 = mat2quat[2];
        this.f108281q3 = mat2quat[3];
    }

    public Rotation(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        double norm = vector3D.getNorm() * vector3D2.getNorm();
        if (norm != 0.0d) {
            double dotProduct = vector3D.dotProduct(vector3D2);
            if (dotProduct < (-0.999999999999998d) * norm) {
                Vector3D orthogonal = vector3D.orthogonal();
                this.f108278q0 = 0.0d;
                this.f108279q1 = -orthogonal.getX();
                this.f108280q2 = -orthogonal.getY();
                this.f108281q3 = -orthogonal.getZ();
                return;
            }
            double sqrt = FastMath.sqrt(((dotProduct / norm) + 1.0d) * 0.5d);
            this.f108278q0 = sqrt;
            double d = 1.0d / ((sqrt * 2.0d) * norm);
            Vector3D crossProduct = vector3D2.crossProduct(vector3D);
            this.f108279q1 = crossProduct.getX() * d;
            this.f108280q2 = crossProduct.getY() * d;
            this.f108281q3 = d * crossProduct.getZ();
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR, new Object[0]);
    }

    @Deprecated
    public Rotation(RotationOrder rotationOrder, double d, double d2, double d3) {
        this(rotationOrder, RotationConvention.VECTOR_OPERATOR, d, d2, d3);
    }

    public Rotation(RotationOrder rotationOrder, RotationConvention rotationConvention, double d, double d2, double d3) {
        Rotation compose = new Rotation(rotationOrder.getA1(), d, rotationConvention).compose(new Rotation(rotationOrder.getA2(), d2, rotationConvention).compose(new Rotation(rotationOrder.getA3(), d3, rotationConvention), rotationConvention), rotationConvention);
        this.f108278q0 = compose.f108278q0;
        this.f108279q1 = compose.f108279q1;
        this.f108280q2 = compose.f108280q2;
        this.f108281q3 = compose.f108281q3;
    }
}
