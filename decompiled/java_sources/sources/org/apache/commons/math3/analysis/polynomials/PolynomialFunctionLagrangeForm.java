package org.apache.commons.math3.analysis.polynomials;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class PolynomialFunctionLagrangeForm implements UnivariateFunction {

    /* renamed from: e */
    public double[] f107928e;

    /* renamed from: f */
    public final double[] f107929f;

    /* renamed from: g */
    public final double[] f107930g;

    /* renamed from: h */
    public boolean f107931h;

    public PolynomialFunctionLagrangeForm(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        double[] dArr3 = new double[dArr.length];
        this.f107929f = dArr3;
        double[] dArr4 = new double[dArr2.length];
        this.f107930g = dArr4;
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        this.f107931h = false;
        if (verifyInterpolationArray(dArr, dArr2, false)) {
            return;
        }
        MathArrays.sortInPlace(dArr3, dArr4);
        verifyInterpolationArray(dArr3, dArr4, true);
    }

    /* renamed from: a */
    public static double m67525a(double[] dArr, double[] dArr2, double d) {
        double d2;
        int length = dArr.length;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        double d3 = Double.POSITIVE_INFINITY;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            dArr3[i2] = dArr2[i2];
            dArr4[i2] = dArr2[i2];
            double abs = FastMath.abs(d - dArr[i2]);
            if (abs < d3) {
                i = i2;
                d3 = abs;
            }
        }
        double d4 = dArr2[i];
        for (int i3 = 1; i3 < length; i3++) {
            int i4 = 0;
            while (true) {
                if (i4 >= length - i3) {
                    break;
                }
                double d5 = dArr[i4];
                double d6 = d5 - d;
                double d7 = dArr[i3 + i4];
                double d8 = d7 - d;
                double d9 = d5 - d7;
                int i5 = i4 + 1;
                double d10 = (dArr3[i5] - dArr4[i4]) / d9;
                dArr3[i4] = d6 * d10;
                dArr4[i4] = d8 * d10;
                i4 = i5;
            }
            if (i < (r10 + 1) * 0.5d) {
                d2 = dArr3[i];
            } else {
                i--;
                d2 = dArr4[i];
            }
            d4 += d2;
        }
        return d4;
    }

    public static double evaluate(double[] dArr, double[] dArr2, double d) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (verifyInterpolationArray(dArr, dArr2, false)) {
            return m67525a(dArr, dArr2, d);
        }
        double[] dArr3 = new double[dArr.length];
        double[] dArr4 = new double[dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        MathArrays.sortInPlace(dArr3, dArr4);
        verifyInterpolationArray(dArr3, dArr4, true);
        return m67525a(dArr3, dArr4, d);
    }

    public static boolean verifyInterpolationArray(double[] dArr, double[] dArr2, boolean z) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length >= 2) {
            return MathArrays.checkOrder(dArr, MathArrays.OrderDirection.INCREASING, true, z);
        }
        throw new NumberIsTooSmallException(LocalizedFormats.WRONG_NUMBER_OF_POINTS, 2, Integer.valueOf(dArr.length), true);
    }

    public void computeCoefficients() {
        int degree = degree() + 1;
        this.f107928e = new double[degree];
        int i = 0;
        for (int i2 = 0; i2 < degree; i2++) {
            this.f107928e[i2] = 0.0d;
        }
        double[] dArr = new double[degree + 1];
        dArr[0] = 1.0d;
        int i3 = 0;
        while (i3 < degree) {
            for (int i4 = i3; i4 > 0; i4--) {
                dArr[i4] = dArr[i4 - 1] - (dArr[i4] * this.f107929f[i3]);
            }
            dArr[0] = dArr[0] * (-this.f107929f[i3]);
            i3++;
            dArr[i3] = 1.0d;
        }
        double[] dArr2 = new double[degree];
        int i5 = 0;
        while (i5 < degree) {
            double d = 1.0d;
            for (int i6 = i; i6 < degree; i6++) {
                if (i5 != i6) {
                    double[] dArr3 = this.f107929f;
                    d *= dArr3[i5] - dArr3[i6];
                }
            }
            double d2 = this.f107930g[i5] / d;
            int i7 = degree - 1;
            double d3 = dArr[degree];
            dArr2[i7] = d3;
            double[] dArr4 = this.f107928e;
            dArr4[i7] = dArr4[i7] + (d3 * d2);
            for (int i8 = degree - 2; i8 >= 0; i8--) {
                int i9 = i8 + 1;
                double d4 = dArr[i9] + (dArr2[i9] * this.f107929f[i5]);
                dArr2[i8] = d4;
                double[] dArr5 = this.f107928e;
                dArr5[i8] = dArr5[i8] + (d4 * d2);
            }
            i5++;
            i = 0;
        }
        this.f107931h = true;
    }

    public int degree() {
        return this.f107929f.length - 1;
    }

    public double[] getCoefficients() {
        if (!this.f107931h) {
            computeCoefficients();
        }
        double[] dArr = this.f107928e;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getInterpolatingPoints() {
        double[] dArr = this.f107929f;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getInterpolatingValues() {
        double[] dArr = this.f107930g;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) {
        return m67525a(this.f107929f, this.f107930g, d);
    }
}
