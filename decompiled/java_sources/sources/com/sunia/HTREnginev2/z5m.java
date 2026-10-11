package com.sunia.HTREnginev2;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class z5m {

    /* renamed from: g */
    public static final int f91442g = 100;

    /* renamed from: a */
    public final double[][] f91443a;

    /* renamed from: b */
    public final double[][] f91444b;

    /* renamed from: c */
    public RealMatrix f91445c;

    /* renamed from: d */
    public RealMatrix f91446d;

    /* renamed from: e */
    public RealMatrix f91447e;

    /* renamed from: f */
    public final double f91448f = Precision.EPSILON;

    /* renamed from: com.sunia.HTREnginev2.z5m$b */
    /* loaded from: classes12.dex */
    public static class C14746b {

        /* renamed from: a */
        public double f91449a;

        /* renamed from: b */
        public double f91450b;

        /* renamed from: c */
        public double f91451c;

        /* renamed from: d */
        public double f91452d;

        public C14746b() {
        }
    }

    public z5m(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        bzh bzhVar = new bzh(realMatrix);
        this.f91444b = bzhVar.m53360a().getData();
        this.f91443a = bzhVar.m53362c().getData();
        this.f91446d = null;
        this.f91445c = null;
        this.f91447e = null;
        m58638i();
    }

    /* renamed from: a */
    public final void m58630a(int i, int i2, int i3, C14746b c14746b) {
        double[][] dArr = this.f91444b;
        double[] dArr2 = dArr[i2];
        double d = dArr2[i2];
        c14746b.f91449a = d;
        c14746b.f91451c = 0.0d;
        c14746b.f91450b = 0.0d;
        if (i < i2) {
            int i4 = i2 - 1;
            double[] dArr3 = dArr[i4];
            c14746b.f91450b = dArr3[i4];
            c14746b.f91451c = dArr2[i4] * dArr3[i2];
        }
        if (i3 == 10) {
            c14746b.f91452d += d;
            for (int i5 = 0; i5 <= i2; i5++) {
                double[] dArr4 = this.f91444b[i5];
                dArr4[i5] = dArr4[i5] - c14746b.f91449a;
            }
            int i6 = i2 - 1;
            double abs = FastMath.abs(this.f91444b[i2][i6]) + FastMath.abs(this.f91444b[i6][i2 - 2]);
            double d2 = 0.75d * abs;
            c14746b.f91449a = d2;
            c14746b.f91450b = d2;
            c14746b.f91451c = (-0.4375d) * abs * abs;
        }
        if (i3 == 30) {
            double d3 = (c14746b.f91450b - c14746b.f91449a) / 2.0d;
            double d4 = (d3 * d3) + c14746b.f91451c;
            if (d4 > 0.0d) {
                double sqrt = FastMath.sqrt(d4);
                double d5 = c14746b.f91450b;
                double d6 = c14746b.f91449a;
                if (d5 < d6) {
                    sqrt = -sqrt;
                }
                double d7 = d6 - (c14746b.f91451c / (((d5 - d6) / 2.0d) + sqrt));
                for (int i7 = 0; i7 <= i2; i7++) {
                    double[] dArr5 = this.f91444b[i7];
                    dArr5[i7] = dArr5[i7] - d7;
                }
                c14746b.f91452d += d7;
                c14746b.f91451c = 0.964d;
                c14746b.f91450b = 0.964d;
                c14746b.f91449a = 0.964d;
            }
        }
    }

    /* renamed from: b */
    public final int m58631b(int i, double d) {
        while (i > 0) {
            int i2 = i - 1;
            double abs = FastMath.abs(this.f91444b[i2][i2]) + FastMath.abs(this.f91444b[i][i]);
            if (abs == 0.0d) {
                abs = d;
            }
            if (FastMath.abs(this.f91444b[i][i2]) < this.f91448f * abs) {
                break;
            }
            i--;
        }
        return i;
    }

    /* renamed from: c */
    public final double m58632c() {
        double d = 0.0d;
        for (int i = 0; i < this.f91444b.length; i++) {
            int max = FastMath.max(i - 1, 0);
            while (true) {
                double[][] dArr = this.f91444b;
                if (max < dArr.length) {
                    d += FastMath.abs(dArr[i][max]);
                    max++;
                }
            }
        }
        return d;
    }

    /* renamed from: d */
    public RealMatrix m58633d() {
        if (this.f91445c == null) {
            this.f91445c = MatrixUtils.createRealMatrix(this.f91443a);
        }
        return this.f91445c;
    }

    /* renamed from: e */
    public RealMatrix m58634e() {
        if (this.f91447e == null) {
            this.f91447e = m58633d().transpose();
        }
        return this.f91447e;
    }

    /* renamed from: f */
    public RealMatrix m58635f() {
        if (this.f91446d == null) {
            this.f91446d = MatrixUtils.createRealMatrix(this.f91444b);
        }
        return this.f91446d;
    }

    /* renamed from: g */
    public final int m58636g(int i, int i2, C14746b c14746b, double[] dArr) {
        int i3 = i2 - 2;
        while (i3 >= i) {
            double[][] dArr2 = this.f91444b;
            double[] dArr3 = dArr2[i3];
            double d = dArr3[i3];
            double d2 = c14746b.f91449a - d;
            double d3 = c14746b.f91450b - d;
            int i4 = i3;
            double d4 = (d2 * d3) - c14746b.f91451c;
            int i5 = i4 + 1;
            double[] dArr4 = dArr2[i5];
            dArr[0] = (d4 / dArr4[i4]) + dArr3[i5];
            dArr[1] = ((dArr4[i5] - d) - d2) - d3;
            dArr[2] = dArr2[i4 + 2][i5];
            if (i4 == i) {
                return i4;
            }
            int i6 = i4 - 1;
            if (FastMath.abs(dArr3[i6]) * (FastMath.abs(dArr[1]) + FastMath.abs(dArr[2])) < this.f91448f * FastMath.abs(dArr[0]) * (FastMath.abs(this.f91444b[i6][i6]) + FastMath.abs(d) + FastMath.abs(this.f91444b[i5][i5]))) {
                return i4;
            }
            i3 = i4 - 1;
        }
        return i3;
    }

    /* renamed from: h */
    public final void m58637h(int i, int i2, int i3, C14746b c14746b, double[] dArr) {
        int i4;
        double d;
        double d2;
        int i5 = i2;
        int i6 = i3;
        int length = this.f91444b.length;
        boolean z = false;
        double d3 = dArr[0];
        boolean z2 = true;
        double d4 = dArr[1];
        char c = 2;
        double d5 = dArr[2];
        int i7 = i5;
        while (true) {
            int i8 = i6 - 1;
            if (i7 > i8) {
                break;
            }
            boolean z3 = i7 != i8 ? z2 : z;
            if (i7 != i5) {
                double[][] dArr2 = this.f91444b;
                int i9 = i7 - 1;
                double d6 = dArr2[i7][i9];
                double d7 = dArr2[i7 + 1][i9];
                double d8 = z3 ? dArr2[i7 + 2][i9] : 0.0d;
                double abs = FastMath.abs(d6) + FastMath.abs(d7) + FastMath.abs(d8);
                c14746b.f91449a = abs;
                double d9 = d8;
                if (Precision.equals(abs, 0.0d, this.f91448f)) {
                    d3 = d6;
                    d4 = d7;
                    d5 = d9;
                    i4 = length;
                    i7++;
                    i5 = i2;
                    i6 = i3;
                    length = i4;
                    z = false;
                    z2 = true;
                    c = 2;
                } else {
                    double d10 = c14746b.f91449a;
                    double d11 = d6 / d10;
                    d4 = d7 / d10;
                    d5 = d9 / d10;
                    d3 = d11;
                }
            }
            double d12 = d5;
            double sqrt = FastMath.sqrt((d3 * d3) + (d4 * d4) + (d5 * d5));
            if (d3 < 0.0d) {
                sqrt = -sqrt;
            }
            if (sqrt != 0.0d) {
                if (i7 != i5) {
                    d2 = d4;
                    d = d3;
                    this.f91444b[i7][i7 - 1] = (-sqrt) * c14746b.f91449a;
                } else {
                    d = d3;
                    d2 = d4;
                    if (i != i5) {
                        double[] dArr3 = this.f91444b[i7];
                        int i10 = i7 - 1;
                        dArr3[i10] = -dArr3[i10];
                    }
                }
                d3 = d + sqrt;
                c14746b.f91449a = d3 / sqrt;
                c14746b.f91450b = d2 / sqrt;
                double d13 = d12 / sqrt;
                d4 = d2 / d3;
                double d14 = d12 / d3;
                int i11 = i7;
                while (i11 < length) {
                    double[][] dArr4 = this.f91444b;
                    double[] dArr5 = dArr4[i7];
                    double d15 = dArr5[i11];
                    double[] dArr6 = dArr4[i7 + 1];
                    double d16 = d15 + (dArr6[i11] * d4);
                    if (z3) {
                        double[] dArr7 = dArr4[i7 + 2];
                        double d17 = dArr7[i11];
                        d16 += d14 * d17;
                        dArr7[i11] = d17 - (d16 * d13);
                    }
                    dArr5[i11] = dArr5[i11] - (c14746b.f91449a * d16);
                    dArr6[i11] = dArr6[i11] - (c14746b.f91450b * d16);
                    i11++;
                    length = length;
                    d3 = d16;
                }
                i4 = length;
                int i12 = 0;
                while (i12 <= FastMath.min(i6, i7 + 3)) {
                    double d18 = c14746b.f91449a;
                    double[] dArr8 = this.f91444b[i12];
                    int i13 = i7 + 1;
                    double d19 = (d18 * dArr8[i7]) + (c14746b.f91450b * dArr8[i13]);
                    if (z3) {
                        int i14 = i7 + 2;
                        double d20 = dArr8[i14];
                        d19 += d13 * d20;
                        dArr8[i14] = d20 - (d19 * d14);
                    }
                    dArr8[i7] = dArr8[i7] - d19;
                    dArr8[i13] = dArr8[i13] - (d19 * d4);
                    i12++;
                    i6 = i3;
                    d3 = d19;
                }
                int length2 = this.f91444b.length - 1;
                int i15 = 0;
                while (i15 <= length2) {
                    double d21 = c14746b.f91449a;
                    double[] dArr9 = this.f91443a[i15];
                    int i16 = length2;
                    int i17 = i7 + 1;
                    double d22 = (d21 * dArr9[i7]) + (c14746b.f91450b * dArr9[i17]);
                    if (z3) {
                        int i18 = i7 + 2;
                        double d23 = dArr9[i18];
                        d22 += d13 * d23;
                        dArr9[i18] = d23 - (d22 * d14);
                    }
                    dArr9[i7] = dArr9[i7] - d22;
                    dArr9[i17] = dArr9[i17] - (d22 * d4);
                    i15++;
                    d3 = d22;
                    length2 = i16;
                }
                d5 = d14;
            } else {
                i4 = length;
                d5 = d12;
            }
            i7++;
            i5 = i2;
            i6 = i3;
            length = i4;
            z = false;
            z2 = true;
            c = 2;
        }
        int i19 = i2 + 2;
        for (int i20 = i19; i20 <= i3; i20++) {
            double[] dArr10 = this.f91444b[i20];
            dArr10[i20 - 2] = 0.0d;
            if (i20 > i19) {
                dArr10[i20 - 3] = 0.0d;
            }
        }
    }

    /* renamed from: i */
    public final void m58638i() {
        double d;
        int length = this.f91444b.length;
        double m58632c = m58632c();
        C14746b c14746b = new C14746b();
        int i = length - 1;
        int i2 = i;
        int i3 = 0;
        while (i2 >= 0) {
            int m58631b = m58631b(i2, m58632c);
            if (m58631b == i2) {
                double[] dArr = this.f91444b[i2];
                dArr[i2] = dArr[i2] + c14746b.f91452d;
                i2--;
                d = m58632c;
            } else {
                int i4 = i2 - 1;
                if (m58631b == i4) {
                    double[][] dArr2 = this.f91444b;
                    double[] dArr3 = dArr2[i4];
                    double d2 = dArr3[i4];
                    double[] dArr4 = dArr2[i2];
                    double d3 = dArr4[i2];
                    double d4 = (d2 - d3) / 2.0d;
                    double d5 = (d4 * d4) + (dArr4[i4] * dArr3[i2]);
                    d = m58632c;
                    double d6 = c14746b.f91452d;
                    dArr4[i2] = d3 + d6;
                    dArr3[i4] = dArr3[i4] + d6;
                    if (d5 >= 0.0d) {
                        double sqrt = FastMath.sqrt(FastMath.abs(d5));
                        double d7 = d4 >= 0.0d ? d4 + sqrt : d4 - sqrt;
                        double d8 = this.f91444b[i2][i4];
                        double abs = FastMath.abs(d8) + FastMath.abs(d7);
                        double d9 = d8 / abs;
                        double d10 = d7 / abs;
                        double sqrt2 = FastMath.sqrt((d9 * d9) + (d10 * d10));
                        double d11 = d9 / sqrt2;
                        double d12 = d10 / sqrt2;
                        for (int i5 = i4; i5 < length; i5++) {
                            double[][] dArr5 = this.f91444b;
                            double[] dArr6 = dArr5[i4];
                            double d13 = dArr6[i5];
                            double[] dArr7 = dArr5[i2];
                            dArr6[i5] = (d12 * d13) + (dArr7[i5] * d11);
                            dArr7[i5] = (dArr7[i5] * d12) - (d13 * d11);
                        }
                        for (int i6 = 0; i6 <= i2; i6++) {
                            double[] dArr8 = this.f91444b[i6];
                            double d14 = dArr8[i4];
                            dArr8[i4] = (d12 * d14) + (dArr8[i2] * d11);
                            dArr8[i2] = (dArr8[i2] * d12) - (d14 * d11);
                        }
                        for (int i7 = 0; i7 <= i; i7++) {
                            double[] dArr9 = this.f91443a[i7];
                            double d15 = dArr9[i4];
                            dArr9[i4] = (d12 * d15) + (dArr9[i2] * d11);
                            dArr9[i2] = (dArr9[i2] * d12) - (d15 * d11);
                        }
                    }
                    i2 -= 2;
                } else {
                    d = m58632c;
                    m58630a(m58631b, i2, i3, c14746b);
                    int i8 = i3 + 1;
                    if (i8 > 100) {
                        throw new MaxCountExceededException(LocalizedFormats.CONVERGENCE_FAILED, 100, new Object[0]);
                    }
                    double[] dArr10 = new double[3];
                    m58637h(m58631b, m58636g(m58631b, i2, c14746b, dArr10), i2, c14746b, dArr10);
                    i3 = i8;
                    m58632c = d;
                }
            }
            i3 = 0;
            m58632c = d;
        }
    }
}
