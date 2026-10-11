package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public class HyperSpline {

    /* renamed from: a */
    public int f2920a;

    /* renamed from: b */
    public Cubic[][] f2921b;

    /* renamed from: c */
    public int f2922c;

    /* renamed from: d */
    public double[] f2923d;

    /* renamed from: e */
    public double f2924e;

    /* renamed from: f */
    public double[][] f2925f;

    /* loaded from: classes3.dex */
    public static class Cubic {

        /* renamed from: a */
        public double f2926a;

        /* renamed from: b */
        public double f2927b;

        /* renamed from: c */
        public double f2928c;

        /* renamed from: d */
        public double f2929d;

        public Cubic(double d, double d2, double d3, double d4) {
            this.f2926a = d;
            this.f2927b = d2;
            this.f2928c = d3;
            this.f2929d = d4;
        }

        public double eval(double d) {
            return (((((this.f2929d * d) + this.f2928c) * d) + this.f2927b) * d) + this.f2926a;
        }

        public double vel(double d) {
            return (((this.f2929d * 3.0d * d) + (this.f2928c * 2.0d)) * d) + this.f2927b;
        }
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    /* renamed from: a */
    public static Cubic[] m1490a(int i, double[] dArr) {
        double[] dArr2 = new double[i];
        double[] dArr3 = new double[i];
        double[] dArr4 = new double[i];
        int i2 = i - 1;
        int i3 = 0;
        dArr2[0] = 0.5d;
        int i4 = 1;
        for (int i5 = 1; i5 < i2; i5++) {
            dArr2[i5] = 1.0d / (4.0d - dArr2[i5 - 1]);
        }
        int i6 = i2 - 1;
        dArr2[i2] = 1.0d / (2.0d - dArr2[i6]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i4 < i2) {
            int i7 = i4 + 1;
            int i8 = i4 - 1;
            dArr3[i4] = (((dArr[i7] - dArr[i8]) * 3.0d) - dArr3[i8]) * dArr2[i4];
            i4 = i7;
        }
        double d = (((dArr[i2] - dArr[i6]) * 3.0d) - dArr3[i6]) * dArr2[i2];
        dArr3[i2] = d;
        dArr4[i2] = d;
        while (i6 >= 0) {
            dArr4[i6] = dArr3[i6] - (dArr2[i6] * dArr4[i6 + 1]);
            i6--;
        }
        Cubic[] cubicArr = new Cubic[i2];
        while (i3 < i2) {
            double d2 = dArr[i3];
            double d3 = dArr4[i3];
            int i9 = i3 + 1;
            double d4 = dArr[i9];
            double d5 = dArr4[i9];
            cubicArr[i3] = new Cubic((float) d2, d3, (((d4 - d2) * 3.0d) - (d3 * 2.0d)) - d5, ((d2 - d4) * 2.0d) + d3 + d5);
            i3 = i9;
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        int i;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (true) {
            i = 0;
            if (d2 >= 1.0d) {
                break;
            }
            double d4 = 0.0d;
            while (i < cubicArr.length) {
                double d5 = dArr[i];
                double eval = cubicArr[i].eval(d2);
                dArr[i] = eval;
                double d6 = d5 - eval;
                d4 += d6 * d6;
                i++;
            }
            if (d2 > 0.0d) {
                d3 += Math.sqrt(d4);
            }
            d2 += 0.1d;
        }
        while (i < cubicArr.length) {
            double d7 = dArr[i];
            double eval2 = cubicArr[i].eval(1.0d);
            dArr[i] = eval2;
            double d8 = d7 - eval2;
            d += d8 * d8;
            i++;
        }
        return d3 + Math.sqrt(d);
    }

    public void getPos(double d, double[] dArr) {
        double d2 = d * this.f2924e;
        int i = 0;
        while (true) {
            double[] dArr2 = this.f2923d;
            if (i >= dArr2.length - 1) {
                break;
            }
            double d3 = dArr2[i];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.f2921b[i2][i].eval(d2 / this.f2923d[i]);
        }
    }

    public void getVelocity(double d, double[] dArr) {
        double d2 = d * this.f2924e;
        int i = 0;
        while (true) {
            double[] dArr2 = this.f2923d;
            if (i >= dArr2.length - 1) {
                break;
            }
            double d3 = dArr2[i];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i++;
        }
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = this.f2921b[i2][i].vel(d2 / this.f2923d[i]);
        }
    }

    public void setup(double[][] dArr) {
        int i;
        int length = dArr[0].length;
        this.f2922c = length;
        int length2 = dArr.length;
        this.f2920a = length2;
        this.f2925f = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.f2921b = new Cubic[this.f2922c];
        for (int i2 = 0; i2 < this.f2922c; i2++) {
            for (int i3 = 0; i3 < this.f2920a; i3++) {
                this.f2925f[i2][i3] = dArr[i3][i2];
            }
        }
        int i4 = 0;
        while (true) {
            i = this.f2922c;
            if (i4 >= i) {
                break;
            }
            Cubic[][] cubicArr = this.f2921b;
            double[] dArr2 = this.f2925f[i4];
            cubicArr[i4] = m1490a(dArr2.length, dArr2);
            i4++;
        }
        this.f2923d = new double[this.f2920a - 1];
        this.f2924e = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i];
        for (int i5 = 0; i5 < this.f2923d.length; i5++) {
            for (int i6 = 0; i6 < this.f2922c; i6++) {
                cubicArr2[i6] = this.f2921b[i6][i5];
            }
            double d = this.f2924e;
            double[] dArr3 = this.f2923d;
            double approxLength = approxLength(cubicArr2);
            dArr3[i5] = approxLength;
            this.f2924e = d + approxLength;
        }
    }

    public HyperSpline() {
    }

    public void getPos(double d, float[] fArr) {
        double d2 = d * this.f2924e;
        int i = 0;
        while (true) {
            double[] dArr = this.f2923d;
            if (i >= dArr.length - 1) {
                break;
            }
            double d3 = dArr[i];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i++;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = (float) this.f2921b[i2][i].eval(d2 / this.f2923d[i]);
        }
    }

    public double getPos(double d, int i) {
        double[] dArr;
        double d2 = d * this.f2924e;
        int i2 = 0;
        while (true) {
            dArr = this.f2923d;
            if (i2 >= dArr.length - 1) {
                break;
            }
            double d3 = dArr[i2];
            if (d3 >= d2) {
                break;
            }
            d2 -= d3;
            i2++;
        }
        return this.f2921b[i][i2].eval(d2 / dArr[i2]);
    }
}
