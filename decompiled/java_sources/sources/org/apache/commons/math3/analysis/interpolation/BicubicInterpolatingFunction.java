package org.apache.commons.math3.analysis.interpolation;

import com.sunia.HTREnginev2.C14206oq;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class BicubicInterpolatingFunction implements BivariateFunction {

    /* renamed from: d */
    public static final int f107851d = 16;

    /* renamed from: e */
    public static final double[][] f107852e = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d}, new double[]{9.0d, -9.0d, -9.0d, 9.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 4.0d, 2.0d, 2.0d, 1.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -3.0d, -3.0d, 3.0d, 3.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, -2.0d, -1.0d, -1.0d}, new double[]{2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -2.0d, 4.0d, 2.0d, -3.0d, 3.0d, -3.0d, 3.0d, -2.0d, -1.0d, -2.0d, -1.0d}, new double[]{4.0d, -4.0d, -4.0d, 4.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 1.0d, 1.0d, 1.0d, 1.0d}};

    /* renamed from: a */
    public final double[] f107853a;

    /* renamed from: b */
    public final double[] f107854b;

    /* renamed from: c */
    public final C14206oq[][] f107855c;

    public BicubicInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6) throws DimensionMismatchException, NoDataException, NonMonotonicSequenceException {
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length != 0 && length2 != 0 && dArr3.length != 0) {
            int i = 0;
            if (dArr3[0].length != 0) {
                if (length != dArr3.length) {
                    throw new DimensionMismatchException(length, dArr3.length);
                }
                if (length != dArr4.length) {
                    throw new DimensionMismatchException(length, dArr4.length);
                }
                if (length != dArr5.length) {
                    throw new DimensionMismatchException(length, dArr5.length);
                }
                if (length != dArr6.length) {
                    throw new DimensionMismatchException(length, dArr6.length);
                }
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                this.f107853a = (double[]) dArr.clone();
                this.f107854b = (double[]) dArr2.clone();
                int i2 = length - 1;
                int i3 = length2 - 1;
                this.f107855c = (C14206oq[][]) Array.newInstance((Class<?>) C14206oq.class, i2, i3);
                int i4 = 0;
                while (i4 < i2) {
                    if (dArr3[i4].length != length2) {
                        throw new DimensionMismatchException(dArr3[i4].length, length2);
                    }
                    if (dArr4[i4].length != length2) {
                        throw new DimensionMismatchException(dArr4[i4].length, length2);
                    }
                    if (dArr5[i4].length != length2) {
                        throw new DimensionMismatchException(dArr5[i4].length, length2);
                    }
                    if (dArr6[i4].length != length2) {
                        throw new DimensionMismatchException(dArr6[i4].length, length2);
                    }
                    int i5 = i4 + 1;
                    double[] dArr7 = this.f107853a;
                    double d = dArr7[i5] - dArr7[i4];
                    int i6 = i;
                    while (i6 < i3) {
                        int i7 = i6 + 1;
                        double[] dArr8 = this.f107854b;
                        double d2 = dArr8[i7] - dArr8[i6];
                        double d3 = d * d2;
                        double[] dArr9 = new double[16];
                        double[] dArr10 = dArr3[i4];
                        dArr9[i] = dArr10[i6];
                        double[] dArr11 = dArr3[i5];
                        dArr9[1] = dArr11[i6];
                        dArr9[2] = dArr10[i7];
                        dArr9[3] = dArr11[i7];
                        double[] dArr12 = dArr4[i4];
                        dArr9[4] = dArr12[i6] * d;
                        double[] dArr13 = dArr4[i5];
                        dArr9[5] = dArr13[i6] * d;
                        dArr9[6] = dArr12[i7] * d;
                        dArr9[7] = dArr13[i7] * d;
                        double[] dArr14 = dArr5[i4];
                        dArr9[8] = dArr14[i6] * d2;
                        double[] dArr15 = dArr5[i5];
                        dArr9[9] = dArr15[i6] * d2;
                        dArr9[10] = dArr14[i7] * d2;
                        dArr9[11] = dArr15[i7] * d2;
                        double[] dArr16 = dArr6[i4];
                        dArr9[12] = dArr16[i6] * d3;
                        double[] dArr17 = dArr6[i5];
                        dArr9[13] = dArr17[i6] * d3;
                        dArr9[14] = dArr16[i7] * d3;
                        dArr9[15] = dArr17[i7] * d3;
                        this.f107855c[i4][i6] = new C14206oq(m67494a(dArr9));
                        i2 = i2;
                        i6 = i7;
                        i = 0;
                    }
                    i4 = i5;
                }
                return;
            }
        }
        throw new NoDataException();
    }

    /* renamed from: a */
    public final double[] m67494a(double[] dArr) {
        double[] dArr2 = new double[16];
        for (int i = 0; i < 16; i++) {
            double[] dArr3 = f107852e[i];
            double d = 0.0d;
            for (int i2 = 0; i2 < 16; i2++) {
                d += dArr3[i2] * dArr[i2];
            }
            dArr2[i] = d;
        }
        return dArr2;
    }

    /* renamed from: b */
    public final int m67495b(double d, double[] dArr) {
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
        double[] dArr = this.f107853a;
        if (d >= dArr[0] && d <= dArr[dArr.length - 1]) {
            double[] dArr2 = this.f107854b;
            if (d2 >= dArr2[0] && d2 <= dArr2[dArr2.length - 1]) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d, double d2) throws OutOfRangeException {
        int m67495b = m67495b(d, this.f107853a);
        int m67495b2 = m67495b(d2, this.f107854b);
        double[] dArr = this.f107853a;
        double d3 = dArr[m67495b];
        double d4 = (d - d3) / (dArr[m67495b + 1] - d3);
        double[] dArr2 = this.f107854b;
        double d5 = dArr2[m67495b2];
        return this.f107855c[m67495b][m67495b2].value(d4, (d2 - d5) / (dArr2[m67495b2 + 1] - d5));
    }
}
