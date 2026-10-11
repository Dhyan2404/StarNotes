package org.apache.commons.math3.fitting.leastsquares;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class LevenbergMarquardtOptimizer implements LeastSquaresOptimizer {

    /* renamed from: f */
    public static final double f108178f = Precision.EPSILON * 2.0d;

    /* renamed from: a */
    public final double f108179a;

    /* renamed from: b */
    public final double f108180b;

    /* renamed from: c */
    public final double f108181c;

    /* renamed from: d */
    public final double f108182d;

    /* renamed from: e */
    public final double f108183e;

    /* renamed from: org.apache.commons.math3.fitting.leastsquares.LevenbergMarquardtOptimizer$a */
    /* loaded from: classes12.dex */
    public static class C19098a {

        /* renamed from: a */
        public final double[][] f108184a;

        /* renamed from: b */
        public final int[] f108185b;

        /* renamed from: c */
        public final int f108186c;

        /* renamed from: d */
        public final double[] f108187d;

        /* renamed from: e */
        public final double[] f108188e;

        /* renamed from: f */
        public final double[] f108189f;

        public C19098a(double[][] dArr, int[] iArr, int i, double[] dArr2, double[] dArr3, double[] dArr4) {
            this.f108184a = dArr;
            this.f108185b = iArr;
            this.f108186c = i;
            this.f108187d = dArr2;
            this.f108188e = dArr3;
            this.f108189f = dArr4;
        }
    }

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    /* renamed from: a */
    public final void m67587a(double[] dArr, double[] dArr2, double[] dArr3, C19098a c19098a, int i, double[] dArr4, double[] dArr5) {
        int[] iArr;
        double sqrt;
        double d;
        double[] dArr6 = dArr5;
        int[] iArr2 = c19098a.f108185b;
        double[][] dArr7 = c19098a.f108184a;
        double[] dArr8 = c19098a.f108187d;
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr2[i2];
            int i4 = i2 + 1;
            for (int i5 = i4; i5 < i; i5++) {
                dArr7[i5][i3] = dArr7[i2][iArr2[i5]];
            }
            dArr6[i2] = dArr8[i3];
            dArr4[i2] = dArr[i2];
            i2 = i4;
        }
        int i6 = 0;
        while (true) {
            double d2 = 0.0d;
            if (i6 >= i) {
                break;
            }
            double d3 = dArr2[iArr2[i6]];
            if (d3 != 0.0d) {
                Arrays.fill(dArr3, i6 + 1, dArr3.length, 0.0d);
            }
            dArr3[i6] = d3;
            int i7 = i6;
            double d4 = 0.0d;
            while (i7 < i) {
                int i8 = iArr2[i7];
                if (dArr3[i7] != d2) {
                    double d5 = dArr7[i7][i8];
                    if (FastMath.abs(d5) < FastMath.abs(dArr3[i7])) {
                        double d6 = d5 / dArr3[i7];
                        double sqrt2 = 1.0d / FastMath.sqrt((d6 * d6) + 1.0d);
                        d = sqrt2;
                        sqrt = d6 * sqrt2;
                    } else {
                        double d7 = dArr3[i7] / d5;
                        sqrt = 1.0d / FastMath.sqrt((d7 * d7) + 1.0d);
                        d = sqrt * d7;
                    }
                    dArr7[i7][i8] = (d5 * sqrt) + (dArr3[i7] * d);
                    double d8 = dArr4[i7];
                    double d9 = (sqrt * d8) + (d * d4);
                    iArr = iArr2;
                    double d10 = -d;
                    d4 = (d4 * sqrt) + (d8 * d10);
                    dArr4[i7] = d9;
                    for (int i9 = i7 + 1; i9 < i; i9++) {
                        double[] dArr9 = dArr7[i9];
                        double d11 = dArr9[i8];
                        double d12 = dArr3[i9];
                        dArr3[i9] = (d11 * d10) + (d12 * sqrt);
                        dArr9[i8] = (sqrt * d11) + (d * d12);
                    }
                } else {
                    iArr = iArr2;
                }
                i7++;
                iArr2 = iArr;
                d2 = 0.0d;
            }
            int[] iArr3 = iArr2;
            double[] dArr10 = dArr7[i6];
            int i10 = iArr3[i6];
            dArr3[i6] = dArr10[i10];
            dArr10[i10] = dArr5[i6];
            i6++;
            dArr6 = dArr5;
            iArr2 = iArr3;
        }
        double[] dArr11 = dArr6;
        int[] iArr4 = iArr2;
        int i11 = i;
        for (int i12 = 0; i12 < i; i12++) {
            if (dArr3[i12] == 0.0d && i11 == i) {
                i11 = i12;
            }
            if (i11 < i) {
                dArr4[i12] = 0.0d;
            }
        }
        if (i11 > 0) {
            for (int i13 = i11 - 1; i13 >= 0; i13--) {
                int i14 = iArr4[i13];
                double d13 = 0.0d;
                for (int i15 = i13 + 1; i15 < i11; i15++) {
                    d13 += dArr7[i15][i14] * dArr4[i15];
                }
                dArr4[i13] = (dArr4[i13] - d13) / dArr3[i13];
            }
        }
        for (int i16 = 0; i16 < dArr11.length; i16++) {
            dArr11[iArr4[i16]] = dArr4[i16];
        }
    }

    /* renamed from: b */
    public final double m67588b(double[] dArr, double d, double[] dArr2, C19098a c19098a, int i, double[] dArr3, double[] dArr4, double[] dArr5, double[] dArr6, double d2) {
        double d3;
        double d4;
        double d5;
        double[][] dArr7 = c19098a.f108184a;
        int[] iArr = c19098a.f108185b;
        int i2 = c19098a.f108186c;
        double[] dArr8 = c19098a.f108187d;
        int i3 = 0;
        int length = dArr7[0].length;
        for (int i4 = 0; i4 < i2; i4++) {
            dArr6[iArr[i4]] = dArr[i4];
        }
        for (int i5 = i2; i5 < length; i5++) {
            dArr6[iArr[i5]] = 0.0d;
        }
        for (int i6 = i2 - 1; i6 >= 0; i6--) {
            int i7 = iArr[i6];
            double d6 = dArr6[i7] / dArr8[i7];
            for (int i8 = 0; i8 < i6; i8++) {
                int i9 = iArr[i8];
                dArr6[i9] = dArr6[i9] - (dArr7[i8][i7] * d6);
            }
            dArr6[i7] = d6;
        }
        double d7 = 0.0d;
        for (int i10 = 0; i10 < i; i10++) {
            int i11 = iArr[i10];
            double d8 = dArr2[i11] * dArr6[i11];
            dArr3[i11] = d8;
            d7 += d8 * d8;
        }
        double sqrt = FastMath.sqrt(d7);
        double d9 = sqrt - d;
        double d10 = d * 0.1d;
        if (d9 <= d10) {
            return 0.0d;
        }
        if (i2 == i) {
            for (int i12 = 0; i12 < i; i12++) {
                int i13 = iArr[i12];
                dArr3[i13] = dArr3[i13] * (dArr2[i13] / sqrt);
            }
            int i14 = 0;
            double d11 = 0.0d;
            while (i14 < i) {
                int i15 = iArr[i14];
                double d12 = 0.0d;
                while (i3 < i14) {
                    d12 += dArr7[i3][i15] * dArr3[iArr[i3]];
                    i3++;
                }
                double d13 = (dArr3[i15] - d12) / dArr8[i15];
                dArr3[i15] = d13;
                d11 += d13 * d13;
                i14++;
                i3 = 0;
            }
            d3 = d9 / (d * d11);
        } else {
            d3 = 0.0d;
        }
        double d14 = 0.0d;
        for (int i16 = 0; i16 < i; i16++) {
            int i17 = iArr[i16];
            double d15 = 0.0d;
            for (int i18 = 0; i18 <= i16; i18++) {
                d15 += dArr7[i18][i17] * dArr[i18];
            }
            double d16 = d15 / dArr2[i17];
            d14 += d16 * d16;
        }
        double sqrt2 = FastMath.sqrt(d14);
        double d17 = sqrt2 / d;
        if (d17 == 0.0d) {
            d17 = Precision.SAFE_MIN / FastMath.min(d, 0.1d);
        }
        double d18 = d17;
        double d19 = d9;
        double min = FastMath.min(d18, FastMath.max(d2, d3));
        double d20 = 0.0d;
        if (min == 0.0d) {
            min = sqrt2 / sqrt;
        }
        int i19 = 10;
        double d21 = d18;
        double d22 = d3;
        while (i19 >= 0) {
            if (min == d20) {
                min = FastMath.max(Precision.SAFE_MIN, 0.001d * d21);
            }
            double sqrt3 = FastMath.sqrt(min);
            for (int i20 = 0; i20 < i; i20++) {
                int i21 = iArr[i20];
                dArr3[i21] = dArr2[i21] * sqrt3;
            }
            double d23 = min;
            double d24 = d21;
            m67587a(dArr, dArr3, dArr4, c19098a, i, dArr5, dArr6);
            double d25 = 0.0d;
            for (int i22 = 0; i22 < i; i22++) {
                int i23 = iArr[i22];
                double d26 = dArr2[i23] * dArr6[i23];
                dArr5[i23] = d26;
                d25 += d26 * d26;
            }
            double sqrt4 = FastMath.sqrt(d25);
            double d27 = sqrt4 - d;
            if (FastMath.abs(d27) <= d10 || (d22 == 0.0d && d27 <= d19 && d19 < 0.0d)) {
                return d23;
            }
            for (int i24 = 0; i24 < i; i24++) {
                int i25 = iArr[i24];
                dArr3[i25] = (dArr5[i25] * dArr2[i25]) / sqrt4;
            }
            int i26 = 0;
            while (i26 < i) {
                int i27 = iArr[i26];
                double d28 = dArr3[i27] / dArr4[i26];
                dArr3[i27] = d28;
                i26++;
                for (int i28 = i26; i28 < i; i28++) {
                    int i29 = iArr[i28];
                    dArr3[i29] = dArr3[i29] - (dArr7[i28][i27] * d28);
                }
            }
            double d29 = 0.0d;
            for (int i30 = 0; i30 < i; i30++) {
                double d30 = dArr3[iArr[i30]];
                d29 += d30 * d30;
            }
            double d31 = d27 / (d * d29);
            if (d27 > 0.0d) {
                d4 = d23;
                d22 = FastMath.max(d22, d4);
                d5 = d24;
            } else {
                d4 = d23;
                d5 = d24;
                if (d27 < 0.0d) {
                    d5 = FastMath.min(d5, d4);
                }
            }
            double max = FastMath.max(d22, d31 + d4);
            i19--;
            d21 = d5;
            d19 = d27;
            d20 = 0.0d;
            min = max;
        }
        return min;
    }

    /* renamed from: c */
    public final void m67589c(double[] dArr, C19098a c19098a) {
        double[][] dArr2 = c19098a.f108184a;
        int[] iArr = c19098a.f108185b;
        double[] dArr3 = c19098a.f108189f;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i = 0; i < length2; i++) {
            int i2 = iArr[i];
            double d = 0.0d;
            for (int i3 = i; i3 < length; i3++) {
                d += dArr2[i3][i2] * dArr[i3];
            }
            double d2 = d * dArr3[i2];
            for (int i4 = i; i4 < length; i4++) {
                dArr[i4] = dArr[i4] - (dArr2[i4][i2] * d2);
            }
        }
    }

    /* renamed from: d */
    public final C19098a m67590d(RealMatrix realMatrix, int i) throws ConvergenceException {
        double d;
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        int length = data.length;
        int length2 = data[0].length;
        int[] iArr = new int[length2];
        double[] dArr = new double[length2];
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length2];
        int i2 = 0;
        while (true) {
            d = 0.0d;
            if (i2 >= length2) {
                break;
            }
            iArr[i2] = i2;
            for (double[] dArr4 : data) {
                double d2 = dArr4[i2];
                d += d2 * d2;
            }
            dArr2[i2] = FastMath.sqrt(d);
            i2++;
        }
        int i3 = 0;
        while (i3 < length2) {
            int i4 = -1;
            double d3 = Double.NEGATIVE_INFINITY;
            for (int i5 = i3; i5 < length2; i5++) {
                double d4 = d;
                for (int i6 = i3; i6 < length; i6++) {
                    double d5 = data[i6][iArr[i5]];
                    d4 += d5 * d5;
                }
                if (Double.isInfinite(d4) || Double.isNaN(d4)) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN, Integer.valueOf(length), Integer.valueOf(length2));
                }
                if (d4 > d3) {
                    i4 = i5;
                    d3 = d4;
                }
            }
            if (d3 <= this.f108183e) {
                return new C19098a(data, iArr, i3, dArr, dArr2, dArr3);
            }
            int i7 = iArr[i4];
            iArr[i4] = iArr[i3];
            iArr[i3] = i7;
            double d6 = data[i3][i7];
            double sqrt = FastMath.sqrt(d3);
            if (d6 > d) {
                sqrt = -sqrt;
            }
            double d7 = 1.0d / (d3 - (d6 * sqrt));
            dArr3[i7] = d7;
            dArr[i7] = sqrt;
            double[] dArr5 = data[i3];
            dArr5[i7] = dArr5[i7] - sqrt;
            for (int i8 = (length2 - 1) - i3; i8 > 0; i8--) {
                double d8 = 0.0d;
                for (int i9 = i3; i9 < length; i9++) {
                    double[] dArr6 = data[i9];
                    d8 += dArr6[i7] * dArr6[iArr[i3 + i8]];
                }
                double d9 = d8 * d7;
                for (int i10 = i3; i10 < length; i10++) {
                    double[] dArr7 = data[i10];
                    int i11 = iArr[i3 + i8];
                    dArr7[i11] = dArr7[i11] - (dArr7[i7] * d9);
                }
            }
            i3++;
            d = 0.0d;
        }
        return new C19098a(data, iArr, i, dArr, dArr2, dArr3);
    }

    public double getCostRelativeTolerance() {
        return this.f108180b;
    }

    public double getInitialStepBoundFactor() {
        return this.f108179a;
    }

    public double getOrthoTolerance() {
        return this.f108182d;
    }

    public double getParameterRelativeTolerance() {
        return this.f108181c;
    }

    public double getRankingThreshold() {
        return this.f108183e;
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0366 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x028f  */
    @Override // org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer.Optimum optimize(org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem r63) {
        /*
            Method dump skipped, instructions count: 907
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.fitting.leastsquares.LevenbergMarquardtOptimizer.optimize(org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem):org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer$Optimum");
    }

    public LevenbergMarquardtOptimizer withCostRelativeTolerance(double d) {
        return new LevenbergMarquardtOptimizer(this.f108179a, d, this.f108181c, this.f108182d, this.f108183e);
    }

    public LevenbergMarquardtOptimizer withInitialStepBoundFactor(double d) {
        return new LevenbergMarquardtOptimizer(d, this.f108180b, this.f108181c, this.f108182d, this.f108183e);
    }

    public LevenbergMarquardtOptimizer withOrthoTolerance(double d) {
        return new LevenbergMarquardtOptimizer(this.f108179a, this.f108180b, this.f108181c, d, this.f108183e);
    }

    public LevenbergMarquardtOptimizer withParameterRelativeTolerance(double d) {
        return new LevenbergMarquardtOptimizer(this.f108179a, this.f108180b, d, this.f108182d, this.f108183e);
    }

    public LevenbergMarquardtOptimizer withRankingThreshold(double d) {
        return new LevenbergMarquardtOptimizer(this.f108179a, this.f108180b, this.f108181c, this.f108182d, d);
    }

    public LevenbergMarquardtOptimizer(double d, double d2, double d3, double d4, double d5) {
        this.f108179a = d;
        this.f108180b = d2;
        this.f108181c = d3;
        this.f108182d = d4;
        this.f108183e = d5;
    }
}
