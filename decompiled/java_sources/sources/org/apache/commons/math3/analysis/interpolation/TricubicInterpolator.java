package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class TricubicInterpolator implements TrivariateGridInterpolator {

    /* renamed from: org.apache.commons.math3.analysis.interpolation.TricubicInterpolator$a */
    /* loaded from: classes12.dex */
    public class C19058a extends TricubicInterpolatingFunction {

        /* renamed from: f */
        public final /* synthetic */ double[] f107913f;

        /* renamed from: g */
        public final /* synthetic */ double[] f107914g;

        /* renamed from: h */
        public final /* synthetic */ double[] f107915h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19058a(double[] dArr, double[] dArr2, double[] dArr3, double[][][] dArr4, double[][][] dArr5, double[][][] dArr6, double[][][] dArr7, double[][][] dArr8, double[][][] dArr9, double[][][] dArr10, double[][][] dArr11, double[] dArr12, double[] dArr13, double[] dArr14) {
            super(dArr, dArr2, dArr3, dArr4, dArr5, dArr6, dArr7, dArr8, dArr9, dArr10, dArr11);
            this.f107913f = dArr12;
            this.f107914g = dArr13;
            this.f107915h = dArr14;
        }

        @Override // org.apache.commons.math3.analysis.interpolation.TricubicInterpolatingFunction
        public boolean isValidPoint(double d, double d2, double d3) {
            double[] dArr = this.f107913f;
            if (d < dArr[1] || d > dArr[dArr.length - 2]) {
                return false;
            }
            double[] dArr2 = this.f107914g;
            if (d2 < dArr2[1] || d2 > dArr2[dArr2.length - 2]) {
                return false;
            }
            double[] dArr3 = this.f107915h;
            return d3 >= dArr3[1] && d3 <= dArr3[dArr3.length + (-2)];
        }
    }

    @Override // org.apache.commons.math3.analysis.interpolation.TrivariateGridInterpolator
    public TricubicInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[] dArr3, double[][][] dArr4) throws NoDataException, NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr5 = dArr;
        double[] dArr6 = dArr2;
        if (dArr5.length != 0 && dArr6.length != 0 && dArr3.length != 0 && dArr4.length != 0) {
            if (dArr5.length == dArr4.length) {
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                MathArrays.checkOrder(dArr3);
                int length = dArr5.length;
                int length2 = dArr6.length;
                int length3 = dArr3.length;
                double[][][] dArr7 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr8 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr9 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr10 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr11 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr12 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                double[][][] dArr13 = (double[][][]) Array.newInstance((Class<?>) Double.TYPE, length, length2, length3);
                int i = 1;
                while (i < length - 1) {
                    if (dArr6.length == dArr4[i].length) {
                        int i2 = i + 1;
                        int i3 = i - 1;
                        double d = dArr5[i2] - dArr5[i3];
                        int i4 = length;
                        int i5 = 1;
                        while (i5 < length2 - 1) {
                            int i6 = length2;
                            if (dArr3.length == dArr4[i][i5].length) {
                                int i7 = i5 + 1;
                                int i8 = i5 - 1;
                                double d2 = dArr6[i7] - dArr6[i8];
                                double d3 = d * d2;
                                double[][][] dArr14 = dArr12;
                                int i9 = 1;
                                while (i9 < length3 - 1) {
                                    int i10 = i9 + 1;
                                    int i11 = i9 - 1;
                                    double d4 = dArr3[i10] - dArr3[i11];
                                    double[] dArr15 = dArr7[i][i5];
                                    double[][] dArr16 = dArr4[i2];
                                    double[] dArr17 = dArr16[i5];
                                    double d5 = dArr17[i9];
                                    double[][] dArr18 = dArr4[i3];
                                    double[] dArr19 = dArr18[i5];
                                    dArr15[i9] = (d5 - dArr19[i9]) / d;
                                    double[] dArr20 = dArr8[i][i5];
                                    double[][] dArr21 = dArr4[i];
                                    double[] dArr22 = dArr21[i7];
                                    double d6 = dArr22[i9];
                                    double[] dArr23 = dArr21[i8];
                                    dArr20[i9] = (d6 - dArr23[i9]) / d2;
                                    double[] dArr24 = dArr9[i][i5];
                                    double[] dArr25 = dArr21[i5];
                                    dArr24[i9] = (dArr25[i10] - dArr25[i11]) / d4;
                                    double[] dArr26 = dArr10[i][i5];
                                    double[] dArr27 = dArr16[i7];
                                    double d7 = dArr27[i9];
                                    double[] dArr28 = dArr16[i8];
                                    double d8 = d7 - dArr28[i9];
                                    double[] dArr29 = dArr18[i7];
                                    double d9 = d8 - dArr29[i9];
                                    double[] dArr30 = dArr18[i8];
                                    dArr26[i9] = (d9 + dArr30[i9]) / d3;
                                    dArr11[i][i5][i9] = (((dArr17[i10] - dArr17[i11]) - dArr19[i10]) + dArr19[i11]) / (d * d4);
                                    dArr14[i][i5][i9] = (((dArr22[i10] - dArr22[i11]) - dArr23[i10]) + dArr23[i11]) / (d2 * d4);
                                    dArr13[i][i5][i9] = (((((((dArr27[i10] - dArr28[i10]) - dArr29[i10]) + dArr30[i10]) - dArr27[i11]) + dArr28[i11]) + dArr29[i11]) - dArr30[i11]) / (d4 * d3);
                                    i9 = i10;
                                }
                                dArr6 = dArr2;
                                i5 = i7;
                                dArr12 = dArr14;
                                length2 = i6;
                            } else {
                                throw new DimensionMismatchException(dArr3.length, dArr4[i][i5].length);
                            }
                        }
                        dArr5 = dArr;
                        dArr6 = dArr2;
                        i = i2;
                        length = i4;
                    } else {
                        throw new DimensionMismatchException(dArr2.length, dArr4[i].length);
                    }
                }
                return new C19058a(dArr, dArr2, dArr3, dArr4, dArr7, dArr8, dArr9, dArr10, dArr11, dArr12, dArr13, dArr, dArr2, dArr3);
            }
            throw new DimensionMismatchException(dArr.length, dArr4.length);
        }
        throw new NoDataException();
    }
}
