package org.apache.commons.math3.special;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.ContinuedFraction;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class Gamma {

    /* renamed from: A */
    public static final double f109668A = 2.6923694661863613E-4d;

    /* renamed from: B */
    public static final double f109669B = -0.42278433509846713d;

    /* renamed from: C */
    public static final double f109670C = 0.5772156649015329d;

    /* renamed from: D */
    public static final double f109671D = -0.6558780715202539d;

    /* renamed from: E */
    public static final double f109672E = -0.04200263503409524d;

    /* renamed from: F */
    public static final double f109673F = 0.16653861138229148d;

    /* renamed from: G */
    public static final double f109674G = -0.04219773455554433d;
    public static final double GAMMA = 0.5772156649015329d;

    /* renamed from: H */
    public static final double f109675H = -0.009621971527876973d;

    /* renamed from: I */
    public static final double f109676I = 0.0072189432466631d;

    /* renamed from: J */
    public static final double f109677J = -0.0011651675918590652d;

    /* renamed from: K */
    public static final double f109678K = -2.1524167411495098E-4d;

    /* renamed from: L */
    public static final double f109679L = 1.280502823881162E-4d;
    public static final double LANCZOS_G = 4.7421875d;

    /* renamed from: M */
    public static final double f109680M = -2.013485478078824E-5d;

    /* renamed from: N */
    public static final double f109681N = -1.2504934821426706E-6d;

    /* renamed from: O */
    public static final double f109682O = 1.133027231981696E-6d;

    /* renamed from: P */
    public static final double f109683P = -2.056338416977607E-7d;

    /* renamed from: a */
    public static final double f109684a = 1.0E-14d;

    /* renamed from: b */
    public static final double[] f109685b = {0.9999999999999971d, 57.15623566586292d, -59.59796035547549d, 14.136097974741746d, -0.4919138160976202d, 3.399464998481189E-5d, 4.652362892704858E-5d, -9.837447530487956E-5d, 1.580887032249125E-4d, -2.1026444172410488E-4d, 2.1743961811521265E-4d, -1.643181065367639E-4d, 8.441822398385275E-5d, -2.6190838401581408E-5d, 3.6899182659531625E-6d};

    /* renamed from: c */
    public static final double f109686c = FastMath.log(6.283185307179586d) * 0.5d;

    /* renamed from: d */
    public static final double f109687d = 2.5066282746310007d;

    /* renamed from: e */
    public static final double f109688e = 49.0d;

    /* renamed from: f */
    public static final double f109689f = 1.0E-5d;

    /* renamed from: g */
    public static final double f109690g = 6.116095104481416E-9d;

    /* renamed from: h */
    public static final double f109691h = 6.247308301164655E-9d;

    /* renamed from: i */
    public static final double f109692i = 0.203610414066807d;

    /* renamed from: j */
    public static final double f109693j = 0.026620534842894922d;

    /* renamed from: k */
    public static final double f109694k = 4.939449793824468E-4d;

    /* renamed from: l */
    public static final double f109695l = -8.514194324403149E-6d;

    /* renamed from: m */
    public static final double f109696m = -6.4304548177935305E-6d;

    /* renamed from: n */
    public static final double f109697n = 9.926418406727737E-7d;

    /* renamed from: o */
    public static final double f109698o = -6.077618957228252E-8d;

    /* renamed from: p */
    public static final double f109699p = 1.9575583661463974E-10d;

    /* renamed from: q */
    public static final double f109700q = 6.116095104481416E-9d;

    /* renamed from: r */
    public static final double f109701r = 6.8716741130671986E-9d;

    /* renamed from: s */
    public static final double f109702s = 6.820161668496171E-10d;

    /* renamed from: t */
    public static final double f109703t = 4.686843322948848E-11d;

    /* renamed from: u */
    public static final double f109704u = 1.5728330277104463E-12d;

    /* renamed from: v */
    public static final double f109705v = -1.2494415722763663E-13d;

    /* renamed from: w */
    public static final double f109706w = 4.343529937408594E-15d;

    /* renamed from: x */
    public static final double f109707x = 0.3056961078365221d;

    /* renamed from: y */
    public static final double f109708y = 0.054642130860422966d;

    /* renamed from: z */
    public static final double f109709z = 0.004956830093825887d;

    /* renamed from: org.apache.commons.math3.special.Gamma$a */
    /* loaded from: classes12.dex */
    public static class C19260a extends ContinuedFraction {

        /* renamed from: b */
        public final /* synthetic */ double f109710b;

        public C19260a(double d) {
            this.f109710b = d;
        }

        @Override // org.apache.commons.math3.util.ContinuedFraction
        public double getA(int i, double d) {
            return (((i * 2.0d) + 1.0d) - this.f109710b) + d;
        }

        @Override // org.apache.commons.math3.util.ContinuedFraction
        public double getB(int i, double d) {
            double d2 = i;
            return d2 * (this.f109710b - d2);
        }
    }

    public static double digamma(double d) {
        double digamma;
        double d2;
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return d;
        }
        if (d > 0.0d && d <= 1.0E-5d) {
            digamma = -0.5772156649015329d;
        } else {
            if (d >= 49.0d) {
                double d3 = 1.0d / (d * d);
                digamma = FastMath.log(d) - (0.5d / d);
                d2 = d3 * (((0.008333333333333333d - (d3 / 252.0d)) * d3) + 0.08333333333333333d);
                return digamma - d2;
            }
            digamma = digamma(d + 1.0d);
        }
        d2 = 1.0d / d;
        return digamma - d2;
    }

    public static double gamma(double d) {
        if (d == FastMath.rint(d) && d <= 0.0d) {
            return Double.NaN;
        }
        double abs = FastMath.abs(d);
        if (abs > 20.0d) {
            double d2 = 4.7421875d + abs + 0.5d;
            double lanczos = lanczos(abs) * (2.5066282746310007d / abs) * FastMath.pow(d2, 0.5d + abs) * FastMath.exp(-d2);
            return d > 0.0d ? lanczos : (-3.141592653589793d) / ((d * FastMath.sin(3.141592653589793d * d)) * lanczos);
        }
        if (d >= 1.0d) {
            double d3 = 1.0d;
            while (d > 2.5d) {
                d -= 1.0d;
                d3 *= d;
            }
            return d3 / (invGamma1pm1(d - 1.0d) + 1.0d);
        }
        double d4 = d;
        while (d < -0.5d) {
            d += 1.0d;
            d4 *= d;
        }
        return 1.0d / (d4 * (invGamma1pm1(d) + 1.0d));
    }

    public static double invGamma1pm1(double d) {
        if (d < -0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(-0.5d), true);
        }
        if (d > 1.5d) {
            throw new NumberIsTooLargeException(Double.valueOf(d), Double.valueOf(1.5d), true);
        }
        double d2 = d <= 0.5d ? d : (d - 0.5d) - 0.5d;
        if (d2 < 0.0d) {
            double d3 = ((((((((((((((((((((((((((((((6.247308301164655E-9d * d2) + 6.116095104481416E-9d) / ((((((((((((((((1.9575583661463974E-10d * d2) - 6.077618957228252E-8d) * d2) + 9.926418406727737E-7d) * d2) - 6.4304548177935305E-6d) * d2) - 8.514194324403149E-6d) * d2) + 4.939449793824468E-4d) * d2) + 0.026620534842894922d) * d2) + 0.203610414066807d) * d2) + 1.0d)) * d2) - 2.056338416977607E-7d) * d2) + 1.133027231981696E-6d) * d2) - 1.2504934821426706E-6d) * d2) - 2.013485478078824E-5d) * d2) + 1.280502823881162E-4d) * d2) - 2.1524167411495098E-4d) * d2) - 0.0011651675918590652d) * d2) + 0.0072189432466631d) * d2) - 0.009621971527876973d) * d2) - 0.04219773455554433d) * d2) + 0.16653861138229148d) * d2) - 0.04200263503409524d) * d2) - 0.6558780715202539d) * d2) - 0.42278433509846713d;
            return d > 0.5d ? (d2 * d3) / d : d * (d3 + 0.5d + 0.5d);
        }
        double d4 = ((((((((((((((((((((((((((((((((((((((((4.343529937408594E-15d * d2) - 1.2494415722763663E-13d) * d2) + 1.5728330277104463E-12d) * d2) + 4.686843322948848E-11d) * d2) + 6.820161668496171E-10d) * d2) + 6.8716741130671986E-9d) * d2) + 6.116095104481416E-9d) / ((((((((2.6923694661863613E-4d * d2) + 0.004956830093825887d) * d2) + 0.054642130860422966d) * d2) + 0.3056961078365221d) * d2) + 1.0d)) * d2) - 2.056338416977607E-7d) * d2) + 1.133027231981696E-6d) * d2) - 1.2504934821426706E-6d) * d2) - 2.013485478078824E-5d) * d2) + 1.280502823881162E-4d) * d2) - 2.1524167411495098E-4d) * d2) - 0.0011651675918590652d) * d2) + 0.0072189432466631d) * d2) - 0.009621971527876973d) * d2) - 0.04219773455554433d) * d2) + 0.16653861138229148d) * d2) - 0.04200263503409524d) * d2) - 0.6558780715202539d) * d2) + 0.5772156649015329d;
        return d > 0.5d ? (d2 / d) * ((d4 - 0.5d) - 0.5d) : d * d4;
    }

    public static double lanczos(double d) {
        double d2 = 0.0d;
        for (int length = f109685b.length - 1; length > 0; length--) {
            d2 += f109685b[length] / (length + d);
        }
        return d2 + f109685b[0];
    }

    public static double logGamma(double d) {
        if (Double.isNaN(d) || d <= 0.0d) {
            return Double.NaN;
        }
        if (d < 0.5d) {
            return logGamma1p(d) - FastMath.log(d);
        }
        if (d <= 2.5d) {
            return logGamma1p((d - 0.5d) - 0.5d);
        }
        if (d > 8.0d) {
            double d2 = 4.7421875d + d + 0.5d;
            return (((0.5d + d) * FastMath.log(d2)) - d2) + f109686c + FastMath.log(lanczos(d) / d);
        }
        double d3 = 1.0d;
        for (int i = 1; i <= ((int) FastMath.floor(d - 1.5d)); i++) {
            d3 *= d - i;
        }
        return logGamma1p(d - (r0 + 1)) + FastMath.log(d3);
    }

    public static double logGamma1p(double d) throws NumberIsTooSmallException, NumberIsTooLargeException {
        if (d < -0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(-0.5d), true);
        }
        if (d <= 1.5d) {
            return -FastMath.log1p(invGamma1pm1(d));
        }
        throw new NumberIsTooLargeException(Double.valueOf(d), Double.valueOf(1.5d), true);
    }

    public static double regularizedGammaP(double d, double d2) {
        return regularizedGammaP(d, d2, 1.0E-14d, Integer.MAX_VALUE);
    }

    public static double regularizedGammaQ(double d, double d2) {
        return regularizedGammaQ(d, d2, 1.0E-14d, Integer.MAX_VALUE);
    }

    public static double trigamma(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            return d;
        }
        if (d > 0.0d && d <= 1.0E-5d) {
            return 1.0d / (d * d);
        }
        if (d < 49.0d) {
            return trigamma(d + 1.0d) + (1.0d / (d * d));
        }
        double d2 = 1.0d / (d * d);
        return (1.0d / d) + (d2 / 2.0d) + ((d2 / d) * (0.16666666666666666d - (d2 * ((d2 / 42.0d) + 0.03333333333333333d))));
    }

    public static double regularizedGammaP(double d, double d2, double d3, int i) {
        if (!Double.isNaN(d) && !Double.isNaN(d2)) {
            double d4 = 0.0d;
            if (d > 0.0d && d2 >= 0.0d) {
                if (d2 == 0.0d) {
                    return 0.0d;
                }
                if (d2 >= d + 1.0d) {
                    return 1.0d - regularizedGammaQ(d, d2, d3, i);
                }
                double d5 = 1.0d / d;
                double d6 = d5;
                while (FastMath.abs(d5 / d6) > d3 && d4 < i && d6 < Double.POSITIVE_INFINITY) {
                    d4 += 1.0d;
                    d5 *= d2 / (d + d4);
                    d6 += d5;
                }
                if (d4 < i) {
                    if (Double.isInfinite(d6)) {
                        return 1.0d;
                    }
                    return FastMath.exp(((-d2) + (FastMath.log(d2) * d)) - logGamma(d)) * d6;
                }
                throw new MaxCountExceededException(Integer.valueOf(i));
            }
        }
        return Double.NaN;
    }

    public static double regularizedGammaQ(double d, double d2, double d3, int i) {
        if (Double.isNaN(d) || Double.isNaN(d2) || d <= 0.0d || d2 < 0.0d) {
            return Double.NaN;
        }
        if (d2 == 0.0d) {
            return 1.0d;
        }
        if (d2 < d + 1.0d) {
            return 1.0d - regularizedGammaP(d, d2, d3, i);
        }
        return (1.0d / new C19260a(d).evaluate(d2, d3, i)) * FastMath.exp(((-d2) + (FastMath.log(d2) * d)) - logGamma(d));
    }
}
