package com.sunia.HTREnginev2;

import java.lang.reflect.Array;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.util.FastMath;

/* renamed from: com.sunia.HTREnginev2.jq */
/* loaded from: classes12.dex */
public class C13946jq {

    /* renamed from: a */
    public final double[][] f74582a;

    /* renamed from: b */
    public final double[] f74583b;

    /* renamed from: c */
    public final double[] f74584c;

    /* renamed from: d */
    public RealMatrix f74585d;

    /* renamed from: e */
    public RealMatrix f74586e;

    /* renamed from: f */
    public RealMatrix f74587f;

    public C13946jq(RealMatrix realMatrix) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int min = FastMath.min(rowDimension, columnDimension);
        this.f74582a = realMatrix.getData();
        this.f74583b = new double[min];
        this.f74584c = new double[min - 1];
        this.f74585d = null;
        this.f74586e = null;
        this.f74587f = null;
        if (rowDimension >= columnDimension) {
            m55025i();
        } else {
            m55024h();
        }
    }

    /* renamed from: a */
    public RealMatrix m55017a() {
        if (this.f74586e == null) {
            double[][] dArr = this.f74582a;
            int length = dArr.length;
            int i = 0;
            int length2 = dArr[0].length;
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
            while (true) {
                double[] dArr3 = this.f74583b;
                if (i >= dArr3.length) {
                    break;
                }
                double[] dArr4 = dArr2[i];
                dArr4[i] = dArr3[i];
                if (length < length2) {
                    if (i > 0) {
                        int i2 = i - 1;
                        dArr4[i2] = this.f74584c[i2];
                    }
                } else if (i < dArr3.length - 1) {
                    dArr4[i + 1] = this.f74584c[i];
                }
                i++;
            }
            this.f74586e = MatrixUtils.createRealMatrix(dArr2);
        }
        return this.f74586e;
    }

    /* renamed from: b */
    public double[][] m55018b() {
        return this.f74582a;
    }

    /* renamed from: c */
    public double[] m55019c() {
        return this.f74583b;
    }

    /* renamed from: d */
    public double[] m55020d() {
        return this.f74584c;
    }

    /* renamed from: e */
    public RealMatrix m55021e() {
        double d;
        if (this.f74585d == null) {
            double[][] dArr = this.f74582a;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[] dArr2 = this.f74583b;
            int length3 = dArr2.length;
            int i = length >= length2 ? 0 : 1;
            if (length < length2) {
                dArr2 = this.f74584c;
            }
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            int i2 = length - 1;
            while (true) {
                d = 1.0d;
                if (i2 < length3) {
                    break;
                }
                dArr3[i2][i2] = 1.0d;
                i2--;
            }
            int i3 = length3 - 1;
            while (i3 >= i) {
                double[] dArr4 = this.f74582a[i3];
                dArr3[i3][i3] = d;
                int i4 = i3 - i;
                double d2 = 0.0d;
                if (dArr4[i4] != 0.0d) {
                    int i5 = i3;
                    while (i5 < length) {
                        double d3 = d2;
                        for (int i6 = i3; i6 < length; i6++) {
                            d3 -= dArr3[i6][i5] * this.f74582a[i6][i4];
                        }
                        double d4 = d3 / (dArr2[i4] * dArr4[i4]);
                        for (int i7 = i3; i7 < length; i7++) {
                            double[] dArr5 = dArr3[i7];
                            dArr5[i5] = dArr5[i5] + ((-d4) * this.f74582a[i7][i4]);
                        }
                        i5++;
                        d2 = 0.0d;
                    }
                }
                i3--;
                d = 1.0d;
            }
            if (i > 0) {
                dArr3[0][0] = 1.0d;
            }
            this.f74585d = MatrixUtils.createRealMatrix(dArr3);
        }
        return this.f74585d;
    }

    /* renamed from: f */
    public RealMatrix m55022f() {
        double d;
        if (this.f74587f == null) {
            double[][] dArr = this.f74582a;
            int length = dArr.length;
            int length2 = dArr[0].length;
            double[] dArr2 = this.f74583b;
            int length3 = dArr2.length;
            int i = length >= length2 ? 1 : 0;
            if (length >= length2) {
                dArr2 = this.f74584c;
            }
            double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length2, length2);
            int i2 = length2 - 1;
            while (true) {
                d = 1.0d;
                if (i2 < length3) {
                    break;
                }
                dArr3[i2][i2] = 1.0d;
                i2--;
            }
            int i3 = length3 - 1;
            while (i3 >= i) {
                int i4 = i3 - i;
                double[] dArr4 = this.f74582a[i4];
                dArr3[i3][i3] = d;
                double d2 = 0.0d;
                if (dArr4[i3] != 0.0d) {
                    int i5 = i3;
                    while (i5 < length2) {
                        double d3 = d2;
                        for (int i6 = i3; i6 < length2; i6++) {
                            d3 -= dArr3[i6][i5] * dArr4[i6];
                        }
                        double d4 = d3 / (dArr2[i4] * dArr4[i3]);
                        for (int i7 = i3; i7 < length2; i7++) {
                            double[] dArr5 = dArr3[i7];
                            dArr5[i5] = dArr5[i5] + ((-d4) * dArr4[i7]);
                        }
                        i5++;
                        d2 = 0.0d;
                    }
                }
                i3--;
                d = 1.0d;
            }
            if (i > 0) {
                dArr3[0][0] = 1.0d;
            }
            this.f74587f = MatrixUtils.createRealMatrix(dArr3);
        }
        return this.f74587f;
    }

    /* renamed from: g */
    public boolean m55023g() {
        double[][] dArr = this.f74582a;
        return dArr.length >= dArr[0].length;
    }

    /* renamed from: h */
    public final void m55024h() {
        double[][] dArr = this.f74582a;
        int length = dArr.length;
        int length2 = dArr[0].length;
        for (int i = 0; i < length; i++) {
            double[] dArr2 = this.f74582a[i];
            double d = 0.0d;
            for (int i2 = i; i2 < length2; i2++) {
                double d2 = dArr2[i2];
                d += d2 * d2;
            }
            double sqrt = dArr2[i] > 0.0d ? -FastMath.sqrt(d) : FastMath.sqrt(d);
            this.f74583b[i] = sqrt;
            if (sqrt != 0.0d) {
                dArr2[i] = dArr2[i] - sqrt;
                for (int i3 = i + 1; i3 < length; i3++) {
                    double[] dArr3 = this.f74582a[i3];
                    double d3 = 0.0d;
                    for (int i4 = i; i4 < length2; i4++) {
                        d3 -= dArr3[i4] * dArr2[i4];
                    }
                    double d4 = d3 / (this.f74582a[i][i] * sqrt);
                    for (int i5 = i; i5 < length2; i5++) {
                        dArr3[i5] = dArr3[i5] - (dArr2[i5] * d4);
                    }
                }
            }
            if (i < length - 1) {
                int i6 = i + 1;
                double[] dArr4 = this.f74582a[i6];
                double d5 = 0.0d;
                for (int i7 = i6; i7 < length; i7++) {
                    double d6 = this.f74582a[i7][i];
                    d5 += d6 * d6;
                }
                double sqrt2 = dArr4[i] > 0.0d ? -FastMath.sqrt(d5) : FastMath.sqrt(d5);
                this.f74584c[i] = sqrt2;
                if (sqrt2 != 0.0d) {
                    dArr4[i] = dArr4[i] - sqrt2;
                    for (int i8 = i6; i8 < length2; i8++) {
                        double d7 = 0.0d;
                        for (int i9 = i6; i9 < length; i9++) {
                            double[] dArr5 = this.f74582a[i9];
                            d7 -= dArr5[i8] * dArr5[i];
                        }
                        double d8 = d7 / (dArr4[i] * sqrt2);
                        for (int i10 = i6; i10 < length; i10++) {
                            double[] dArr6 = this.f74582a[i10];
                            dArr6[i8] = dArr6[i8] - (dArr6[i] * d8);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: i */
    public final void m55025i() {
        double[][] dArr = this.f74582a;
        int length = dArr.length;
        int length2 = dArr[0].length;
        for (int i = 0; i < length2; i++) {
            double d = 0.0d;
            for (int i2 = i; i2 < length; i2++) {
                double d2 = this.f74582a[i2][i];
                d += d2 * d2;
            }
            double[] dArr2 = this.f74582a[i];
            double d3 = dArr2[i];
            double sqrt = FastMath.sqrt(d);
            if (d3 > 0.0d) {
                sqrt = -sqrt;
            }
            this.f74583b[i] = sqrt;
            if (sqrt != 0.0d) {
                dArr2[i] = dArr2[i] - sqrt;
                for (int i3 = i + 1; i3 < length2; i3++) {
                    double d4 = 0.0d;
                    for (int i4 = i; i4 < length; i4++) {
                        double[] dArr3 = this.f74582a[i4];
                        d4 -= dArr3[i3] * dArr3[i];
                    }
                    double d5 = d4 / (this.f74582a[i][i] * sqrt);
                    for (int i5 = i; i5 < length; i5++) {
                        double[] dArr4 = this.f74582a[i5];
                        dArr4[i3] = dArr4[i3] - (dArr4[i] * d5);
                    }
                }
            }
            if (i < length2 - 1) {
                int i6 = i + 1;
                double d6 = 0.0d;
                for (int i7 = i6; i7 < length2; i7++) {
                    double d7 = dArr2[i7];
                    d6 += d7 * d7;
                }
                double sqrt2 = dArr2[i6] > 0.0d ? -FastMath.sqrt(d6) : FastMath.sqrt(d6);
                this.f74584c[i] = sqrt2;
                if (sqrt2 != 0.0d) {
                    dArr2[i6] = dArr2[i6] - sqrt2;
                    for (int i8 = i6; i8 < length; i8++) {
                        double[] dArr5 = this.f74582a[i8];
                        double d8 = 0.0d;
                        for (int i9 = i6; i9 < length2; i9++) {
                            d8 -= dArr5[i9] * dArr2[i9];
                        }
                        double d9 = d8 / (dArr2[i6] * sqrt2);
                        for (int i10 = i6; i10 < length2; i10++) {
                            dArr5[i10] = dArr5[i10] - (dArr2[i10] * d9);
                        }
                    }
                }
            }
        }
    }
}
