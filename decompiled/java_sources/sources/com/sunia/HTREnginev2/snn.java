package com.sunia.HTREnginev2;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class snn {

    /* renamed from: a */
    public final double[][] f84326a;

    /* renamed from: b */
    public final double[] f84327b;

    /* renamed from: c */
    public final double[] f84328c;

    /* renamed from: d */
    public RealMatrix f84329d;

    /* renamed from: e */
    public RealMatrix f84330e;

    /* renamed from: f */
    public RealMatrix f84331f;

    public snn(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        this.f84326a = realMatrix.getData();
        this.f84327b = new double[rowDimension];
        this.f84328c = new double[rowDimension - 1];
        this.f84329d = null;
        this.f84330e = null;
        this.f84331f = null;
        m57195g();
    }

    /* renamed from: a */
    public double[][] m57189a() {
        return this.f84326a;
    }

    /* renamed from: b */
    public double[] m57190b() {
        return this.f84327b;
    }

    /* renamed from: c */
    public RealMatrix m57191c() {
        if (this.f84329d == null) {
            this.f84329d = m57192d().transpose();
        }
        return this.f84329d;
    }

    /* renamed from: d */
    public RealMatrix m57192d() {
        if (this.f84330e == null) {
            int length = this.f84326a.length;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            for (int i = length - 1; i >= 1; i--) {
                int i2 = i - 1;
                double[] dArr2 = this.f84326a[i2];
                double[] dArr3 = dArr[i];
                dArr3[i] = 1.0d;
                double d = dArr2[i];
                if (d != 0.0d) {
                    double d2 = this.f84328c[i2];
                    double d3 = 1.0d / (d2 * d);
                    double d4 = 1.0d / d2;
                    dArr3[i] = (d * d4) + 1.0d;
                    int i3 = i + 1;
                    for (int i4 = i3; i4 < length; i4++) {
                        dArr[i][i4] = dArr2[i4] * d4;
                    }
                    for (int i5 = i3; i5 < length; i5++) {
                        double d5 = 0.0d;
                        for (int i6 = i3; i6 < length; i6++) {
                            d5 += dArr[i5][i6] * dArr2[i6];
                        }
                        double d6 = d5 * d3;
                        dArr[i5][i] = dArr2[i] * d6;
                        for (int i7 = i3; i7 < length; i7++) {
                            double[] dArr4 = dArr[i5];
                            dArr4[i7] = dArr4[i7] + (dArr2[i7] * d6);
                        }
                    }
                }
            }
            dArr[0][0] = 1.0d;
            this.f84330e = MatrixUtils.createRealMatrix(dArr);
        }
        return this.f84330e;
    }

    /* renamed from: e */
    public double[] m57193e() {
        return this.f84328c;
    }

    /* renamed from: f */
    public RealMatrix m57194f() {
        if (this.f84331f == null) {
            int length = this.f84327b.length;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            for (int i = 0; i < length; i++) {
                double[] dArr2 = dArr[i];
                dArr2[i] = this.f84327b[i];
                if (i > 0) {
                    int i2 = i - 1;
                    dArr2[i2] = this.f84328c[i2];
                }
                if (i < r4.length - 1) {
                    dArr2[i + 1] = this.f84328c[i];
                }
            }
            this.f84331f = MatrixUtils.createRealMatrix(dArr);
        }
        return this.f84331f;
    }

    /* renamed from: g */
    public final void m57195g() {
        int length = this.f84326a.length;
        double[] dArr = new double[length];
        int i = 0;
        while (true) {
            int i2 = length - 1;
            if (i >= i2) {
                this.f84327b[i2] = this.f84326a[i2][i2];
                return;
            }
            double[] dArr2 = this.f84326a[i];
            this.f84327b[i] = dArr2[i];
            int i3 = i + 1;
            double d = 0.0d;
            for (int i4 = i3; i4 < length; i4++) {
                double d2 = dArr2[i4];
                d += d2 * d2;
            }
            double sqrt = dArr2[i3] > 0.0d ? -FastMath.sqrt(d) : FastMath.sqrt(d);
            this.f84328c[i] = sqrt;
            if (sqrt != 0.0d) {
                double d3 = dArr2[i3] - sqrt;
                dArr2[i3] = d3;
                double d4 = (-1.0d) / (sqrt * d3);
                Arrays.fill(dArr, i3, length, 0.0d);
                int i5 = i3;
                while (i5 < length) {
                    double[] dArr3 = this.f84326a[i5];
                    double d5 = dArr2[i5];
                    double d6 = dArr3[i5] * d5;
                    int i6 = i5 + 1;
                    for (int i7 = i6; i7 < length; i7++) {
                        double d7 = dArr3[i7];
                        d6 += dArr2[i7] * d7;
                        dArr[i7] = dArr[i7] + (d7 * d5);
                    }
                    dArr[i5] = (dArr[i5] + d6) * d4;
                    i5 = i6;
                }
                double d8 = 0.0d;
                for (int i8 = i3; i8 < length; i8++) {
                    d8 += dArr[i8] * dArr2[i8];
                }
                double d9 = d8 * (d4 / 2.0d);
                for (int i9 = i3; i9 < length; i9++) {
                    dArr[i9] = dArr[i9] - (dArr2[i9] * d9);
                }
                for (int i10 = i3; i10 < length; i10++) {
                    double[] dArr4 = this.f84326a[i10];
                    for (int i11 = i10; i11 < length; i11++) {
                        dArr4[i11] = dArr4[i11] - ((dArr2[i10] * dArr[i11]) + (dArr[i10] * dArr2[i11]));
                    }
                }
            }
            i = i3;
        }
    }
}
