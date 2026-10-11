package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class BicubicInterpolator implements BivariateGridInterpolator {

    /* renamed from: org.apache.commons.math3.analysis.interpolation.BicubicInterpolator$a */
    /* loaded from: classes12.dex */
    public class C19053a extends BicubicInterpolatingFunction {

        /* renamed from: f */
        public final /* synthetic */ double[] f107856f;

        /* renamed from: g */
        public final /* synthetic */ double[] f107857g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19053a(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6, double[] dArr7, double[] dArr8) {
            super(dArr, dArr2, dArr3, dArr4, dArr5, dArr6);
            this.f107856f = dArr7;
            this.f107857g = dArr8;
        }

        @Override // org.apache.commons.math3.analysis.interpolation.BicubicInterpolatingFunction
        public boolean isValidPoint(double d, double d2) {
            double[] dArr = this.f107856f;
            if (d < dArr[1] || d > dArr[dArr.length - 2]) {
                return false;
            }
            double[] dArr2 = this.f107857g;
            return d2 >= dArr2[1] && d2 <= dArr2[dArr2.length + (-2)];
        }
    }

    @Override // org.apache.commons.math3.analysis.interpolation.BivariateGridInterpolator
    public BicubicInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[][] dArr3) throws NoDataException, DimensionMismatchException, NonMonotonicSequenceException, NumberIsTooSmallException {
        if (dArr.length != 0 && dArr2.length != 0 && dArr3.length != 0) {
            if (dArr.length == dArr3.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                int length = dArr.length;
                int length2 = dArr2.length;
                double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
                int i = 1;
                while (i < length - 1) {
                    int i2 = i + 1;
                    int i3 = i - 1;
                    double d = dArr[i2] - dArr[i3];
                    int i4 = 1;
                    while (i4 < length2 - 1) {
                        int i5 = i4 + 1;
                        int i6 = i4 - 1;
                        double d2 = dArr2[i5] - dArr2[i6];
                        double[] dArr7 = dArr4[i];
                        double[] dArr8 = dArr3[i2];
                        double d3 = dArr8[i4];
                        double[] dArr9 = dArr3[i3];
                        dArr7[i4] = (d3 - dArr9[i4]) / d;
                        double[] dArr10 = dArr5[i];
                        double[] dArr11 = dArr3[i];
                        dArr10[i4] = (dArr11[i5] - dArr11[i6]) / d2;
                        dArr6[i][i4] = (((dArr8[i5] - dArr8[i6]) - dArr9[i5]) + dArr9[i6]) / (d2 * d);
                        i4 = i5;
                    }
                    i = i2;
                }
                return new C19053a(dArr, dArr2, dArr3, dArr4, dArr5, dArr6, dArr, dArr2);
            }
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        throw new NoDataException();
    }
}
