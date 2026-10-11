package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class Cam16 {

    /* renamed from: k */
    public static final double[][] f30916k = {new double[]{0.401288d, 0.650173d, -0.051461d}, new double[]{-0.250268d, 1.204414d, 0.045854d}, new double[]{-0.002079d, 0.048952d, 0.953127d}};

    /* renamed from: l */
    public static final double[][] f30917l = {new double[]{1.8620678d, -1.0112547d, 0.14918678d}, new double[]{0.38752654d, 0.62144744d, -0.00897398d}, new double[]{-0.0158415d, -0.03412294d, 1.0499644d}};

    /* renamed from: a */
    public final double f30918a;

    /* renamed from: b */
    public final double f30919b;

    /* renamed from: c */
    public final double f30920c;

    /* renamed from: d */
    public final double f30921d;

    /* renamed from: e */
    public final double f30922e;

    /* renamed from: f */
    public final double f30923f;

    /* renamed from: g */
    public final double f30924g;

    /* renamed from: h */
    public final double f30925h;

    /* renamed from: i */
    public final double f30926i;

    /* renamed from: j */
    public final double[] f30927j = {0.0d, 0.0d, 0.0d};

    public Cam16(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        this.f30918a = d;
        this.f30919b = d2;
        this.f30920c = d3;
        this.f30921d = d4;
        this.f30922e = d5;
        this.f30923f = d6;
        this.f30924g = d7;
        this.f30925h = d8;
        this.f30926i = d9;
    }

    /* renamed from: b */
    public static Cam16 m23530b(int i, ViewingConditions viewingConditions) {
        double linearized = ColorUtils.linearized((16711680 & i) >> 16);
        double linearized2 = ColorUtils.linearized((65280 & i) >> 8);
        double linearized3 = ColorUtils.linearized(i & 255);
        return m23533e((0.41233895d * linearized) + (0.35762064d * linearized2) + (0.18051042d * linearized3), (0.2126d * linearized) + (0.7152d * linearized2) + (0.0722d * linearized3), (linearized * 0.01932141d) + (linearized2 * 0.11916382d) + (linearized3 * 0.95034478d), viewingConditions);
    }

    /* renamed from: c */
    public static Cam16 m23531c(double d, double d2, double d3) {
        return m23532d(d, d2, d3, ViewingConditions.DEFAULT);
    }

    /* renamed from: d */
    public static Cam16 m23532d(double d, double d2, double d3, ViewingConditions viewingConditions) {
        double d4 = d / 100.0d;
        double m23915a = (4.0d / viewingConditions.m23915a()) * Math.sqrt(d4) * (viewingConditions.getAw() + 4.0d) * viewingConditions.getFlRoot();
        double flRoot = d2 * viewingConditions.getFlRoot();
        double sqrt = Math.sqrt(((d2 / Math.sqrt(d4)) * viewingConditions.m23915a()) / (viewingConditions.getAw() + 4.0d)) * 50.0d;
        double radians = Math.toRadians(d3);
        double d5 = (1.7000000000000002d * d) / ((0.007d * d) + 1.0d);
        double log1p = 43.859649122807014d * Math.log1p(flRoot * 0.0228d);
        return new Cam16(d3, d2, d, m23915a, flRoot, sqrt, d5, Math.cos(radians) * log1p, Math.sin(radians) * log1p);
    }

    /* renamed from: e */
    public static Cam16 m23533e(double d, double d2, double d3, ViewingConditions viewingConditions) {
        double[][] dArr = f30916k;
        double[] dArr2 = dArr[0];
        double d4 = (dArr2[0] * d) + (dArr2[1] * d2) + (dArr2[2] * d3);
        double[] dArr3 = dArr[1];
        double d5 = (dArr3[0] * d) + (dArr3[1] * d2) + (dArr3[2] * d3);
        double[] dArr4 = dArr[2];
        double d6 = (dArr4[0] * d) + (dArr4[1] * d2) + (dArr4[2] * d3);
        double d7 = viewingConditions.getRgbD()[0] * d4;
        double d8 = viewingConditions.getRgbD()[1] * d5;
        double d9 = viewingConditions.getRgbD()[2] * d6;
        double pow = Math.pow((viewingConditions.m23916b() * Math.abs(d7)) / 100.0d, 0.42d);
        double pow2 = Math.pow((viewingConditions.m23916b() * Math.abs(d8)) / 100.0d, 0.42d);
        double pow3 = Math.pow((viewingConditions.m23916b() * Math.abs(d9)) / 100.0d, 0.42d);
        double signum = ((Math.signum(d7) * 400.0d) * pow) / (pow + 27.13d);
        double signum2 = ((Math.signum(d8) * 400.0d) * pow2) / (pow2 + 27.13d);
        double signum3 = ((Math.signum(d9) * 400.0d) * pow3) / (pow3 + 27.13d);
        double d10 = (((signum * 11.0d) + ((-12.0d) * signum2)) + signum3) / 11.0d;
        double d11 = ((signum + signum2) - (signum3 * 2.0d)) / 9.0d;
        double d12 = signum2 * 20.0d;
        double d13 = (((signum * 20.0d) + d12) + (21.0d * signum3)) / 20.0d;
        double d14 = (((signum * 40.0d) + d12) + signum3) / 20.0d;
        double degrees = Math.toDegrees(Math.atan2(d11, d10));
        if (degrees < 0.0d) {
            degrees += 360.0d;
        } else if (degrees >= 360.0d) {
            degrees -= 360.0d;
        }
        double d15 = degrees;
        double radians = Math.toRadians(d15);
        double pow4 = Math.pow((d14 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.m23915a() * viewingConditions.m23919e()) * 100.0d;
        double d16 = pow4 / 100.0d;
        double m23915a = (4.0d / viewingConditions.m23915a()) * Math.sqrt(d16) * (viewingConditions.getAw() + 4.0d) * viewingConditions.getFlRoot();
        double pow5 = Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d) * Math.pow(((((((Math.cos(Math.toRadians(d15 < 20.14d ? d15 + 360.0d : d15) + 2.0d) + 3.8d) * 0.25d) * 3846.153846153846d) * viewingConditions.m23917c()) * viewingConditions.m23918d()) * Math.hypot(d10, d11)) / (d13 + 0.305d), 0.9d);
        double sqrt = Math.sqrt(d16) * pow5;
        double flRoot = sqrt * viewingConditions.getFlRoot();
        double log1p = Math.log1p(flRoot * 0.0228d) * 43.859649122807014d;
        return new Cam16(d15, sqrt, pow4, m23915a, flRoot, Math.sqrt((pow5 * viewingConditions.m23915a()) / (viewingConditions.getAw() + 4.0d)) * 50.0d, (1.7000000000000002d * pow4) / ((0.007d * pow4) + 1.0d), log1p * Math.cos(radians), log1p * Math.sin(radians));
    }

    public static Cam16 fromInt(int i) {
        return m23530b(i, ViewingConditions.DEFAULT);
    }

    public static Cam16 fromUcs(double d, double d2, double d3) {
        return fromUcsInViewingConditions(d, d2, d3, ViewingConditions.DEFAULT);
    }

    public static Cam16 fromUcsInViewingConditions(double d, double d2, double d3, ViewingConditions viewingConditions) {
        double expm1 = (Math.expm1(Math.hypot(d2, d3) * 0.0228d) / 0.0228d) / viewingConditions.getFlRoot();
        double atan2 = Math.atan2(d3, d2) * 57.29577951308232d;
        if (atan2 < 0.0d) {
            atan2 += 360.0d;
        }
        return m23532d(d / (1.0d - ((d - 100.0d) * 0.007d)), expm1, atan2, viewingConditions);
    }

    /* renamed from: a */
    public double m23534a(Cam16 cam16) {
        double jstar = getJstar() - cam16.getJstar();
        double astar = getAstar() - cam16.getAstar();
        double bstar = getBstar() - cam16.getBstar();
        return Math.pow(Math.sqrt((jstar * jstar) + (astar * astar) + (bstar * bstar)), 0.63d) * 1.41d;
    }

    /* renamed from: f */
    public int m23535f(ViewingConditions viewingConditions) {
        double[] m23536g = m23536g(viewingConditions, this.f30927j);
        return ColorUtils.argbFromXyz(m23536g[0], m23536g[1], m23536g[2]);
    }

    /* renamed from: g */
    public double[] m23536g(ViewingConditions viewingConditions, double[] dArr) {
        double pow = Math.pow(((getChroma() == 0.0d || getJ() == 0.0d) ? 0.0d : getChroma() / Math.sqrt(getJ() / 100.0d)) / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d), 1.1111111111111112d);
        double radians = Math.toRadians(getHue());
        double cos = (Math.cos(2.0d + radians) + 3.8d) * 0.25d;
        double aw = viewingConditions.getAw() * Math.pow(getJ() / 100.0d, (1.0d / viewingConditions.m23915a()) / viewingConditions.m23919e());
        double m23917c = cos * 3846.153846153846d * viewingConditions.m23917c() * viewingConditions.m23918d();
        double nbb = aw / viewingConditions.getNbb();
        double sin = Math.sin(radians);
        double cos2 = Math.cos(radians);
        double d = (((0.305d + nbb) * 23.0d) * pow) / (((m23917c * 23.0d) + ((11.0d * pow) * cos2)) + ((pow * 108.0d) * sin));
        double d2 = cos2 * d;
        double d3 = d * sin;
        double d4 = nbb * 460.0d;
        double d5 = (((451.0d * d2) + d4) + (288.0d * d3)) / 1403.0d;
        double d6 = ((d4 - (891.0d * d2)) - (261.0d * d3)) / 1403.0d;
        double d7 = ((d4 - (d2 * 220.0d)) - (d3 * 6300.0d)) / 1403.0d;
        double signum = Math.signum(d5) * (100.0d / viewingConditions.m23916b()) * Math.pow(Math.max(0.0d, (Math.abs(d5) * 27.13d) / (400.0d - Math.abs(d5))), 2.380952380952381d);
        double signum2 = Math.signum(d6) * (100.0d / viewingConditions.m23916b()) * Math.pow(Math.max(0.0d, (Math.abs(d6) * 27.13d) / (400.0d - Math.abs(d6))), 2.380952380952381d);
        double signum3 = Math.signum(d7) * (100.0d / viewingConditions.m23916b()) * Math.pow(Math.max(0.0d, (Math.abs(d7) * 27.13d) / (400.0d - Math.abs(d7))), 2.380952380952381d);
        double d8 = signum / viewingConditions.getRgbD()[0];
        double d9 = signum2 / viewingConditions.getRgbD()[1];
        double d10 = signum3 / viewingConditions.getRgbD()[2];
        double[][] dArr2 = f30917l;
        double[] dArr3 = dArr2[0];
        double d11 = (dArr3[0] * d8) + (dArr3[1] * d9) + (dArr3[2] * d10);
        double[] dArr4 = dArr2[1];
        double d12 = (dArr4[0] * d8) + (dArr4[1] * d9) + (dArr4[2] * d10);
        double[] dArr5 = dArr2[2];
        double d13 = (d8 * dArr5[0]) + (d9 * dArr5[1]) + (d10 * dArr5[2]);
        if (dArr == null) {
            return new double[]{d11, d12, d13};
        }
        dArr[0] = d11;
        dArr[1] = d12;
        dArr[2] = d13;
        return dArr;
    }

    public double getAstar() {
        return this.f30925h;
    }

    public double getBstar() {
        return this.f30926i;
    }

    public double getChroma() {
        return this.f30919b;
    }

    public double getHue() {
        return this.f30918a;
    }

    public double getJ() {
        return this.f30920c;
    }

    public double getJstar() {
        return this.f30924g;
    }

    public double getM() {
        return this.f30922e;
    }

    public double getQ() {
        return this.f30921d;
    }

    public double getS() {
        return this.f30923f;
    }

    public int toInt() {
        return m23535f(ViewingConditions.DEFAULT);
    }
}
