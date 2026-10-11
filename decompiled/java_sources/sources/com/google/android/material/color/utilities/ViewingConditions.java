package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class ViewingConditions {
    public static final ViewingConditions DEFAULT = defaultWithBackgroundLstar(50.0d);

    /* renamed from: a */
    public final double f31035a;

    /* renamed from: b */
    public final double f31036b;

    /* renamed from: c */
    public final double f31037c;

    /* renamed from: d */
    public final double f31038d;

    /* renamed from: e */
    public final double f31039e;

    /* renamed from: f */
    public final double f31040f;

    /* renamed from: g */
    public final double[] f31041g;

    /* renamed from: h */
    public final double f31042h;

    /* renamed from: i */
    public final double f31043i;

    /* renamed from: j */
    public final double f31044j;

    public ViewingConditions(double d, double d2, double d3, double d4, double d5, double d6, double[] dArr, double d7, double d8, double d9) {
        this.f31040f = d;
        this.f31035a = d2;
        this.f31036b = d3;
        this.f31037c = d4;
        this.f31038d = d5;
        this.f31039e = d6;
        this.f31041g = dArr;
        this.f31042h = d7;
        this.f31043i = d8;
        this.f31044j = d9;
    }

    public static ViewingConditions defaultWithBackgroundLstar(double d) {
        return make(ColorUtils.whitePointD65(), (ColorUtils.yFromLstar(50.0d) * 63.66197723675813d) / 100.0d, d, 2.0d, false);
    }

    public static ViewingConditions make(double[] dArr, double d, double d2, double d3, boolean z) {
        double max = Math.max(0.1d, d2);
        double[][] dArr2 = Cam16.f30916k;
        double d4 = dArr[0];
        double[] dArr3 = dArr2[0];
        double d5 = dArr3[0] * d4;
        double d6 = dArr[1];
        double d7 = d5 + (dArr3[1] * d6);
        double d8 = dArr[2];
        double d9 = d7 + (dArr3[2] * d8);
        double[] dArr4 = dArr2[1];
        double d10 = (dArr4[0] * d4) + (dArr4[1] * d6) + (dArr4[2] * d8);
        double[] dArr5 = dArr2[2];
        double d11 = (d4 * dArr5[0]) + (d6 * dArr5[1]) + (d8 * dArr5[2]);
        double d12 = (d3 / 10.0d) + 0.8d;
        double lerp = d12 >= 0.9d ? MathUtils.lerp(0.59d, 0.69d, (d12 - 0.9d) * 10.0d) : MathUtils.lerp(0.525d, 0.59d, (d12 - 0.8d) * 10.0d);
        double clampDouble = MathUtils.clampDouble(0.0d, 1.0d, z ? 1.0d : (1.0d - (Math.exp(((-d) - 42.0d) / 92.0d) * 0.2777777777777778d)) * d12);
        double[] dArr6 = {(((100.0d / d9) * clampDouble) + 1.0d) - clampDouble, (((100.0d / d10) * clampDouble) + 1.0d) - clampDouble, (((100.0d / d11) * clampDouble) + 1.0d) - clampDouble};
        double d13 = 5.0d * d;
        double d14 = 1.0d / (d13 + 1.0d);
        double d15 = d14 * d14 * d14 * d14;
        double d16 = 1.0d - d15;
        double cbrt = (d15 * d) + (0.1d * d16 * d16 * Math.cbrt(d13));
        double yFromLstar = ColorUtils.yFromLstar(max) / dArr[1];
        double sqrt = Math.sqrt(yFromLstar) + 1.48d;
        double pow = 0.725d / Math.pow(yFromLstar, 0.2d);
        double pow2 = Math.pow(((dArr6[2] * cbrt) * d11) / 100.0d, 0.42d);
        double[] dArr7 = {Math.pow(((dArr6[0] * cbrt) * d9) / 100.0d, 0.42d), Math.pow(((dArr6[1] * cbrt) * d10) / 100.0d, 0.42d), pow2};
        double d17 = dArr7[0];
        double d18 = dArr7[1];
        return new ViewingConditions(yFromLstar, ((((d17 * 400.0d) / (d17 + 27.13d)) * 2.0d) + ((d18 * 400.0d) / (d18 + 27.13d)) + (((400.0d * pow2) / (pow2 + 27.13d)) * 0.05d)) * pow, pow, pow, lerp, d12, dArr6, cbrt, Math.pow(cbrt, 0.25d), sqrt);
    }

    /* renamed from: a */
    public double m23915a() {
        return this.f31038d;
    }

    /* renamed from: b */
    public double m23916b() {
        return this.f31042h;
    }

    /* renamed from: c */
    public double m23917c() {
        return this.f31039e;
    }

    /* renamed from: d */
    public double m23918d() {
        return this.f31037c;
    }

    /* renamed from: e */
    public double m23919e() {
        return this.f31044j;
    }

    public double getAw() {
        return this.f31035a;
    }

    public double getFlRoot() {
        return this.f31043i;
    }

    public double getN() {
        return this.f31040f;
    }

    public double getNbb() {
        return this.f31036b;
    }

    public double[] getRgbD() {
        return this.f31041g;
    }
}
