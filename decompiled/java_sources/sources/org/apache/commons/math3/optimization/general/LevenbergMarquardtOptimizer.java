package org.apache.commons.math3.optimization.general;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

@Deprecated
/* loaded from: classes12.dex */
public class LevenbergMarquardtOptimizer extends AbstractLeastSquaresOptimizer {

    /* renamed from: k */
    public int f109505k;

    /* renamed from: l */
    public double[] f109506l;

    /* renamed from: m */
    public double[] f109507m;

    /* renamed from: n */
    public double[] f109508n;

    /* renamed from: o */
    public int[] f109509o;

    /* renamed from: p */
    public int f109510p;

    /* renamed from: q */
    public double f109511q;

    /* renamed from: r */
    public double[] f109512r;

    /* renamed from: s */
    public final double f109513s;

    /* renamed from: t */
    public final double f109514t;

    /* renamed from: u */
    public final double f109515u;

    /* renamed from: v */
    public final double f109516v;

    /* renamed from: w */
    public final double f109517w;

    /* renamed from: x */
    public double[] f109518x;

    /* renamed from: y */
    public double[][] f109519y;

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    /* renamed from: d */
    public final void m68072d(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        int i;
        double d;
        double d2;
        int i2 = 0;
        int i3 = 0;
        while (i3 < this.f109505k) {
            int i4 = this.f109509o[i3];
            int i5 = i3 + 1;
            for (int i6 = i5; i6 < this.f109505k; i6++) {
                double[][] dArr5 = this.f109519y;
                dArr5[i6][i4] = dArr5[i3][this.f109509o[i6]];
            }
            this.f109512r[i3] = this.f109506l[i4];
            dArr4[i3] = dArr[i3];
            i3 = i5;
        }
        int i7 = 0;
        while (true) {
            i = this.f109505k;
            double d3 = 0.0d;
            if (i7 >= i) {
                break;
            }
            double d4 = dArr2[this.f109509o[i7]];
            if (d4 != 0.0d) {
                Arrays.fill(dArr3, i7 + 1, dArr3.length, 0.0d);
            }
            dArr3[i7] = d4;
            int i8 = i7;
            double d5 = 0.0d;
            while (i8 < this.f109505k) {
                int i9 = this.f109509o[i8];
                if (dArr3[i8] != d3) {
                    double d6 = this.f109519y[i8][i9];
                    if (FastMath.abs(d6) < FastMath.abs(dArr3[i8])) {
                        double d7 = d6 / dArr3[i8];
                        d = 1.0d / FastMath.sqrt((d7 * d7) + 1.0d);
                        d2 = d7 * d;
                    } else {
                        double d8 = dArr3[i8] / d6;
                        double sqrt = 1.0d / FastMath.sqrt((d8 * d8) + 1.0d);
                        d = sqrt * d8;
                        d2 = sqrt;
                    }
                    this.f109519y[i8][i9] = (d6 * d2) + (dArr3[i8] * d);
                    double d9 = dArr4[i8];
                    double d10 = (d2 * d9) + (d * d5);
                    double d11 = -d;
                    d5 = (d5 * d2) + (d9 * d11);
                    dArr4[i8] = d10;
                    for (int i10 = i8 + 1; i10 < this.f109505k; i10++) {
                        double[] dArr6 = this.f109519y[i10];
                        double d12 = dArr6[i9];
                        double d13 = dArr3[i10];
                        dArr3[i10] = (d12 * d11) + (d13 * d2);
                        dArr6[i9] = (d2 * d12) + (d * d13);
                    }
                }
                i8++;
                d3 = 0.0d;
            }
            double[] dArr7 = this.f109519y[i7];
            int i11 = this.f109509o[i7];
            dArr3[i7] = dArr7[i11];
            dArr7[i11] = this.f109512r[i7];
            i7++;
        }
        int i12 = 0;
        while (true) {
            int i13 = this.f109505k;
            if (i12 >= i13) {
                break;
            }
            if (dArr3[i12] == 0.0d && i == i13) {
                i = i12;
            }
            if (i < i13) {
                dArr4[i12] = 0.0d;
            }
            i12++;
        }
        if (i > 0) {
            for (int i14 = i - 1; i14 >= 0; i14--) {
                int i15 = this.f109509o[i14];
                double d14 = 0.0d;
                for (int i16 = i14 + 1; i16 < i; i16++) {
                    d14 += this.f109519y[i16][i15] * dArr4[i16];
                }
                dArr4[i14] = (dArr4[i14] - d14) / dArr3[i14];
            }
        }
        while (true) {
            double[] dArr8 = this.f109512r;
            if (i2 >= dArr8.length) {
                return;
            }
            dArr8[this.f109509o[i2]] = dArr4[i2];
            i2++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x033a, code lost:
    
        setCost(r13);
        r61.point = r2.getPoint();
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0343, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02f7  */
    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateVectorOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.optimization.PointVectorValuePair doOptimize() {
        /*
            Method dump skipped, instructions count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.general.LevenbergMarquardtOptimizer.doOptimize():org.apache.commons.math3.optimization.PointVectorValuePair");
    }

    /* renamed from: e */
    public final void m68073e(double[] dArr, double d, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5) {
        int i;
        double d2;
        double d3;
        int i2;
        double min;
        double[] dArr6 = dArr;
        double d4 = d;
        int i3 = 0;
        int length = this.f109519y[0].length;
        int i4 = 0;
        while (true) {
            i = this.f109510p;
            if (i4 >= i) {
                break;
            }
            this.f109512r[this.f109509o[i4]] = dArr6[i4];
            i4++;
        }
        while (i < length) {
            this.f109512r[this.f109509o[i]] = 0.0d;
            i++;
        }
        int i5 = this.f109510p - 1;
        while (i5 >= 0) {
            int i6 = this.f109509o[i5];
            double d5 = this.f109512r[i6] / this.f109506l[i6];
            for (int i7 = i3; i7 < i5; i7++) {
                double[] dArr7 = this.f109512r;
                int i8 = this.f109509o[i7];
                dArr7[i8] = dArr7[i8] - (this.f109519y[i7][i6] * d5);
            }
            this.f109512r[i6] = d5;
            i5--;
            i3 = 0;
        }
        double d6 = 0.0d;
        for (int i9 = 0; i9 < this.f109505k; i9++) {
            int i10 = this.f109509o[i9];
            double d7 = dArr2[i10] * this.f109512r[i10];
            dArr3[i10] = d7;
            d6 += d7 * d7;
        }
        double sqrt = FastMath.sqrt(d6);
        double d8 = sqrt - d4;
        double d9 = d4 * 0.1d;
        if (d8 <= d9) {
            this.f109511q = 0.0d;
            return;
        }
        if (this.f109510p == this.f109505k) {
            for (int i11 = 0; i11 < this.f109505k; i11++) {
                int i12 = this.f109509o[i11];
                dArr3[i12] = dArr3[i12] * (dArr2[i12] / sqrt);
            }
            d2 = d9;
            double d10 = 0.0d;
            for (int i13 = 0; i13 < this.f109505k; i13++) {
                int i14 = this.f109509o[i13];
                double d11 = 0.0d;
                for (int i15 = 0; i15 < i13; i15++) {
                    d11 += this.f109519y[i15][i14] * dArr3[this.f109509o[i15]];
                }
                double d12 = (dArr3[i14] - d11) / this.f109506l[i14];
                dArr3[i14] = d12;
                d10 += d12 * d12;
            }
            d3 = d8 / (d10 * d4);
        } else {
            d2 = d9;
            d3 = 0.0d;
        }
        int i16 = 0;
        double d13 = 0.0d;
        while (i16 < this.f109505k) {
            int i17 = this.f109509o[i16];
            double d14 = d8;
            double d15 = 0.0d;
            for (int i18 = 0; i18 <= i16; i18++) {
                d15 += this.f109519y[i18][i17] * dArr6[i18];
            }
            double d16 = d15 / dArr2[i17];
            d13 += d16 * d16;
            i16++;
            d8 = d14;
        }
        double d17 = d8;
        double sqrt2 = FastMath.sqrt(d13);
        double d18 = sqrt2 / d4;
        double d19 = 0.0d;
        double min2 = d18 == 0.0d ? 2.2251E-308d / FastMath.min(d4, 0.1d) : d18;
        double min3 = FastMath.min(min2, FastMath.max(this.f109511q, d3));
        this.f109511q = min3;
        if (min3 == 0.0d) {
            this.f109511q = sqrt2 / sqrt;
        }
        int i19 = 10;
        double d20 = d17;
        while (i19 >= 0) {
            if (this.f109511q == d19) {
                i2 = i19;
                this.f109511q = FastMath.max(2.2251E-308d, 0.001d * min2);
            } else {
                i2 = i19;
            }
            double sqrt3 = FastMath.sqrt(this.f109511q);
            for (int i20 = 0; i20 < this.f109505k; i20++) {
                int i21 = this.f109509o[i20];
                dArr3[i21] = dArr2[i21] * sqrt3;
            }
            m68072d(dArr6, dArr3, dArr4, dArr5);
            int i22 = i2;
            int i23 = 0;
            double d21 = 0.0d;
            while (i23 < this.f109505k) {
                int i24 = this.f109509o[i23];
                double d22 = dArr2[i24] * this.f109512r[i24];
                dArr5[i24] = d22;
                d21 += d22 * d22;
                i23++;
                min2 = min2;
            }
            double d23 = min2;
            double sqrt4 = FastMath.sqrt(d21);
            double d24 = sqrt4 - d4;
            if (FastMath.abs(d24) <= d2) {
                return;
            }
            if (d3 == 0.0d && d24 <= d20 && d20 < 0.0d) {
                return;
            }
            for (int i25 = 0; i25 < this.f109505k; i25++) {
                int i26 = this.f109509o[i25];
                dArr3[i26] = (dArr5[i26] * dArr2[i26]) / sqrt4;
            }
            int i27 = 0;
            while (i27 < this.f109505k) {
                int i28 = this.f109509o[i27];
                double d25 = dArr3[i28] / dArr4[i27];
                dArr3[i28] = d25;
                i27++;
                int i29 = i27;
                while (i29 < this.f109505k) {
                    int i30 = this.f109509o[i29];
                    dArr3[i30] = dArr3[i30] - (this.f109519y[i29][i28] * d25);
                    i29++;
                    i27 = i27;
                }
            }
            double d26 = 0.0d;
            for (int i31 = 0; i31 < this.f109505k; i31++) {
                double d27 = dArr3[this.f109509o[i31]];
                d26 += d27 * d27;
            }
            double d28 = d24 / (d26 * d4);
            if (d24 > 0.0d) {
                d3 = FastMath.max(d3, this.f109511q);
            } else if (d24 < 0.0d) {
                min = FastMath.min(d23, this.f109511q);
                this.f109511q = FastMath.max(d3, this.f109511q + d28);
                min2 = min;
                i19 = i22 - 1;
                d20 = d24;
                d19 = 0.0d;
                dArr6 = dArr;
                d4 = d;
            }
            min = d23;
            this.f109511q = FastMath.max(d3, this.f109511q + d28);
            min2 = min;
            i19 = i22 - 1;
            d20 = d24;
            d19 = 0.0d;
            dArr6 = dArr;
            d4 = d;
        }
    }

    /* renamed from: f */
    public final void m68074f(double[] dArr) {
        double[][] dArr2 = this.f109519y;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i = 0; i < length2; i++) {
            int i2 = this.f109509o[i];
            double d = 0.0d;
            for (int i3 = i; i3 < length; i3++) {
                d += this.f109519y[i3][i2] * dArr[i3];
            }
            double d2 = d * this.f109508n[i2];
            for (int i4 = i; i4 < length; i4++) {
                dArr[i4] = dArr[i4] - (this.f109519y[i4][i2] * d2);
            }
        }
    }

    /* renamed from: g */
    public final void m68075g(RealMatrix realMatrix) throws ConvergenceException {
        double d;
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        this.f109519y = data;
        int length = data.length;
        int i = 0;
        int length2 = data[0].length;
        int i2 = 0;
        while (true) {
            d = 0.0d;
            if (i2 >= length2) {
                break;
            }
            this.f109509o[i2] = i2;
            for (int i3 = 0; i3 < length; i3++) {
                double d2 = this.f109519y[i3][i2];
                d += d2 * d2;
            }
            this.f109507m[i2] = FastMath.sqrt(d);
            i2++;
        }
        while (i < length2) {
            int i4 = -1;
            double d3 = Double.NEGATIVE_INFINITY;
            for (int i5 = i; i5 < length2; i5++) {
                double d4 = d;
                for (int i6 = i; i6 < length; i6++) {
                    double d5 = this.f109519y[i6][this.f109509o[i5]];
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
            if (d3 <= this.f109517w) {
                this.f109510p = i;
                return;
            }
            int[] iArr = this.f109509o;
            int i7 = iArr[i4];
            iArr[i4] = iArr[i];
            iArr[i] = i7;
            double d6 = this.f109519y[i][i7];
            double sqrt = FastMath.sqrt(d3);
            if (d6 > d) {
                sqrt = -sqrt;
            }
            double d7 = 1.0d / (d3 - (d6 * sqrt));
            this.f109508n[i7] = d7;
            this.f109506l[i7] = sqrt;
            double[] dArr = this.f109519y[i];
            dArr[i7] = dArr[i7] - sqrt;
            int i8 = (length2 - 1) - i;
            while (i8 > 0) {
                double d8 = d;
                for (int i9 = i; i9 < length; i9++) {
                    double[] dArr2 = this.f109519y[i9];
                    d8 += dArr2[i7] * dArr2[this.f109509o[i + i8]];
                }
                double d9 = d8 * d7;
                for (int i10 = i; i10 < length; i10++) {
                    double[] dArr3 = this.f109519y[i10];
                    int i11 = this.f109509o[i + i8];
                    dArr3[i11] = dArr3[i11] - (dArr3[i7] * d9);
                }
                i8--;
                d = 0.0d;
            }
            i++;
            d = 0.0d;
        }
        this.f109510p = this.f109505k;
    }

    public LevenbergMarquardtOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(100.0d, convergenceChecker, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d, ConvergenceChecker<PointVectorValuePair> convergenceChecker, double d2, double d3, double d4, double d5) {
        super(convergenceChecker);
        this.f109513s = d;
        this.f109514t = d2;
        this.f109515u = d3;
        this.f109516v = d4;
        this.f109517w = d5;
    }

    public LevenbergMarquardtOptimizer(double d, double d2, double d3) {
        this(100.0d, d, d2, d3, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d, double d2, double d3, double d4, double d5) {
        super(null);
        this.f109513s = d;
        this.f109514t = d2;
        this.f109515u = d3;
        this.f109516v = d4;
        this.f109517w = d5;
    }
}
