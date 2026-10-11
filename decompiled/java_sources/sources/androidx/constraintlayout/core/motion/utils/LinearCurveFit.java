package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes3.dex */
public class LinearCurveFit extends CurveFit {

    /* renamed from: f */
    public static final String f2978f = "LinearCurveFit";

    /* renamed from: a */
    public double[] f2979a;

    /* renamed from: b */
    public double[][] f2980b;

    /* renamed from: c */
    public double f2981c;

    /* renamed from: d */
    public boolean f2982d = true;

    /* renamed from: e */
    public double[] f2983e;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.f2981c = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f2983e = new double[length2];
        this.f2979a = dArr;
        this.f2980b = dArr2;
        if (length2 <= 2) {
            return;
        }
        int i = 0;
        double d = 0.0d;
        while (true) {
            double d2 = d;
            if (i >= dArr.length) {
                this.f2981c = 0.0d;
                return;
            }
            double d3 = dArr2[i][0];
            if (i > 0) {
                Math.hypot(d3 - d, d3 - d2);
            }
            i++;
            d = d3;
        }
    }

    /* renamed from: a */
    public final double m1510a(double d) {
        if (Double.isNaN(this.f2981c)) {
            return 0.0d;
        }
        double[] dArr = this.f2979a;
        int length = dArr.length;
        if (d <= dArr[0]) {
            return 0.0d;
        }
        int i = length - 1;
        if (d >= dArr[i]) {
            return this.f2981c;
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        int i2 = 0;
        while (i2 < i) {
            double[] dArr2 = this.f2980b[i2];
            double d5 = dArr2[0];
            double d6 = dArr2[1];
            if (i2 > 0) {
                d2 += Math.hypot(d5 - d3, d6 - d4);
            }
            double[] dArr3 = this.f2979a;
            double d7 = dArr3[i2];
            if (d == d7) {
                return d2;
            }
            int i3 = i2 + 1;
            double d8 = dArr3[i3];
            if (d < d8) {
                double d9 = (d - d7) / (d8 - d7);
                double[][] dArr4 = this.f2980b;
                double[] dArr5 = dArr4[i2];
                double d10 = dArr5[0];
                double[] dArr6 = dArr4[i3];
                double d11 = 1.0d - d9;
                return d2 + Math.hypot(d6 - ((dArr5[1] * d11) + (dArr6[1] * d9)), d5 - ((d10 * d11) + (dArr6[0] * d9)));
            }
            i2 = i3;
            d3 = d5;
            d4 = d6;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.f2979a;
        int length = dArr2.length;
        int i = 0;
        int length2 = this.f2980b[0].length;
        if (this.f2982d) {
            double d2 = dArr2[0];
            if (d <= d2) {
                getSlope(d2, this.f2983e);
                for (int i2 = 0; i2 < length2; i2++) {
                    dArr[i2] = this.f2980b[0][i2] + ((d - this.f2979a[0]) * this.f2983e[i2]);
                }
                return;
            }
            int i3 = length - 1;
            double d3 = dArr2[i3];
            if (d >= d3) {
                getSlope(d3, this.f2983e);
                while (i < length2) {
                    dArr[i] = this.f2980b[i3][i] + ((d - this.f2979a[i3]) * this.f2983e[i]);
                    i++;
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i4 = 0; i4 < length2; i4++) {
                    dArr[i4] = this.f2980b[0][i4];
                }
                return;
            }
            int i5 = length - 1;
            if (d >= dArr2[i5]) {
                while (i < length2) {
                    dArr[i] = this.f2980b[i5][i];
                    i++;
                }
                return;
            }
        }
        int i6 = 0;
        while (i6 < length - 1) {
            if (d == this.f2979a[i6]) {
                for (int i7 = 0; i7 < length2; i7++) {
                    dArr[i7] = this.f2980b[i6][i7];
                }
            }
            double[] dArr3 = this.f2979a;
            int i8 = i6 + 1;
            double d4 = dArr3[i8];
            if (d < d4) {
                double d5 = dArr3[i6];
                double d6 = (d - d5) / (d4 - d5);
                while (i < length2) {
                    double[][] dArr4 = this.f2980b;
                    dArr[i] = (dArr4[i6][i] * (1.0d - d6)) + (dArr4[i8][i] * d6);
                    i++;
                }
                return;
            }
            i6 = i8;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0017, code lost:
    
        if (r11 >= r4) goto L4;
     */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getSlope(double r11, double[] r13) {
        /*
            r10 = this;
            double[] r0 = r10.f2979a
            int r1 = r0.length
            double[][] r2 = r10.f2980b
            r3 = 0
            r2 = r2[r3]
            int r2 = r2.length
            r4 = r0[r3]
            int r6 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r6 > 0) goto L11
        Lf:
            r11 = r4
            goto L1a
        L11:
            int r4 = r1 + (-1)
            r4 = r0[r4]
            int r0 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r0 < 0) goto L1a
            goto Lf
        L1a:
            r0 = r3
        L1b:
            int r4 = r1 + (-1)
            if (r0 >= r4) goto L41
            double[] r4 = r10.f2979a
            int r5 = r0 + 1
            r6 = r4[r5]
            int r8 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
            if (r8 > 0) goto L3f
            r11 = r4[r0]
            double r6 = r6 - r11
        L2c:
            if (r3 >= r2) goto L41
            double[][] r11 = r10.f2980b
            r12 = r11[r0]
            r8 = r12[r3]
            r11 = r11[r5]
            r11 = r11[r3]
            double r11 = r11 - r8
            double r11 = r11 / r6
            r13[r3] = r11
            int r3 = r3 + 1
            goto L2c
        L3f:
            r0 = r5
            goto L1b
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.LinearCurveFit.getSlope(double, double[]):void");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f2979a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0012, code lost:
    
        if (r8 >= r3) goto L4;
     */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double getSlope(double r8, int r10) {
        /*
            r7 = this;
            double[] r0 = r7.f2979a
            int r1 = r0.length
            r2 = 0
            r3 = r0[r2]
            int r5 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r5 >= 0) goto Lc
        La:
            r8 = r3
            goto L15
        Lc:
            int r3 = r1 + (-1)
            r3 = r0[r3]
            int r0 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r0 < 0) goto L15
            goto La
        L15:
            int r0 = r1 + (-1)
            if (r2 >= r0) goto L35
            double[] r0 = r7.f2979a
            int r3 = r2 + 1
            r4 = r0[r3]
            int r6 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r6 > 0) goto L33
            r8 = r0[r2]
            double r4 = r4 - r8
            double[][] r7 = r7.f2980b
            r8 = r7[r2]
            r8 = r8[r10]
            r7 = r7[r3]
            r0 = r7[r10]
            double r0 = r0 - r8
            double r0 = r0 / r4
            return r0
        L33:
            r2 = r3
            goto L15
        L35:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.LinearCurveFit.getSlope(double, int):double");
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.f2979a;
        int length = dArr.length;
        int i = 0;
        int length2 = this.f2980b[0].length;
        if (this.f2982d) {
            double d2 = dArr[0];
            if (d <= d2) {
                getSlope(d2, this.f2983e);
                for (int i2 = 0; i2 < length2; i2++) {
                    fArr[i2] = (float) (this.f2980b[0][i2] + ((d - this.f2979a[0]) * this.f2983e[i2]));
                }
                return;
            }
            int i3 = length - 1;
            double d3 = dArr[i3];
            if (d >= d3) {
                getSlope(d3, this.f2983e);
                while (i < length2) {
                    fArr[i] = (float) (this.f2980b[i3][i] + ((d - this.f2979a[i3]) * this.f2983e[i]));
                    i++;
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i4 = 0; i4 < length2; i4++) {
                    fArr[i4] = (float) this.f2980b[0][i4];
                }
                return;
            }
            int i5 = length - 1;
            if (d >= dArr[i5]) {
                while (i < length2) {
                    fArr[i] = (float) this.f2980b[i5][i];
                    i++;
                }
                return;
            }
        }
        int i6 = 0;
        while (i6 < length - 1) {
            if (d == this.f2979a[i6]) {
                for (int i7 = 0; i7 < length2; i7++) {
                    fArr[i7] = (float) this.f2980b[i6][i7];
                }
            }
            double[] dArr2 = this.f2979a;
            int i8 = i6 + 1;
            double d4 = dArr2[i8];
            if (d < d4) {
                double d5 = dArr2[i6];
                double d6 = (d - d5) / (d4 - d5);
                while (i < length2) {
                    double[][] dArr3 = this.f2980b;
                    fArr[i] = (float) ((dArr3[i6][i] * (1.0d - d6)) + (dArr3[i8][i] * d6));
                    i++;
                }
                return;
            }
            i6 = i8;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i) {
        double[] dArr = this.f2979a;
        int length = dArr.length;
        int i2 = 0;
        if (this.f2982d) {
            double d2 = dArr[0];
            if (d <= d2) {
                return this.f2980b[0][i] + ((d - d2) * getSlope(d2, i));
            }
            int i3 = length - 1;
            double d3 = dArr[i3];
            if (d >= d3) {
                return this.f2980b[i3][i] + ((d - d3) * getSlope(d3, i));
            }
        } else {
            if (d <= dArr[0]) {
                return this.f2980b[0][i];
            }
            int i4 = length - 1;
            if (d >= dArr[i4]) {
                return this.f2980b[i4][i];
            }
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f2979a;
            double d4 = dArr2[i2];
            if (d == d4) {
                return this.f2980b[i2][i];
            }
            int i5 = i2 + 1;
            double d5 = dArr2[i5];
            if (d < d5) {
                double d6 = (d - d4) / (d5 - d4);
                double[][] dArr3 = this.f2980b;
                return (dArr3[i2][i] * (1.0d - d6)) + (dArr3[i5][i] * d6);
            }
            i2 = i5;
        }
        return 0.0d;
    }
}
