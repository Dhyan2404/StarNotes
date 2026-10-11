package org.apache.commons.math3.stat.regression;

import java.util.Arrays;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class MillerUpdatingRegression implements UpdatingMultipleLinearRegression {

    /* renamed from: e */
    public final int f109786e;

    /* renamed from: f */
    public final double[] f109787f;

    /* renamed from: g */
    public final double[] f109788g;

    /* renamed from: h */
    public final double[] f109789h;

    /* renamed from: i */
    public final double[] f109790i;

    /* renamed from: j */
    public final double[] f109791j;

    /* renamed from: k */
    public final int[] f109792k;

    /* renamed from: l */
    public final double[] f109793l;

    /* renamed from: m */
    public long f109794m;

    /* renamed from: n */
    public double f109795n;

    /* renamed from: o */
    public boolean f109796o;

    /* renamed from: p */
    public boolean f109797p;

    /* renamed from: q */
    public final boolean[] f109798q;

    /* renamed from: r */
    public final double[] f109799r;

    /* renamed from: s */
    public final double[] f109800s;

    /* renamed from: t */
    public double f109801t;

    /* renamed from: u */
    public double f109802u;

    /* renamed from: v */
    public boolean f109803v;

    /* renamed from: w */
    public final double f109804w;

    public MillerUpdatingRegression() {
        this(-1, false, Double.NaN);
    }

    /* renamed from: a */
    public final double[] m68181a(int i) {
        double d;
        if (this.f109794m <= i) {
            return null;
        }
        int i2 = 0;
        double d2 = 0.0d;
        int i3 = 0;
        while (true) {
            d = 1.0d;
            if (i3 >= i) {
                break;
            }
            if (!this.f109798q[i3]) {
                d2 += 1.0d;
            }
            i3++;
        }
        int i4 = i - 1;
        double d3 = this.f109791j[i4] / (this.f109794m - d2);
        double[] dArr = new double[(i * i4) / 2];
        m68183c(dArr, i);
        double[] dArr2 = new double[((i + 1) * i) / 2];
        Arrays.fill(dArr2, Double.NaN);
        int i5 = 0;
        while (i2 < i) {
            if (!this.f109798q[i2]) {
                int i6 = i2;
                int i7 = i5;
                while (i6 < i) {
                    if (this.f109798q[i6]) {
                        i7 += (i - i6) - 1;
                    } else {
                        int i8 = (i5 + i6) - i2;
                        double d4 = i2 == i6 ? d / this.f109787f[i6] : dArr[i8 - 1] / this.f109787f[i6];
                        int i9 = i6 + 1;
                        for (int i10 = i9; i10 < i; i10++) {
                            if (!this.f109798q[i10]) {
                                d4 += (dArr[i8] * dArr[i7]) / this.f109787f[i10];
                            }
                            i8++;
                            i7++;
                        }
                        dArr2[((i9 * i6) / 2) + i2] = d4 * d3;
                    }
                    i6++;
                    d = 1.0d;
                }
            }
            i5 += (i - i2) - 1;
            i2++;
            d = 1.0d;
        }
        return dArr2;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void addObservation(double[] dArr, double d) throws ModelSpecificationException {
        boolean z = this.f109803v;
        if ((!z && dArr.length != this.f109786e) || (z && dArr.length + 1 != this.f109786e)) {
            throw new ModelSpecificationException(LocalizedFormats.INVALID_REGRESSION_OBSERVATION, Integer.valueOf(dArr.length), Integer.valueOf(this.f109786e));
        }
        if (z) {
            double[] dArr2 = new double[dArr.length + 1];
            System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
            dArr2[0] = 1.0d;
            m68182b(dArr2, 1.0d, d);
        } else {
            m68182b(MathArrays.copyOf(dArr, dArr.length), 1.0d, d);
        }
        this.f109794m++;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void addObservations(double[][] dArr, double[] dArr2) throws ModelSpecificationException {
        if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
            LocalizedFormats localizedFormats = LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(dArr == null ? 0 : dArr.length);
            objArr[1] = Integer.valueOf(dArr2 != null ? dArr2.length : 0);
            throw new ModelSpecificationException(localizedFormats, objArr);
        }
        if (dArr.length == 0) {
            throw new ModelSpecificationException(LocalizedFormats.NO_DATA, new Object[0]);
        }
        if (dArr[0].length + 1 > dArr.length) {
            throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
        }
        while (r1 < dArr.length) {
            addObservation(dArr[r1], dArr2[r1]);
            r1++;
        }
    }

    /* renamed from: b */
    public final void m68182b(double[] dArr, double d, double d2) {
        double d3;
        this.f109796o = false;
        this.f109801t = m68187g(d2, this.f109801t);
        this.f109802u = m68187g(this.f109802u, d2 * d2);
        int i = 0;
        double d4 = d2;
        double d5 = d;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            double d6 = 0.0d;
            if (d5 == 0.0d) {
                return;
            }
            double d7 = dArr[i2];
            if (d7 == 0.0d) {
                i += (this.f109786e - i2) - 1;
            } else {
                double d8 = this.f109787f[i2];
                double d9 = d5 * d7;
                if (d8 != 0.0d) {
                    double d10 = d9 * d7;
                    d3 = m68187g(d8, d10);
                    if (FastMath.abs(d10 / d8) > Precision.EPSILON) {
                        d5 = (d5 * d8) / d3;
                    }
                    d6 = d5;
                } else {
                    d3 = d9 * d7;
                }
                this.f109787f[i2] = d3;
                int i3 = i2 + 1;
                while (i3 < this.f109786e) {
                    double d11 = d6;
                    double d12 = dArr[i3];
                    double d13 = d4;
                    dArr[i3] = m68187g(d12, (-d7) * this.f109789h[i]);
                    if (d8 != 0.0d) {
                        double[] dArr2 = this.f109789h;
                        dArr2[i] = m68187g(dArr2[i] * d8, d12 * d9) / d3;
                    } else {
                        this.f109789h[i] = d12 / d7;
                    }
                    i++;
                    i3++;
                    d6 = d11;
                    d4 = d13;
                }
                double d14 = d4;
                double d15 = d6;
                double m68187g = m68187g(d14, (-d7) * this.f109788g[i2]);
                if (d8 != 0.0d) {
                    double[] dArr3 = this.f109788g;
                    dArr3[i2] = m68187g(d8 * dArr3[i2], d9 * d14) / d3;
                } else {
                    this.f109788g[i2] = d14 / d7;
                }
                d4 = m68187g;
                d5 = d15;
            }
        }
        this.f109795n = m68187g(this.f109795n, d5 * d4 * d4);
    }

    /* renamed from: c */
    public final void m68183c(double[] dArr, int i) {
        int i2 = i - 1;
        int i3 = ((i * i2) / 2) - 1;
        Arrays.fill(dArr, Double.NaN);
        while (i2 > 0) {
            if (this.f109798q[i2]) {
                i3 -= i - i2;
            } else {
                int i4 = this.f109786e;
                int i5 = ((i2 - 1) * ((i4 + i4) - i2)) / 2;
                for (int i6 = i; i6 > i2; i6--) {
                    double d = 0.0d;
                    int i7 = i3;
                    int i8 = i5;
                    for (int i9 = i2; i9 < i6 - 1; i9++) {
                        i7 += (i - i9) - 1;
                        if (!this.f109798q[i9]) {
                            d += (-this.f109789h[i8]) * dArr[i7];
                        }
                        i8++;
                    }
                    dArr[i3] = d - this.f109789h[i8];
                    i3--;
                }
            }
            i2--;
        }
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public void clear() {
        Arrays.fill(this.f109787f, 0.0d);
        Arrays.fill(this.f109788g, 0.0d);
        Arrays.fill(this.f109789h, 0.0d);
        Arrays.fill(this.f109790i, 0.0d);
        Arrays.fill(this.f109791j, 0.0d);
        Arrays.fill(this.f109793l, 0.0d);
        Arrays.fill(this.f109800s, 0.0d);
        Arrays.fill(this.f109799r, 0.0d);
        Arrays.fill(this.f109798q, false);
        for (int i = 0; i < this.f109786e; i++) {
            this.f109792k[i] = i;
        }
        this.f109794m = 0L;
        this.f109795n = 0.0d;
        this.f109801t = 0.0d;
        this.f109802u = 0.0d;
        this.f109796o = false;
        this.f109797p = false;
    }

    /* renamed from: d */
    public final double[] m68184d(int i) throws ModelSpecificationException {
        if (i < 1) {
            throw new ModelSpecificationException(LocalizedFormats.NO_REGRESSORS, new Object[0]);
        }
        if (i > this.f109786e) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(i), Integer.valueOf(this.f109786e));
        }
        if (!this.f109797p) {
            m68189i();
        }
        double[] dArr = new double[i];
        boolean z = false;
        for (int i2 = i - 1; i2 > -1; i2--) {
            if (FastMath.sqrt(this.f109787f[i2]) < this.f109790i[i2]) {
                dArr[i2] = 0.0d;
                this.f109787f[i2] = 0.0d;
                z = true;
            } else {
                dArr[i2] = this.f109788g[i2];
                int i3 = this.f109786e;
                int i4 = ((((i3 + i3) - i2) - 1) * i2) / 2;
                for (int i5 = i2 + 1; i5 < i; i5++) {
                    dArr[i2] = m68187g(dArr[i2], (-this.f109789h[i4]) * dArr[i5]);
                    i4++;
                }
            }
        }
        if (z) {
            for (int i6 = 0; i6 < i; i6++) {
                if (this.f109798q[i6]) {
                    dArr[i6] = Double.NaN;
                }
            }
        }
        return dArr;
    }

    /* renamed from: e */
    public final int m68185e(int[] iArr, int i) {
        if (iArr.length < 1 || iArr.length > (this.f109786e + 1) - i) {
            return -1;
        }
        int i2 = i;
        int i3 = i2;
        while (i2 < this.f109786e) {
            int i4 = this.f109792k[i2];
            int i5 = 0;
            while (true) {
                if (i5 >= iArr.length) {
                    break;
                }
                if (i4 != iArr[i5] || i2 <= i3) {
                    i5++;
                } else {
                    m68190j(i2, i3);
                    i3++;
                    if (i3 >= iArr.length + i) {
                        return 0;
                    }
                }
            }
            i2++;
        }
        return 0;
    }

    /* renamed from: f */
    public final void m68186f() {
        for (int i = 0; i < this.f109786e; i++) {
            this.f109800s[i] = FastMath.sqrt(this.f109787f[i]);
        }
        for (int i2 = 0; i2 < this.f109786e; i2++) {
            double d = this.f109790i[i2];
            int i3 = i2 - 1;
            int i4 = i3;
            for (int i5 = 0; i5 < i3; i5++) {
                if (FastMath.abs(this.f109789h[i4]) * this.f109800s[i5] < d) {
                    this.f109789h[i4] = 0.0d;
                }
                i4 += (this.f109786e - i5) - 2;
            }
            boolean[] zArr = this.f109798q;
            zArr[i2] = false;
            if (this.f109800s[i2] < d) {
                zArr[i2] = true;
                if (i2 < this.f109786e - 1) {
                    Arrays.fill(this.f109799r, 0.0d);
                    int i6 = this.f109786e;
                    int i7 = ((((i6 + i6) - i2) - 1) * i2) / 2;
                    int i8 = i2 + 1;
                    while (i8 < this.f109786e) {
                        double[] dArr = this.f109799r;
                        double[] dArr2 = this.f109789h;
                        dArr[i8] = dArr2[i7];
                        dArr2[i7] = 0.0d;
                        i8++;
                        i7++;
                    }
                    double[] dArr3 = this.f109788g;
                    double d2 = dArr3[i2];
                    double[] dArr4 = this.f109787f;
                    double d3 = dArr4[i2];
                    dArr4[i2] = 0.0d;
                    dArr3[i2] = 0.0d;
                    m68182b(this.f109799r, d3, d2);
                } else {
                    double d4 = this.f109795n;
                    double d5 = this.f109787f[i2];
                    double d6 = this.f109788g[i2];
                    this.f109795n = d4 + (d5 * d6 * d6);
                }
            }
        }
    }

    /* renamed from: g */
    public final double m68187g(double d, double d2) {
        double abs = FastMath.abs(d);
        double abs2 = FastMath.abs(d2);
        return abs > abs2 ? abs2 > abs * Precision.EPSILON ? d + d2 : d : abs > abs2 * Precision.EPSILON ? d + d2 : d2;
    }

    public double getDiagonalOfHatMatrix(double[] dArr) {
        double[] dArr2 = dArr;
        int i = this.f109786e;
        double[] dArr3 = new double[i];
        if (dArr2.length > i) {
            return Double.NaN;
        }
        if (this.f109803v) {
            double[] dArr4 = new double[dArr2.length + 1];
            dArr4[0] = 1.0d;
            System.arraycopy(dArr2, 0, dArr4, 1, dArr2.length);
            dArr2 = dArr4;
        }
        double d = 0.0d;
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            if (FastMath.sqrt(this.f109787f[i2]) < this.f109790i[i2]) {
                dArr3[i2] = 0.0d;
            } else {
                int i3 = i2 - 1;
                double d2 = dArr2[i2];
                for (int i4 = 0; i4 < i2; i4++) {
                    d2 = m68187g(d2, (-dArr3[i4]) * this.f109789h[i3]);
                    i3 += (this.f109786e - i4) - 2;
                }
                dArr3[i2] = d2;
                d = m68187g(d, (d2 * d2) / this.f109787f[i2]);
            }
        }
        return d;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public long getN() {
        return this.f109794m;
    }

    public int[] getOrderOfRegressors() {
        return MathArrays.copyOf(this.f109792k);
    }

    public double[] getPartialCorrelations(int i) {
        int i2 = this.f109786e;
        double[] dArr = new double[(((i2 - i) + 1) * (i2 - i)) / 2];
        int i3 = -i;
        int i4 = i + 1;
        int i5 = -i4;
        double[] dArr2 = new double[i2 - i];
        double[] dArr3 = new double[(i2 - i) - 1];
        int i6 = ((i2 - i) * ((i2 - i) - 1)) / 2;
        if (i < -1 || i >= i2) {
            return null;
        }
        int i7 = (i2 - 1) - i;
        int length = this.f109789h.length - ((i7 * (i7 + 1)) / 2);
        double d = this.f109787f[i];
        double d2 = 0.0d;
        if (d > 0.0d) {
            dArr2[i + i3] = 1.0d / FastMath.sqrt(d);
        }
        while (i4 < this.f109786e) {
            int i8 = ((length + i4) - 1) - i;
            double d3 = this.f109787f[i4];
            int i9 = i;
            while (i9 < i4) {
                double d4 = this.f109787f[i9];
                double d5 = this.f109789h[i8];
                d3 += d4 * d5 * d5;
                i8 += (this.f109786e - i9) - 2;
                i9++;
                i6 = i6;
                d2 = 0.0d;
            }
            int i10 = i6;
            if (d3 > d2) {
                dArr2[i4 + i3] = 1.0d / FastMath.sqrt(d3);
            } else {
                dArr2[i4 + i3] = d2;
            }
            i4++;
            i6 = i10;
            d2 = 0.0d;
        }
        int i11 = i6;
        double d6 = this.f109795n;
        for (int i12 = i; i12 < this.f109786e; i12++) {
            double d7 = this.f109787f[i12];
            double d8 = this.f109788g[i12];
            d6 += d7 * d8 * d8;
        }
        double d9 = 0.0d;
        if (d6 > 0.0d) {
            d6 = 1.0d / FastMath.sqrt(d6);
        }
        int i13 = i;
        while (i13 < this.f109786e) {
            Arrays.fill(dArr3, d9);
            int i14 = ((length + i13) - i) - 1;
            int i15 = i;
            double d10 = d9;
            while (i15 < i13) {
                int i16 = i14 + 1;
                int i17 = i13 + 1;
                while (true) {
                    if (i17 < this.f109786e) {
                        int i18 = i17 + i5;
                        double d11 = dArr3[i18];
                        int i19 = length;
                        double d12 = this.f109787f[i15];
                        double[] dArr4 = this.f109789h;
                        dArr3[i18] = d11 + (d12 * dArr4[i14] * dArr4[i16]);
                        i16++;
                        i17++;
                        length = i19;
                    }
                }
                d10 += this.f109787f[i15] * this.f109789h[i14] * this.f109788g[i15];
                i14 += (r14 - i15) - 2;
                i15++;
                length = length;
            }
            int i20 = length;
            int i21 = i14 + 1;
            int i22 = i13 + 1;
            int i23 = i22;
            while (i23 < this.f109786e) {
                int i24 = i23 + i5;
                double d13 = dArr3[i24] + (this.f109787f[i13] * this.f109789h[i21]);
                dArr3[i24] = d13;
                i21++;
                dArr[(((((i23 - 1) - i) * (i23 - i)) / 2) + i13) - i] = d13 * dArr2[i13 + i3] * dArr2[i23 + i3];
                i23++;
                i5 = i5;
            }
            double d14 = d10 + (this.f109787f[i13] * this.f109788g[i13]);
            int i25 = i13 + i3;
            dArr[i25 + i11] = d14 * dArr2[i25] * d6;
            i13 = i22;
            i5 = i5;
            length = i20;
            d9 = 0.0d;
        }
        return dArr;
    }

    /* renamed from: h */
    public final void m68188h() {
        double d = this.f109795n;
        double[] dArr = this.f109791j;
        int i = this.f109786e;
        dArr[i - 1] = d;
        for (int i2 = i - 1; i2 > 0; i2--) {
            double d2 = this.f109787f[i2];
            double d3 = this.f109788g[i2];
            d += d2 * d3 * d3;
            this.f109791j[i2 - 1] = d;
        }
        this.f109796o = true;
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public boolean hasIntercept() {
        return this.f109803v;
    }

    /* renamed from: i */
    public final void m68189i() {
        double d = this.f109804w;
        for (int i = 0; i < this.f109786e; i++) {
            this.f109793l[i] = FastMath.sqrt(this.f109787f[i]);
        }
        this.f109790i[0] = this.f109793l[0] * d;
        for (int i2 = 1; i2 < this.f109786e; i2++) {
            int i3 = i2 - 1;
            double d2 = this.f109793l[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                d2 += FastMath.abs(this.f109789h[i3]) * this.f109793l[i4];
                i3 += (this.f109786e - i4) - 2;
            }
            this.f109790i[i2] = d2 * d;
        }
        this.f109797p = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0131  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m68190j(int r26, int r27) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.stat.regression.MillerUpdatingRegression.m68190j(int, int):void");
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public RegressionResults regress() throws ModelSpecificationException {
        return regress(this.f109786e);
    }

    public MillerUpdatingRegression(int i, boolean z, double d) throws ModelSpecificationException {
        this.f109794m = 0L;
        this.f109795n = 0.0d;
        this.f109796o = false;
        this.f109797p = false;
        this.f109801t = 0.0d;
        this.f109802u = 0.0d;
        if (i >= 1) {
            if (z) {
                this.f109786e = i + 1;
            } else {
                this.f109786e = i;
            }
            this.f109803v = z;
            this.f109794m = 0L;
            int i2 = this.f109786e;
            this.f109787f = new double[i2];
            this.f109788g = new double[i2];
            this.f109789h = new double[((i2 - 1) * i2) / 2];
            this.f109790i = new double[i2];
            this.f109791j = new double[i2];
            this.f109792k = new int[i2];
            this.f109799r = new double[i2];
            this.f109800s = new double[i2];
            this.f109793l = new double[i2];
            this.f109798q = new boolean[i2];
            for (int i3 = 0; i3 < this.f109786e; i3++) {
                this.f109792k[i3] = i3;
            }
            if (d > 0.0d) {
                this.f109804w = d;
                return;
            } else {
                this.f109804w = -d;
                return;
            }
        }
        throw new ModelSpecificationException(LocalizedFormats.NO_REGRESSORS, new Object[0]);
    }

    public RegressionResults regress(int i) throws ModelSpecificationException {
        boolean z;
        int i2;
        if (this.f109794m > i) {
            if (i <= this.f109786e) {
                m68189i();
                m68186f();
                double[] m68184d = m68184d(i);
                m68188h();
                double[] m68181a = m68181a(i);
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    boolean[] zArr = this.f109798q;
                    if (i3 >= zArr.length) {
                        break;
                    }
                    if (!zArr[i3]) {
                        i4++;
                    }
                    i3++;
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= i) {
                        z = false;
                        break;
                    }
                    if (this.f109792k[i5] != i5) {
                        z = true;
                        break;
                    }
                    i5++;
                }
                if (!z) {
                    return new RegressionResults(m68184d, new double[][]{m68181a}, true, this.f109794m, i4, this.f109801t, this.f109802u, this.f109795n, this.f109803v, false);
                }
                double[] dArr = new double[m68184d.length];
                double[] dArr2 = new double[m68181a.length];
                int[] iArr = new int[m68184d.length];
                for (int i6 = 0; i6 < this.f109786e; i6++) {
                    for (int i7 = 0; i7 < i; i7++) {
                        if (this.f109792k[i7] == i6) {
                            dArr[i6] = m68184d[i7];
                            iArr[i6] = i7;
                        }
                    }
                }
                int i8 = 0;
                for (int i9 = 0; i9 < m68184d.length; i9++) {
                    int i10 = iArr[i9];
                    int i11 = 0;
                    while (i11 <= i9) {
                        int i12 = iArr[i11];
                        if (i10 > i12) {
                            i2 = (((i10 + 1) * i10) / 2) + i12;
                        } else {
                            i2 = ((i12 * (i12 + 1)) / 2) + i10;
                        }
                        dArr2[i8] = m68181a[i2];
                        i11++;
                        i8++;
                    }
                }
                return new RegressionResults(dArr, new double[][]{dArr2}, true, this.f109794m, i4, this.f109801t, this.f109802u, this.f109795n, this.f109803v, false);
            }
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(i), Integer.valueOf(this.f109786e));
        }
        throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Long.valueOf(this.f109794m), Integer.valueOf(i));
    }

    public MillerUpdatingRegression(int i, boolean z) throws ModelSpecificationException {
        this(i, z, Precision.EPSILON);
    }

    @Override // org.apache.commons.math3.stat.regression.UpdatingMultipleLinearRegression
    public RegressionResults regress(int[] iArr) throws ModelSpecificationException {
        boolean z;
        int i;
        int[] iArr2 = iArr;
        int length = iArr2.length;
        int i2 = this.f109786e;
        if (length > i2) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(iArr2.length), Integer.valueOf(this.f109786e));
        }
        if (this.f109794m > i2) {
            Arrays.sort(iArr);
            int i3 = 0;
            for (int i4 = 0; i4 < iArr2.length; i4++) {
                if (i4 < this.f109786e) {
                    if (i4 > 0 && iArr2[i4] == iArr2[i4 - 1]) {
                        iArr2[i4] = -1;
                        i3++;
                    }
                } else {
                    throw new ModelSpecificationException(LocalizedFormats.INDEX_LARGER_THAN_MAX, Integer.valueOf(i4), Integer.valueOf(this.f109786e));
                }
            }
            if (i3 > 0) {
                int[] iArr3 = new int[iArr2.length - i3];
                int i5 = 0;
                for (int i6 : iArr2) {
                    if (i6 > -1) {
                        iArr3[i5] = i6;
                        i5++;
                    }
                }
                iArr2 = iArr3;
            }
            m68185e(iArr2, 0);
            m68189i();
            m68186f();
            double[] m68184d = m68184d(iArr2.length);
            m68188h();
            double[] m68181a = m68181a(iArr2.length);
            int i7 = 0;
            int i8 = 0;
            while (true) {
                boolean[] zArr = this.f109798q;
                if (i7 >= zArr.length) {
                    break;
                }
                if (!zArr[i7]) {
                    i8++;
                }
                i7++;
            }
            int i9 = 0;
            while (true) {
                if (i9 >= this.f109786e) {
                    z = false;
                    break;
                }
                if (this.f109792k[i9] != iArr2[i9]) {
                    z = true;
                    break;
                }
                i9++;
            }
            if (!z) {
                return new RegressionResults(m68184d, new double[][]{m68181a}, true, this.f109794m, i8, this.f109801t, this.f109802u, this.f109795n, this.f109803v, false);
            }
            double[] dArr = new double[m68184d.length];
            int[] iArr4 = new int[m68184d.length];
            for (int i10 = 0; i10 < iArr2.length; i10++) {
                int i11 = 0;
                while (true) {
                    int[] iArr5 = this.f109792k;
                    if (i11 < iArr5.length) {
                        if (iArr5[i11] == iArr2[i10]) {
                            dArr[i10] = m68184d[i11];
                            iArr4[i10] = i11;
                        }
                        i11++;
                    }
                }
            }
            double[] dArr2 = new double[m68181a.length];
            int i12 = 0;
            for (int i13 = 0; i13 < m68184d.length; i13++) {
                int i14 = iArr4[i13];
                int i15 = 0;
                while (i15 <= i13) {
                    int i16 = iArr4[i15];
                    if (i14 > i16) {
                        i = (((i14 + 1) * i14) / 2) + i16;
                    } else {
                        i = ((i16 * (i16 + 1)) / 2) + i14;
                    }
                    dArr2[i12] = m68181a[i];
                    i15++;
                    i12++;
                }
            }
            return new RegressionResults(dArr, new double[][]{dArr2}, true, this.f109794m, i8, this.f109801t, this.f109802u, this.f109795n, this.f109803v, false);
        }
        throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Long.valueOf(this.f109794m), Integer.valueOf(this.f109786e));
    }
}
