package org.apache.commons.math3.special;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.ContinuedFraction;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Beta {

    /* renamed from: a */
    public static final double f109662a = 1.0E-14d;

    /* renamed from: b */
    public static final double f109663b = 0.9189385332046727d;

    /* renamed from: c */
    public static final double[] f109664c = {0.08333333333333333d, -2.777777777777778E-5d, 7.936507936507937E-8d, -5.952380952380953E-10d, 8.417508417508329E-12d, -1.917526917518546E-13d, 6.410256405103255E-15d, -2.955065141253382E-16d, 1.7964371635940225E-17d, -1.3922896466162779E-18d, 1.338028550140209E-19d, -1.542460098679661E-20d, 1.9770199298095743E-21d, -2.3406566479399704E-22d, 1.713480149663986E-23d};

    /* renamed from: org.apache.commons.math3.special.Beta$a */
    /* loaded from: classes12.dex */
    public static class C19259a extends ContinuedFraction {

        /* renamed from: b */
        public final /* synthetic */ double f109665b;

        /* renamed from: c */
        public final /* synthetic */ double f109666c;

        public C19259a(double d, double d2) {
            this.f109665b = d;
            this.f109666c = d2;
        }

        @Override // org.apache.commons.math3.util.ContinuedFraction
        public double getA(int i, double d) {
            return 1.0d;
        }

        @Override // org.apache.commons.math3.util.ContinuedFraction
        public double getB(int i, double d) {
            if (i % 2 == 0) {
                double d2 = i / 2.0d;
                double d3 = (this.f109665b - d2) * d2 * d;
                double d4 = this.f109666c;
                double d5 = d2 * 2.0d;
                return d3 / (((d4 + d5) - 1.0d) * (d4 + d5));
            }
            double d6 = (i - 1.0d) / 2.0d;
            double d7 = this.f109666c;
            double d8 = -((d7 + d6) * (this.f109665b + d7 + d6) * d);
            double d9 = d6 * 2.0d;
            return d8 / ((d7 + d9) * ((d7 + d9) + 1.0d));
        }
    }

    /* renamed from: a */
    public static double m68098a(double d, double d2) throws OutOfRangeException, NumberIsTooSmallException {
        if (d < 0.0d || d > d2) {
            throw new OutOfRangeException(Double.valueOf(d), 0, Double.valueOf(d2));
        }
        if (d2 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), 10, true);
        }
        double d3 = d / d2;
        double d4 = d3 + 1.0d;
        double d5 = d3 / d4;
        double d6 = 1.0d / d4;
        double d7 = d6 * d6;
        int length = f109664c.length;
        double[] dArr = new double[length];
        dArr[0] = 1.0d;
        for (int i = 1; i < length; i++) {
            dArr[i] = (dArr[i - 1] * d7) + d6 + 1.0d;
        }
        double d8 = 10.0d / d2;
        double d9 = d8 * d8;
        double[] dArr2 = f109664c;
        double d10 = dArr2[dArr2.length - 1] * dArr[length - 1];
        for (int length2 = dArr2.length - 2; length2 >= 0; length2--) {
            d10 = (d10 * d9) + (f109664c[length2] * dArr[length2]);
        }
        return (d10 * d5) / d2;
    }

    /* renamed from: b */
    public static double m68099b(double d, double d2) throws NumberIsTooSmallException {
        double d3;
        double m68098a;
        if (d < 0.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(0.0d), true);
        }
        if (d2 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(10.0d), true);
        }
        if (d <= d2) {
            d3 = (d - 0.5d) + d2;
            m68098a = m68098a(d, d2);
        } else {
            d3 = (d2 - 0.5d) + d;
            m68098a = m68098a(d2, d);
        }
        double log1p = d3 * FastMath.log1p(d / d2);
        double log = d * (FastMath.log(d2) - 1.0d);
        return log1p <= log ? (m68098a - log1p) - log : (m68098a - log) - log1p;
    }

    /* renamed from: c */
    public static double m68100c(double d, double d2) throws OutOfRangeException {
        double logGamma1p;
        double log;
        Double valueOf = Double.valueOf(1.0d);
        Double valueOf2 = Double.valueOf(2.0d);
        if (d < 1.0d || d > 2.0d) {
            throw new OutOfRangeException(Double.valueOf(d), valueOf, valueOf2);
        }
        if (d2 < 1.0d || d2 > 2.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), valueOf, valueOf2);
        }
        double d3 = (d - 1.0d) + (d2 - 1.0d);
        if (d3 <= 0.5d) {
            return Gamma.logGamma1p(d3 + 1.0d);
        }
        if (d3 <= 1.5d) {
            logGamma1p = Gamma.logGamma1p(d3);
            log = FastMath.log1p(d3);
        } else {
            logGamma1p = Gamma.logGamma1p(d3 - 1.0d);
            log = FastMath.log(d3 * (1.0d + d3));
        }
        return logGamma1p + log;
    }

    /* renamed from: d */
    public static double m68101d(double d, double d2) {
        Double valueOf = Double.valueOf(10.0d);
        if (d < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d), valueOf, true);
        }
        if (d2 < 10.0d) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), valueOf, true);
        }
        double min = FastMath.min(d, d2);
        double max = FastMath.max(d, d2);
        double d3 = 10.0d / min;
        double d4 = d3 * d3;
        double[] dArr = f109664c;
        double d5 = dArr[dArr.length - 1];
        for (int length = dArr.length - 2; length >= 0; length--) {
            d5 = (d5 * d4) + f109664c[length];
        }
        return (d5 / min) + m68098a(min, max);
    }

    @Deprecated
    public static double logBeta(double d, double d2, double d3, int i) {
        return logBeta(d, d2);
    }

    public static double regularizedBeta(double d, double d2, double d3) {
        return regularizedBeta(d, d2, d3, 1.0E-14d, Integer.MAX_VALUE);
    }

    public static double logBeta(double d, double d2) {
        if (Double.isNaN(d) || Double.isNaN(d2) || d <= 0.0d || d2 <= 0.0d) {
            return Double.NaN;
        }
        double min = FastMath.min(d, d2);
        double max = FastMath.max(d, d2);
        if (min >= 10.0d) {
            double m68101d = m68101d(min, max);
            double d3 = min / max;
            double log = (-(min - 0.5d)) * FastMath.log(d3 / (1.0d + d3));
            double log1p = FastMath.log1p(d3) * max;
            if (log <= log1p) {
                return ((((FastMath.log(max) * (-0.5d)) + 0.9189385332046727d) + m68101d) - log) - log1p;
            }
            return ((((FastMath.log(max) * (-0.5d)) + 0.9189385332046727d) + m68101d) - log1p) - log;
        }
        if (min <= 2.0d) {
            if (min < 1.0d) {
                if (max >= 10.0d) {
                    return Gamma.logGamma(min) + m68099b(min, max);
                }
                return FastMath.log((Gamma.gamma(min) * Gamma.gamma(max)) / Gamma.gamma(min + max));
            }
            if (max <= 2.0d) {
                return (Gamma.logGamma(min) + Gamma.logGamma(max)) - m68100c(min, max);
            }
            if (max < 10.0d) {
                double d4 = 1.0d;
                while (max > 2.0d) {
                    max -= 1.0d;
                    d4 *= max / (min + max);
                }
                return FastMath.log(d4) + Gamma.logGamma(min) + (Gamma.logGamma(max) - m68100c(min, max));
            }
            return Gamma.logGamma(min) + m68099b(min, max);
        }
        if (max > 1000.0d) {
            int floor = (int) FastMath.floor(min - 1.0d);
            double d5 = 1.0d;
            for (int i = 0; i < floor; i++) {
                min -= 1.0d;
                d5 *= min / ((min / max) + 1.0d);
            }
            return (FastMath.log(d5) - (floor * FastMath.log(max))) + Gamma.logGamma(min) + m68099b(min, max);
        }
        double d6 = 1.0d;
        while (min > 2.0d) {
            min -= 1.0d;
            double d7 = min / max;
            d6 *= d7 / (d7 + 1.0d);
        }
        if (max < 10.0d) {
            double d8 = 1.0d;
            while (max > 2.0d) {
                max -= 1.0d;
                d8 *= max / (min + max);
            }
            return FastMath.log(d6) + FastMath.log(d8) + Gamma.logGamma(min) + (Gamma.logGamma(max) - m68100c(min, max));
        }
        return FastMath.log(d6) + Gamma.logGamma(min) + m68099b(min, max);
    }

    public static double regularizedBeta(double d, double d2, double d3, double d4) {
        return regularizedBeta(d, d2, d3, d4, Integer.MAX_VALUE);
    }

    public static double regularizedBeta(double d, double d2, double d3, int i) {
        return regularizedBeta(d, d2, d3, 1.0E-14d, i);
    }

    public static double regularizedBeta(double d, double d2, double d3, double d4, int i) {
        if (Double.isNaN(d) || Double.isNaN(d2) || Double.isNaN(d3) || d < 0.0d || d > 1.0d || d2 <= 0.0d || d3 <= 0.0d) {
            return Double.NaN;
        }
        double d5 = 2.0d + d3 + d2;
        if (d > (d2 + 1.0d) / d5) {
            double d6 = 1.0d - d;
            if (d6 <= (d3 + 1.0d) / d5) {
                return 1.0d - regularizedBeta(d6, d3, d2, d4, i);
            }
        }
        return (FastMath.exp((((FastMath.log(d) * d2) + (FastMath.log1p(-d) * d3)) - FastMath.log(d2)) - logBeta(d2, d3)) * 1.0d) / new C19259a(d3, d2).evaluate(d, d4, i);
    }
}
