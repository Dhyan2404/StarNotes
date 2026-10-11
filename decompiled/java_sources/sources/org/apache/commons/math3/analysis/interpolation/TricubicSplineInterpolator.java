package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
/* loaded from: classes12.dex */
public class TricubicSplineInterpolator implements TrivariateGridInterpolator {
    /* renamed from: a */
    public final int m67522a(int i, int i2) {
        int i3 = i + 1;
        return i3 < i2 ? i3 : i3 - 1;
    }

    /* renamed from: b */
    public final int m67523b(int i) {
        int i2 = i - 1;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    @Override // org.apache.commons.math3.analysis.interpolation.TrivariateGridInterpolator
    public TricubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[] dArr3, double[][][] dArr4) throws NoDataException, NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr5 = dArr2;
        if (dArr.length != 0 && dArr5.length != 0 && dArr3.length != 0 && dArr4.length != 0) {
            if (dArr.length == dArr4.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                MathArrays.checkOrder(dArr3);
                int length = dArr.length;
                int length2 = dArr5.length;
                int length3 = dArr3.length;
                double[][][] dArr6 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length3, length, length2);
                double[][][] dArr7 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length2, length3, length);
                for (int i = 0; i < length; i++) {
                    if (dArr4[i].length != length2) {
                        throw new DimensionMismatchException(dArr4[i].length, length2);
                    }
                    for (int i2 = 0; i2 < length2; i2++) {
                        if (dArr4[i][i2].length != length3) {
                            throw new DimensionMismatchException(dArr4[i][i2].length, length3);
                        }
                        for (int i3 = 0; i3 < length3; i3++) {
                            double d = dArr4[i][i2][i3];
                            dArr6[i3][i][i2] = d;
                            dArr7[i2][i3][i] = d;
                        }
                    }
                }
                BicubicSplineInterpolator bicubicSplineInterpolator = new BicubicSplineInterpolator(true);
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr = new BicubicSplineInterpolatingFunction[length];
                for (int i4 = 0; i4 < length; i4++) {
                    bicubicSplineInterpolatingFunctionArr[i4] = bicubicSplineInterpolator.interpolate(dArr5, dArr3, dArr4[i4]);
                }
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr2 = new BicubicSplineInterpolatingFunction[length2];
                for (int i5 = 0; i5 < length2; i5++) {
                    bicubicSplineInterpolatingFunctionArr2[i5] = bicubicSplineInterpolator.interpolate(dArr3, dArr, dArr7[i5]);
                }
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr3 = new BicubicSplineInterpolatingFunction[length3];
                for (int i6 = 0; i6 < length3; i6++) {
                    bicubicSplineInterpolatingFunctionArr3[i6] = bicubicSplineInterpolator.interpolate(dArr, dArr5, dArr6[i6]);
                }
                double[][][] dArr8 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr9 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr10 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                int i7 = 0;
                while (i7 < length3) {
                    BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction = bicubicSplineInterpolatingFunctionArr3[i7];
                    BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr4 = bicubicSplineInterpolatingFunctionArr3;
                    for (int i8 = 0; i8 < length; i8++) {
                        double d2 = dArr[i8];
                        int i9 = 0;
                        while (i9 < length2) {
                            BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr5 = bicubicSplineInterpolatingFunctionArr;
                            double d3 = dArr5[i9];
                            dArr8[i8][i9][i7] = bicubicSplineInterpolatingFunction.partialDerivativeX(d2, d3);
                            dArr9[i8][i9][i7] = bicubicSplineInterpolatingFunction.partialDerivativeY(d2, d3);
                            dArr10[i8][i9][i7] = bicubicSplineInterpolatingFunction.partialDerivativeXY(d2, d3);
                            i9++;
                            bicubicSplineInterpolatingFunctionArr = bicubicSplineInterpolatingFunctionArr5;
                            bicubicSplineInterpolatingFunctionArr2 = bicubicSplineInterpolatingFunctionArr2;
                        }
                    }
                    i7++;
                    bicubicSplineInterpolatingFunctionArr3 = bicubicSplineInterpolatingFunctionArr4;
                }
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr6 = bicubicSplineInterpolatingFunctionArr;
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr7 = bicubicSplineInterpolatingFunctionArr2;
                double[][][] dArr11 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr12 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                int i10 = 0;
                while (i10 < length) {
                    BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction2 = bicubicSplineInterpolatingFunctionArr6[i10];
                    int i11 = 0;
                    while (i11 < length2) {
                        double d4 = dArr5[i11];
                        for (int i12 = 0; i12 < length3; i12++) {
                            double d5 = dArr3[i12];
                            dArr11[i10][i11][i12] = bicubicSplineInterpolatingFunction2.partialDerivativeY(d4, d5);
                            dArr12[i10][i11][i12] = bicubicSplineInterpolatingFunction2.partialDerivativeXY(d4, d5);
                        }
                        i11++;
                        dArr5 = dArr2;
                    }
                    i10++;
                    dArr5 = dArr2;
                }
                double[][][] dArr13 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                for (int i13 = 0; i13 < length2; i13++) {
                    BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction3 = bicubicSplineInterpolatingFunctionArr7[i13];
                    for (int i14 = 0; i14 < length3; i14++) {
                        double d6 = dArr3[i14];
                        int i15 = 0;
                        while (i15 < length) {
                            double[][][] dArr14 = dArr11;
                            dArr13[i15][i13][i14] = bicubicSplineInterpolatingFunction3.partialDerivativeXY(d6, dArr[i15]);
                            i15++;
                            dArr11 = dArr14;
                            dArr12 = dArr12;
                        }
                    }
                }
                double[][][] dArr15 = dArr11;
                double[][][] dArr16 = dArr12;
                double[][][] dArr17 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                int i16 = 0;
                while (i16 < length) {
                    int m67522a = m67522a(i16, length);
                    int m67523b = m67523b(i16);
                    int i17 = 0;
                    while (i17 < length2) {
                        int m67522a2 = m67522a(i17, length2);
                        int m67523b2 = m67523b(i17);
                        int i18 = length;
                        int i19 = 0;
                        while (i19 < length3) {
                            int m67522a3 = m67522a(i19, length3);
                            int m67523b3 = m67523b(i19);
                            double[] dArr18 = dArr17[i16][i17];
                            double[][] dArr19 = dArr4[m67522a];
                            double[] dArr20 = dArr19[m67522a2];
                            double d7 = dArr20[m67522a3];
                            double[] dArr21 = dArr19[m67523b2];
                            double d8 = d7 - dArr21[m67522a3];
                            double[][] dArr22 = dArr4[m67523b];
                            double[] dArr23 = dArr22[m67522a2];
                            double d9 = d8 - dArr23[m67522a3];
                            double[] dArr24 = dArr22[m67523b2];
                            dArr18[i19] = (((((d9 + dArr24[m67522a3]) - dArr20[m67523b3]) + dArr21[m67523b3]) + dArr23[m67523b3]) - dArr24[m67523b3]) / (((dArr[m67522a] - dArr[m67523b]) * (dArr2[m67522a2] - dArr2[m67523b2])) * (dArr3[m67522a3] - dArr3[m67523b3]));
                            i19++;
                            length2 = length2;
                        }
                        i17++;
                        length = i18;
                        length2 = length2;
                    }
                    i16++;
                    length2 = length2;
                }
                return new TricubicSplineInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr8, dArr9, dArr15, dArr10, dArr13, dArr16, dArr17);
            }
            throw new DimensionMismatchException(dArr.length, dArr4.length);
        }
        throw new NoDataException();
    }
}
