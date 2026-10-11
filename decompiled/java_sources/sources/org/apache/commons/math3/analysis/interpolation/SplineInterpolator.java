package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class SplineInterpolator implements UnivariateInterpolator {
    @Override // org.apache.commons.math3.analysis.interpolation.UnivariateInterpolator
    public PolynomialSplineFunction interpolate(double[] dArr, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, NonMonotonicSequenceException {
        if (dArr.length == dArr2.length) {
            if (dArr.length >= 3) {
                int length = dArr.length - 1;
                MathArrays.checkOrder(dArr);
                double[] dArr3 = new double[length];
                int i = 0;
                while (i < length) {
                    int i2 = i + 1;
                    dArr3[i] = dArr[i2] - dArr[i];
                    i = i2;
                }
                double[] dArr4 = new double[length];
                int i3 = length + 1;
                double[] dArr5 = new double[i3];
                dArr4[0] = 0.0d;
                dArr5[0] = 0.0d;
                int i4 = 1;
                while (i4 < length) {
                    int i5 = i4 + 1;
                    int i6 = i4 - 1;
                    double d = ((dArr[i5] - dArr[i6]) * 2.0d) - (dArr3[i6] * dArr4[i6]);
                    dArr4[i4] = dArr3[i4] / d;
                    double d2 = dArr2[i5];
                    double d3 = dArr3[i6];
                    double d4 = (d2 * d3) - (dArr2[i4] * (dArr[i5] - dArr[i6]));
                    double d5 = dArr2[i6];
                    double d6 = dArr3[i4];
                    dArr5[i4] = ((((d4 + (d5 * d6)) * 3.0d) / (d6 * d3)) - (d3 * dArr5[i6])) / d;
                    i4 = i5;
                }
                double[] dArr6 = new double[length];
                double[] dArr7 = new double[i3];
                double[] dArr8 = new double[length];
                dArr5[length] = 0.0d;
                dArr7[length] = 0.0d;
                for (int i7 = length - 1; i7 >= 0; i7--) {
                    int i8 = i7 + 1;
                    double d7 = dArr5[i7] - (dArr4[i7] * dArr7[i8]);
                    dArr7[i7] = d7;
                    double d8 = dArr2[i8] - dArr2[i7];
                    double d9 = dArr3[i7];
                    dArr6[i7] = (d8 / d9) - ((d9 * (dArr7[i8] + (d7 * 2.0d))) / 3.0d);
                    dArr8[i7] = (dArr7[i8] - dArr7[i7]) / (dArr3[i7] * 3.0d);
                }
                PolynomialFunction[] polynomialFunctionArr = new PolynomialFunction[length];
                double[] dArr9 = new double[4];
                for (int i9 = 0; i9 < length; i9++) {
                    dArr9[0] = dArr2[i9];
                    dArr9[1] = dArr6[i9];
                    dArr9[2] = dArr7[i9];
                    dArr9[3] = dArr8[i9];
                    polynomialFunctionArr[i9] = new PolynomialFunction(dArr9);
                }
                return new PolynomialSplineFunction(dArr, polynomialFunctionArr);
            }
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(dArr.length), 3, true);
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }
}
