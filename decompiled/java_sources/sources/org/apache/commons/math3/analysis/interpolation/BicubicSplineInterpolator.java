package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
/* loaded from: classes12.dex */
public class BicubicSplineInterpolator implements BivariateGridInterpolator {

    /* renamed from: a */
    public final boolean f107865a;

    public BicubicSplineInterpolator() {
        this(false);
    }

    /* renamed from: a */
    public final int m67499a(int i, int i2) {
        int i3 = i + 1;
        return i3 < i2 ? i3 : i3 - 1;
    }

    /* renamed from: b */
    public final int m67500b(int i) {
        int i2 = i - 1;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    public BicubicSplineInterpolator(boolean z) {
        this.f107865a = z;
    }

    @Override // org.apache.commons.math3.analysis.interpolation.BivariateGridInterpolator
    public BicubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[][] dArr3) throws NoDataException, DimensionMismatchException, NonMonotonicSequenceException, NumberIsTooSmallException {
        if (dArr.length != 0 && dArr2.length != 0 && dArr3.length != 0) {
            if (dArr.length == dArr3.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                int length = dArr.length;
                int length2 = dArr2.length;
                double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length2, length);
                for (int i = 0; i < length; i++) {
                    if (dArr3[i].length != length2) {
                        throw new DimensionMismatchException(dArr3[i].length, length2);
                    }
                    for (int i2 = 0; i2 < length2; i2++) {
                        dArr4[i2][i] = dArr3[i][i2];
                    }
                }
                SplineInterpolator splineInterpolator = new SplineInterpolator();
                PolynomialSplineFunction[] polynomialSplineFunctionArr = new PolynomialSplineFunction[length2];
                for (int i3 = 0; i3 < length2; i3++) {
                    polynomialSplineFunctionArr[i3] = splineInterpolator.interpolate(dArr, dArr4[i3]);
                }
                PolynomialSplineFunction[] polynomialSplineFunctionArr2 = new PolynomialSplineFunction[length];
                for (int i4 = 0; i4 < length; i4++) {
                    polynomialSplineFunctionArr2[i4] = splineInterpolator.interpolate(dArr2, dArr3[i4]);
                }
                double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                for (int i5 = 0; i5 < length2; i5++) {
                    UnivariateFunction derivative = polynomialSplineFunctionArr[i5].derivative();
                    for (int i6 = 0; i6 < length; i6++) {
                        dArr5[i6][i5] = derivative.value(dArr[i6]);
                    }
                }
                double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                for (int i7 = 0; i7 < length; i7++) {
                    UnivariateFunction derivative2 = polynomialSplineFunctionArr2[i7].derivative();
                    for (int i8 = 0; i8 < length2; i8++) {
                        dArr6[i7][i8] = derivative2.value(dArr2[i8]);
                    }
                }
                double[][] dArr7 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                for (int i9 = 0; i9 < length; i9++) {
                    int m67499a = m67499a(i9, length);
                    int m67500b = m67500b(i9);
                    for (int i10 = 0; i10 < length2; i10++) {
                        int m67499a2 = m67499a(i10, length2);
                        int m67500b2 = m67500b(i10);
                        double[] dArr8 = dArr7[i9];
                        double[] dArr9 = dArr3[m67499a];
                        double d = dArr9[m67499a2] - dArr9[m67500b2];
                        double[] dArr10 = dArr3[m67500b];
                        dArr8[i10] = ((d - dArr10[m67499a2]) + dArr10[m67500b2]) / ((dArr[m67499a] - dArr[m67500b]) * (dArr2[m67499a2] - dArr2[m67500b2]));
                    }
                }
                return new BicubicSplineInterpolatingFunction(dArr, dArr2, dArr3, dArr5, dArr6, dArr7, this.f107865a);
            }
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        throw new NoDataException();
    }
}
