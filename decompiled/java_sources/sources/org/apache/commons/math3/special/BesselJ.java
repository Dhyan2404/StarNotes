package org.apache.commons.math3.special;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* loaded from: classes12.dex */
public class BesselJ implements UnivariateFunction {

    /* renamed from: f */
    public static final double f109648f = 0.6366197723675814d;

    /* renamed from: g */
    public static final double f109649g = 6.28125d;

    /* renamed from: h */
    public static final double f109650h = 0.001935307179586477d;

    /* renamed from: i */
    public static final double f109651i = 6.283185307179586d;

    /* renamed from: j */
    public static final double f109652j = 1.0E308d;

    /* renamed from: k */
    public static final double f109653k = 1.0E16d;

    /* renamed from: l */
    public static final double f109654l = 1.0E-4d;

    /* renamed from: m */
    public static final double f109655m = 8.9E-308d;

    /* renamed from: n */
    public static final double f109656n = 0.0d;

    /* renamed from: o */
    public static final double f109657o = 10000.0d;

    /* renamed from: p */
    public static final double[] f109658p = {1.0d, 1.0d, 2.0d, 6.0d, 24.0d, 120.0d, 720.0d, 5040.0d, 40320.0d, 362880.0d, 3628800.0d, 3.99168E7d, 4.790016E8d, 6.2270208E9d, 8.71782912E10d, 1.307674368E12d, 2.0922789888E13d, 3.55687428096E14d, 6.402373705728E15d, 1.21645100408832E17d, 2.43290200817664E18d, 5.109094217170944E19d, 1.1240007277776077E21d, 2.585201673888498E22d, 6.204484017332394E23d};

    /* renamed from: e */
    public final double f109659e;

    /* loaded from: classes12.dex */
    public static class BesselJResult {

        /* renamed from: a */
        public final double[] f109660a;

        /* renamed from: b */
        public final int f109661b;

        public BesselJResult(double[] dArr, int i) {
            this.f109660a = MathArrays.copyOf(dArr, dArr.length);
            this.f109661b = i;
        }

        public double[] getVals() {
            double[] dArr = this.f109660a;
            return MathArrays.copyOf(dArr, dArr.length);
        }

        public int getnVals() {
            return this.f109661b;
        }
    }

    public BesselJ(double d) {
        this.f109659e = d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        if (r24 == 0.0d) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x044c  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0453  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.commons.math3.special.BesselJ.BesselJResult rjBesl(double r52, double r54, int r56) {
        /*
            Method dump skipped, instructions count: 1157
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.special.BesselJ.rjBesl(double, double, int):org.apache.commons.math3.special.BesselJ$BesselJResult");
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d) throws MathIllegalArgumentException, ConvergenceException {
        return value(this.f109659e, d);
    }

    public static double value(double d, double d2) throws MathIllegalArgumentException, ConvergenceException {
        int i = (int) d;
        int i2 = i + 1;
        BesselJResult rjBesl = rjBesl(d2, d - i, i2);
        if (rjBesl.f109661b >= i2) {
            return rjBesl.f109660a[i];
        }
        if (rjBesl.f109661b < 0) {
            throw new MathIllegalArgumentException(LocalizedFormats.BESSEL_FUNCTION_BAD_ARGUMENT, Double.valueOf(d), Double.valueOf(d2));
        }
        if (FastMath.abs(rjBesl.f109660a[rjBesl.f109661b - 1]) < 1.0E-100d) {
            return rjBesl.f109660a[i];
        }
        throw new ConvergenceException(LocalizedFormats.BESSEL_FUNCTION_FAILED_CONVERGENCE, Double.valueOf(d), Double.valueOf(d2));
    }
}
