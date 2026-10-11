package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

@Deprecated
/* loaded from: classes12.dex */
public class LevenbergMarquardtOptimizer extends AbstractLeastSquaresOptimizer {

    /* renamed from: z */
    public static final double f109252z = Precision.EPSILON * 2.0d;

    /* renamed from: k */
    public int f109253k;

    /* renamed from: l */
    public double[] f109254l;

    /* renamed from: m */
    public double[] f109255m;

    /* renamed from: n */
    public double[] f109256n;

    /* renamed from: o */
    public int[] f109257o;

    /* renamed from: p */
    public int f109258p;

    /* renamed from: q */
    public double f109259q;

    /* renamed from: r */
    public double[] f109260r;

    /* renamed from: s */
    public final double f109261s;

    /* renamed from: t */
    public final double f109262t;

    /* renamed from: u */
    public final double f109263u;

    /* renamed from: v */
    public final double f109264v;

    /* renamed from: w */
    public final double f109265w;

    /* renamed from: x */
    public double[] f109266x;

    /* renamed from: y */
    public double[][] f109267y;

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    /* renamed from: a */
    private void m67981a() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    /* renamed from: c */
    public final void m67982c(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        int i;
        double d;
        double d2;
        int i2 = 0;
        int i3 = 0;
        while (i3 < this.f109253k) {
            int i4 = this.f109257o[i3];
            int i5 = i3 + 1;
            for (int i6 = i5; i6 < this.f109253k; i6++) {
                double[][] dArr5 = this.f109267y;
                dArr5[i6][i4] = dArr5[i3][this.f109257o[i6]];
            }
            this.f109260r[i3] = this.f109254l[i4];
            dArr4[i3] = dArr[i3];
            i3 = i5;
        }
        int i7 = 0;
        while (true) {
            i = this.f109253k;
            double d3 = 0.0d;
            if (i7 >= i) {
                break;
            }
            double d4 = dArr2[this.f109257o[i7]];
            if (d4 != 0.0d) {
                Arrays.fill(dArr3, i7 + 1, dArr3.length, 0.0d);
            }
            dArr3[i7] = d4;
            int i8 = i7;
            double d5 = 0.0d;
            while (i8 < this.f109253k) {
                int i9 = this.f109257o[i8];
                if (dArr3[i8] != d3) {
                    double d6 = this.f109267y[i8][i9];
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
                    this.f109267y[i8][i9] = (d6 * d2) + (dArr3[i8] * d);
                    double d9 = dArr4[i8];
                    double d10 = (d2 * d9) + (d * d5);
                    double d11 = -d;
                    d5 = (d5 * d2) + (d9 * d11);
                    dArr4[i8] = d10;
                    for (int i10 = i8 + 1; i10 < this.f109253k; i10++) {
                        double[] dArr6 = this.f109267y[i10];
                        double d12 = dArr6[i9];
                        double d13 = dArr3[i10];
                        dArr3[i10] = (d12 * d11) + (d13 * d2);
                        dArr6[i9] = (d2 * d12) + (d * d13);
                    }
                }
                i8++;
                d3 = 0.0d;
            }
            double[] dArr7 = this.f109267y[i7];
            int i11 = this.f109257o[i7];
            dArr3[i7] = dArr7[i11];
            dArr7[i11] = this.f109260r[i7];
            i7++;
        }
        int i12 = 0;
        while (true) {
            int i13 = this.f109253k;
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
                int i15 = this.f109257o[i14];
                double d14 = 0.0d;
                for (int i16 = i14 + 1; i16 < i; i16++) {
                    d14 += this.f109267y[i16][i15] * dArr4[i16];
                }
                dArr4[i14] = (dArr4[i14] - d14) / dArr3[i14];
            }
        }
        while (true) {
            double[] dArr8 = this.f109260r;
            if (i2 >= dArr8.length) {
                return;
            }
            dArr8[this.f109257o[i2]] = dArr4[i2];
            i2++;
        }
    }

    /* renamed from: d */
    public final void m67983d(double[] dArr, double d, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5) {
        int i;
        double d2;
        double d3;
        double d4;
        double[] dArr6 = dArr;
        double d5 = d;
        int i2 = 0;
        int length = this.f109267y[0].length;
        int i3 = 0;
        while (true) {
            i = this.f109258p;
            if (i3 >= i) {
                break;
            }
            this.f109260r[this.f109257o[i3]] = dArr6[i3];
            i3++;
        }
        while (i < length) {
            this.f109260r[this.f109257o[i]] = 0.0d;
            i++;
        }
        int i4 = this.f109258p - 1;
        while (i4 >= 0) {
            int i5 = this.f109257o[i4];
            double d6 = this.f109260r[i5] / this.f109254l[i5];
            for (int i6 = i2; i6 < i4; i6++) {
                double[] dArr7 = this.f109260r;
                int i7 = this.f109257o[i6];
                dArr7[i7] = dArr7[i7] - (this.f109267y[i6][i5] * d6);
            }
            this.f109260r[i5] = d6;
            i4--;
            i2 = 0;
        }
        double d7 = 0.0d;
        for (int i8 = 0; i8 < this.f109253k; i8++) {
            int i9 = this.f109257o[i8];
            double d8 = dArr2[i9] * this.f109260r[i9];
            dArr3[i9] = d8;
            d7 += d8 * d8;
        }
        double sqrt = FastMath.sqrt(d7);
        double d9 = sqrt - d5;
        double d10 = d5 * 0.1d;
        if (d9 <= d10) {
            this.f109259q = 0.0d;
            return;
        }
        if (this.f109258p == this.f109253k) {
            for (int i10 = 0; i10 < this.f109253k; i10++) {
                int i11 = this.f109257o[i10];
                dArr3[i11] = dArr3[i11] * (dArr2[i11] / sqrt);
            }
            d2 = d10;
            double d11 = 0.0d;
            for (int i12 = 0; i12 < this.f109253k; i12++) {
                int i13 = this.f109257o[i12];
                double d12 = 0.0d;
                for (int i14 = 0; i14 < i12; i14++) {
                    d12 += this.f109267y[i14][i13] * dArr3[this.f109257o[i14]];
                }
                double d13 = (dArr3[i13] - d12) / this.f109254l[i13];
                dArr3[i13] = d13;
                d11 += d13 * d13;
            }
            d3 = d9 / (d11 * d5);
        } else {
            d2 = d10;
            d3 = 0.0d;
        }
        int i15 = 0;
        double d14 = 0.0d;
        while (i15 < this.f109253k) {
            int i16 = this.f109257o[i15];
            double d15 = d9;
            double d16 = 0.0d;
            for (int i17 = 0; i17 <= i15; i17++) {
                d16 += this.f109267y[i17][i16] * dArr6[i17];
            }
            double d17 = d16 / dArr2[i16];
            d14 += d17 * d17;
            i15++;
            d9 = d15;
        }
        double d18 = d9;
        double sqrt2 = FastMath.sqrt(d14);
        double d19 = sqrt2 / d5;
        double d20 = 0.0d;
        if (d19 == 0.0d) {
            d19 = Precision.SAFE_MIN / FastMath.min(d5, 0.1d);
        }
        double min = FastMath.min(d19, FastMath.max(this.f109259q, d3));
        this.f109259q = min;
        if (min == 0.0d) {
            this.f109259q = sqrt2 / sqrt;
        }
        int i18 = 10;
        double d21 = d18;
        while (i18 >= 0) {
            if (this.f109259q == d20) {
                d4 = d21;
                this.f109259q = FastMath.max(Precision.SAFE_MIN, d19 * 0.001d);
            } else {
                d4 = d21;
            }
            double sqrt3 = FastMath.sqrt(this.f109259q);
            for (int i19 = 0; i19 < this.f109253k; i19++) {
                int i20 = this.f109257o[i19];
                dArr3[i20] = dArr2[i20] * sqrt3;
            }
            m67982c(dArr6, dArr3, dArr4, dArr5);
            double d22 = 0.0d;
            for (int i21 = 0; i21 < this.f109253k; i21++) {
                int i22 = this.f109257o[i21];
                double d23 = dArr2[i22] * this.f109260r[i22];
                dArr5[i22] = d23;
                d22 += d23 * d23;
            }
            double sqrt4 = FastMath.sqrt(d22);
            double d24 = sqrt4 - d5;
            if (FastMath.abs(d24) <= d2) {
                return;
            }
            if (d3 == 0.0d && d24 <= d4 && d4 < 0.0d) {
                return;
            }
            for (int i23 = 0; i23 < this.f109253k; i23++) {
                int i24 = this.f109257o[i23];
                dArr3[i24] = (dArr5[i24] * dArr2[i24]) / sqrt4;
            }
            int i25 = 0;
            while (i25 < this.f109253k) {
                int i26 = this.f109257o[i25];
                double d25 = dArr3[i26] / dArr4[i25];
                dArr3[i26] = d25;
                i25++;
                for (int i27 = i25; i27 < this.f109253k; i27++) {
                    int i28 = this.f109257o[i27];
                    dArr3[i28] = dArr3[i28] - (this.f109267y[i27][i26] * d25);
                }
            }
            double d26 = 0.0d;
            for (int i29 = 0; i29 < this.f109253k; i29++) {
                double d27 = dArr3[this.f109257o[i29]];
                d26 += d27 * d27;
            }
            double d28 = d24 / (d26 * d5);
            d20 = 0.0d;
            if (d24 > 0.0d) {
                d3 = FastMath.max(d3, this.f109259q);
            } else if (d24 < 0.0d) {
                d19 = FastMath.min(d19, this.f109259q);
            }
            this.f109259q = FastMath.max(d3, this.f109259q + d28);
            i18--;
            dArr6 = dArr;
            d5 = d;
            d21 = d24;
        }
    }

    /* renamed from: e */
    public final void m67984e(double[] dArr) {
        double[][] dArr2 = this.f109267y;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i = 0; i < length2; i++) {
            int i2 = this.f109257o[i];
            double d = 0.0d;
            for (int i3 = i; i3 < length; i3++) {
                d += this.f109267y[i3][i2] * dArr[i3];
            }
            double d2 = d * this.f109256n[i2];
            for (int i4 = i; i4 < length; i4++) {
                dArr[i4] = dArr[i4] - (this.f109267y[i4][i2] * d2);
            }
        }
    }

    /* renamed from: f */
    public final void m67985f(RealMatrix realMatrix) throws ConvergenceException {
        double d;
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        this.f109267y = data;
        int length = data.length;
        int i = 0;
        int length2 = data[0].length;
        int i2 = 0;
        while (true) {
            d = 0.0d;
            if (i2 >= length2) {
                break;
            }
            this.f109257o[i2] = i2;
            for (int i3 = 0; i3 < length; i3++) {
                double d2 = this.f109267y[i3][i2];
                d += d2 * d2;
            }
            this.f109255m[i2] = FastMath.sqrt(d);
            i2++;
        }
        while (i < length2) {
            int i4 = -1;
            double d3 = Double.NEGATIVE_INFINITY;
            for (int i5 = i; i5 < length2; i5++) {
                double d4 = d;
                for (int i6 = i; i6 < length; i6++) {
                    double d5 = this.f109267y[i6][this.f109257o[i5]];
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
            if (d3 <= this.f109265w) {
                this.f109258p = i;
                return;
            }
            int[] iArr = this.f109257o;
            int i7 = iArr[i4];
            iArr[i4] = iArr[i];
            iArr[i] = i7;
            double d6 = this.f109267y[i][i7];
            double sqrt = FastMath.sqrt(d3);
            if (d6 > d) {
                sqrt = -sqrt;
            }
            double d7 = 1.0d / (d3 - (d6 * sqrt));
            this.f109256n[i7] = d7;
            this.f109254l[i7] = sqrt;
            double[] dArr = this.f109267y[i];
            dArr[i7] = dArr[i7] - sqrt;
            int i8 = (length2 - 1) - i;
            while (i8 > 0) {
                double d8 = d;
                for (int i9 = i; i9 < length; i9++) {
                    double[] dArr2 = this.f109267y[i9];
                    d8 += dArr2[i7] * dArr2[this.f109257o[i + i8]];
                }
                double d9 = d8 * d7;
                for (int i10 = i; i10 < length; i10++) {
                    double[] dArr3 = this.f109267y[i10];
                    int i11 = this.f109257o[i + i8];
                    dArr3[i11] = dArr3[i11] - (dArr3[i7] * d9);
                }
                i8--;
                d = 0.0d;
            }
            i++;
            d = 0.0d;
        }
        this.f109258p = this.f109253k;
    }

    public LevenbergMarquardtOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(100.0d, convergenceChecker, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x0343, code lost:
    
        setCost(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0346, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x039e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0303  */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.commons.math3.optim.PointVectorValuePair doOptimize() {
        /*
            Method dump skipped, instructions count: 973
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optim.nonlinear.vector.jacobian.LevenbergMarquardtOptimizer.doOptimize():org.apache.commons.math3.optim.PointVectorValuePair");
    }

    public LevenbergMarquardtOptimizer(double d, ConvergenceChecker<PointVectorValuePair> convergenceChecker, double d2, double d3, double d4, double d5) {
        super(convergenceChecker);
        this.f109261s = d;
        this.f109262t = d2;
        this.f109263u = d3;
        this.f109264v = d4;
        this.f109265w = d5;
    }

    public LevenbergMarquardtOptimizer(double d, double d2, double d3) {
        this(100.0d, d, d2, d3, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d, double d2, double d3, double d4, double d5) {
        super(null);
        this.f109261s = d;
        this.f109262t = d2;
        this.f109263u = d3;
        this.f109264v = d4;
        this.f109265w = d5;
    }
}
