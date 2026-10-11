package org.apache.commons.math3.analysis.interpolation;

import com.sunia.HTREnginev2.C14258pq;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
/* loaded from: classes12.dex */
public class BicubicSplineInterpolatingFunction implements BivariateFunction {

    /* renamed from: e */
    public static final int f107859e = 16;

    /* renamed from: f */
    public static final double[][] f107860f = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d}, new double[]{9.0d, -9.0d, -9.0d, 9.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 4.0d, 2.0d, 2.0d, 1.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -3.0d, -3.0d, 3.0d, 3.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, -2.0d, -1.0d, -1.0d}, new double[]{2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -2.0d, 4.0d, 2.0d, -3.0d, 3.0d, -3.0d, 3.0d, -2.0d, -1.0d, -2.0d, -1.0d}, new double[]{4.0d, -4.0d, -4.0d, 4.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 1.0d, 1.0d, 1.0d, 1.0d}};

    /* renamed from: a */
    public final double[] f107861a;

    /* renamed from: b */
    public final double[] f107862b;

    /* renamed from: c */
    public final C14258pq[][] f107863c;

    /* renamed from: d */
    public final BivariateFunction[][][] f107864d;

    public BicubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6) throws DimensionMismatchException, NoDataException, NonMonotonicSequenceException {
        this(dArr, dArr2, dArr3, dArr4, dArr5, dArr6, false);
    }

    /* renamed from: a */
    public final double[] m67496a(double[] dArr) {
        double[] dArr2 = new double[16];
        for (int i = 0; i < 16; i++) {
            double[] dArr3 = f107860f[i];
            double d = 0.0d;
            for (int i2 = 0; i2 < 16; i2++) {
                d += dArr3[i2] * dArr[i2];
            }
            dArr2[i] = d;
        }
        return dArr2;
    }

    /* renamed from: b */
    public final double m67497b(int i, double d, double d2) throws OutOfRangeException {
        int m67498c = m67498c(d, this.f107861a);
        int m67498c2 = m67498c(d2, this.f107862b);
        double[] dArr = this.f107861a;
        double d3 = dArr[m67498c];
        double d4 = (d - d3) / (dArr[m67498c + 1] - d3);
        double[] dArr2 = this.f107862b;
        double d5 = dArr2[m67498c2];
        return this.f107864d[i][m67498c][m67498c2].value(d4, (d2 - d5) / (dArr2[m67498c2 + 1] - d5));
    }

    /* renamed from: c */
    public final int m67498c(double d, double[] dArr) {
        int binarySearch = Arrays.binarySearch(dArr, d);
        if (binarySearch == -1 || binarySearch == (-dArr.length) - 1) {
            throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(dArr[0]), Double.valueOf(dArr[dArr.length - 1]));
        }
        if (binarySearch < 0) {
            return (-binarySearch) - 2;
        }
        int length = dArr.length - 1;
        return binarySearch == length ? length - 1 : binarySearch;
    }

    public boolean isValidPoint(double d, double d2) {
        double[] dArr = this.f107861a;
        if (d >= dArr[0] && d <= dArr[dArr.length - 1]) {
            double[] dArr2 = this.f107862b;
            if (d2 >= dArr2[0] && d2 <= dArr2[dArr2.length - 1]) {
                return true;
            }
        }
        return false;
    }

    public double partialDerivativeX(double d, double d2) throws OutOfRangeException {
        return m67497b(0, d, d2);
    }

    public double partialDerivativeXX(double d, double d2) throws OutOfRangeException {
        return m67497b(2, d, d2);
    }

    public double partialDerivativeXY(double d, double d2) throws OutOfRangeException {
        return m67497b(4, d, d2);
    }

    public double partialDerivativeY(double d, double d2) throws OutOfRangeException {
        return m67497b(1, d, d2);
    }

    public double partialDerivativeYY(double d, double d2) throws OutOfRangeException {
        return m67497b(3, d, d2);
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d, double d2) throws OutOfRangeException {
        int m67498c = m67498c(d, this.f107861a);
        int m67498c2 = m67498c(d2, this.f107862b);
        double[] dArr = this.f107861a;
        double d3 = dArr[m67498c];
        double d4 = (d - d3) / (dArr[m67498c + 1] - d3);
        double[] dArr2 = this.f107862b;
        double d5 = dArr2[m67498c2];
        return this.f107863c[m67498c][m67498c2].value(d4, (d2 - d5) / (dArr2[m67498c2 + 1] - d5));
    }

    public BicubicSplineInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6, boolean z) throws DimensionMismatchException, NoDataException, NonMonotonicSequenceException {
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length != 0 && length2 != 0 && dArr3.length != 0 && dArr3[0].length != 0) {
            if (length == dArr3.length) {
                if (length == dArr4.length) {
                    if (length == dArr5.length) {
                        if (length == dArr6.length) {
                            MathArrays.checkOrder(dArr);
                            MathArrays.checkOrder(dArr2);
                            this.f107861a = (double[]) dArr.clone();
                            this.f107862b = (double[]) dArr2.clone();
                            char c = 1;
                            int i = length - 1;
                            int i2 = length2 - 1;
                            this.f107863c = (C14258pq[][]) Array.newInstance((Class<?>) C14258pq.class, i, i2);
                            int i3 = 0;
                            while (true) {
                                char c2 = 2;
                                if (i3 >= i) {
                                    if (z) {
                                        this.f107864d = (BivariateFunction[][][]) Array.newInstance((Class<?>) BivariateFunction.class, 5, i, i2);
                                        for (int i4 = 0; i4 < i; i4++) {
                                            for (int i5 = 0; i5 < i2; i5++) {
                                                C14258pq c14258pq = this.f107863c[i4][i5];
                                                this.f107864d[0][i4][i5] = c14258pq.m56360c();
                                                this.f107864d[1][i4][i5] = c14258pq.m56363f();
                                                this.f107864d[2][i4][i5] = c14258pq.m56361d();
                                                this.f107864d[3][i4][i5] = c14258pq.m56364g();
                                                this.f107864d[4][i4][i5] = c14258pq.m56362e();
                                            }
                                        }
                                        return;
                                    }
                                    this.f107864d = null;
                                    return;
                                }
                                if (dArr3[i3].length == length2) {
                                    if (dArr4[i3].length == length2) {
                                        if (dArr5[i3].length == length2) {
                                            if (dArr6[i3].length != length2) {
                                                throw new DimensionMismatchException(dArr6[i3].length, length2);
                                            }
                                            int i6 = i3 + 1;
                                            int i7 = 0;
                                            while (i7 < i2) {
                                                int i8 = i7 + 1;
                                                double[] dArr7 = new double[16];
                                                double[] dArr8 = dArr3[i3];
                                                dArr7[0] = dArr8[i7];
                                                double[] dArr9 = dArr3[i6];
                                                dArr7[c] = dArr9[i7];
                                                dArr7[c2] = dArr8[i8];
                                                dArr7[3] = dArr9[i8];
                                                double[] dArr10 = dArr4[i3];
                                                dArr7[4] = dArr10[i7];
                                                double[] dArr11 = dArr4[i6];
                                                dArr7[5] = dArr11[i7];
                                                dArr7[6] = dArr10[i8];
                                                dArr7[7] = dArr11[i8];
                                                double[] dArr12 = dArr5[i3];
                                                dArr7[8] = dArr12[i7];
                                                double[] dArr13 = dArr5[i6];
                                                dArr7[9] = dArr13[i7];
                                                dArr7[10] = dArr12[i8];
                                                dArr7[11] = dArr13[i8];
                                                double[] dArr14 = dArr6[i3];
                                                dArr7[12] = dArr14[i7];
                                                double[] dArr15 = dArr6[i6];
                                                dArr7[13] = dArr15[i7];
                                                dArr7[14] = dArr14[i8];
                                                dArr7[15] = dArr15[i8];
                                                this.f107863c[i3][i7] = new C14258pq(m67496a(dArr7), z);
                                                i7 = i8;
                                                c = 1;
                                                c2 = 2;
                                            }
                                            i3 = i6;
                                        } else {
                                            throw new DimensionMismatchException(dArr5[i3].length, length2);
                                        }
                                    } else {
                                        throw new DimensionMismatchException(dArr4[i3].length, length2);
                                    }
                                } else {
                                    throw new DimensionMismatchException(dArr3[i3].length, length2);
                                }
                            }
                        } else {
                            throw new DimensionMismatchException(length, dArr6.length);
                        }
                    } else {
                        throw new DimensionMismatchException(length, dArr5.length);
                    }
                } else {
                    throw new DimensionMismatchException(length, dArr4.length);
                }
            } else {
                throw new DimensionMismatchException(length, dArr3.length);
            }
        } else {
            throw new NoDataException();
        }
    }
}
