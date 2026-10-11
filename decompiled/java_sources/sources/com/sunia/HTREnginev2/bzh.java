package com.sunia.HTREnginev2;

import java.lang.reflect.Array;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class bzh {

    /* renamed from: a */
    public final double[][] f66289a;

    /* renamed from: b */
    public final double[] f66290b;

    /* renamed from: c */
    public RealMatrix f66291c;

    /* renamed from: d */
    public RealMatrix f66292d;

    /* renamed from: e */
    public RealMatrix f66293e;

    public bzh(RealMatrix realMatrix) {
        if (!realMatrix.isSquare()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        this.f66289a = realMatrix.getData();
        this.f66290b = new double[rowDimension];
        this.f66291c = null;
        this.f66292d = null;
        this.f66293e = null;
        m53364e();
    }

    /* renamed from: a */
    public RealMatrix m53360a() {
        if (this.f66293e == null) {
            int length = this.f66289a.length;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            for (int i = 0; i < length; i++) {
                if (i > 0) {
                    int i2 = i - 1;
                    dArr[i][i2] = this.f66289a[i][i2];
                }
                for (int i3 = i; i3 < length; i3++) {
                    dArr[i][i3] = this.f66289a[i][i3];
                }
            }
            this.f66293e = MatrixUtils.createRealMatrix(dArr);
        }
        return this.f66293e;
    }

    /* renamed from: b */
    public double[][] m53361b() {
        return this.f66289a;
    }

    /* renamed from: c */
    public RealMatrix m53362c() {
        if (this.f66291c == null) {
            int length = this.f66289a.length;
            int i = length - 1;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length);
            int i2 = 0;
            while (i2 < length) {
                int i3 = 0;
                while (i3 < length) {
                    dArr[i2][i3] = i2 == i3 ? 1.0d : 0.0d;
                    i3++;
                }
                i2++;
            }
            for (int i4 = i - 1; i4 >= 1; i4--) {
                int i5 = i4 - 1;
                if (this.f66289a[i4][i5] != 0.0d) {
                    for (int i6 = i4 + 1; i6 <= i; i6++) {
                        this.f66290b[i6] = this.f66289a[i6][i5];
                    }
                    for (int i7 = i4; i7 <= i; i7++) {
                        double d = 0.0d;
                        for (int i8 = i4; i8 <= i; i8++) {
                            d += this.f66290b[i8] * dArr[i8][i7];
                        }
                        double d2 = (d / this.f66290b[i4]) / this.f66289a[i4][i5];
                        for (int i9 = i4; i9 <= i; i9++) {
                            double[] dArr2 = dArr[i9];
                            dArr2[i7] = dArr2[i7] + (this.f66290b[i9] * d2);
                        }
                    }
                }
            }
            this.f66291c = MatrixUtils.createRealMatrix(dArr);
        }
        return this.f66291c;
    }

    /* renamed from: d */
    public RealMatrix m53363d() {
        if (this.f66292d == null) {
            this.f66292d = m53362c().transpose();
        }
        return this.f66292d;
    }

    /* renamed from: e */
    public final void m53364e() {
        int i;
        int i2;
        int length = this.f66289a.length;
        int i3 = length - 1;
        int i4 = 1;
        while (i4 <= i3 - 1) {
            double d = 0.0d;
            double d2 = 0.0d;
            for (int i5 = i4; i5 <= i3; i5++) {
                d2 += FastMath.abs(this.f66289a[i5][i4 - 1]);
            }
            if (Precision.equals(d2, 0.0d)) {
                i = length;
                i2 = i3;
            } else {
                double d3 = 0.0d;
                for (int i6 = i3; i6 >= i4; i6--) {
                    double[] dArr = this.f66290b;
                    double d4 = this.f66289a[i6][i4 - 1] / d2;
                    dArr[i6] = d4;
                    d3 += d4 * d4;
                }
                double d5 = this.f66290b[i4];
                double sqrt = FastMath.sqrt(d3);
                if (d5 > 0.0d) {
                    sqrt = -sqrt;
                }
                double[] dArr2 = this.f66290b;
                double d6 = dArr2[i4];
                double d7 = d3 - (d6 * sqrt);
                dArr2[i4] = d6 - sqrt;
                int i7 = i4;
                while (i7 < length) {
                    int i8 = i3;
                    double d8 = d;
                    while (i8 >= i4) {
                        d8 += this.f66290b[i8] * this.f66289a[i8][i7];
                        i8--;
                        length = length;
                    }
                    int i9 = length;
                    double d9 = d8 / d7;
                    for (int i10 = i4; i10 <= i3; i10++) {
                        double[] dArr3 = this.f66289a[i10];
                        dArr3[i7] = dArr3[i7] - (this.f66290b[i10] * d9);
                    }
                    i7++;
                    length = i9;
                    d = 0.0d;
                }
                i = length;
                for (int i11 = 0; i11 <= i3; i11++) {
                    double d10 = 0.0d;
                    for (int i12 = i3; i12 >= i4; i12--) {
                        d10 += this.f66290b[i12] * this.f66289a[i11][i12];
                    }
                    double d11 = d10 / d7;
                    int i13 = i4;
                    while (i13 <= i3) {
                        double[] dArr4 = this.f66289a[i11];
                        dArr4[i13] = dArr4[i13] - (this.f66290b[i13] * d11);
                        i13++;
                        i3 = i3;
                    }
                }
                i2 = i3;
                double[] dArr5 = this.f66290b;
                dArr5[i4] = dArr5[i4] * d2;
                this.f66289a[i4][i4 - 1] = d2 * sqrt;
            }
            i4++;
            length = i;
            i3 = i2;
        }
    }
}
