package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class UnivariateSolverUtils {
    public static double[] bracket(UnivariateFunction univariateFunction, double d, double d2, double d3) throws NullArgumentException, NotStrictlyPositiveException, NoBracketingException {
        return bracket(univariateFunction, d, d2, d3, 1.0d, 1.0d, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r23 >= 0.0d) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        r12 = false;
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
    
        if (r23 <= 0.0d) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double forceSide(int r29, org.apache.commons.math3.analysis.UnivariateFunction r30, org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver<org.apache.commons.math3.analysis.UnivariateFunction> r31, double r32, double r34, double r36, org.apache.commons.math3.analysis.solvers.AllowedSolution r38) throws org.apache.commons.math3.exception.NoBracketingException {
        /*
            r2 = r30
            r0 = r34
            r3 = r36
            org.apache.commons.math3.analysis.solvers.AllowedSolution r5 = org.apache.commons.math3.analysis.solvers.AllowedSolution.ANY_SIDE
            r9 = r38
            if (r9 != r5) goto Ld
            return r32
        Ld:
            double r5 = r31.getAbsoluteAccuracy()
            double r7 = r31.getRelativeAccuracy()
            double r7 = r7 * r32
            double r7 = org.apache.commons.math3.util.FastMath.abs(r7)
            double r5 = org.apache.commons.math3.util.FastMath.max(r5, r7)
            double r7 = r32 - r5
            double r7 = org.apache.commons.math3.util.FastMath.max(r0, r7)
            double r10 = r2.value(r7)
            double r12 = r32 + r5
            double r12 = org.apache.commons.math3.util.FastMath.min(r3, r12)
            double r14 = r2.value(r12)
            int r16 = r29 + (-2)
            r19 = r7
            r23 = r10
            r21 = r12
            r25 = r14
        L3d:
            if (r16 <= 0) goto L9f
            r7 = 0
            int r10 = (r23 > r7 ? 1 : (r23 == r7 ? 0 : -1))
            if (r10 < 0) goto L49
            int r11 = (r25 > r7 ? 1 : (r25 == r7 ? 0 : -1))
            if (r11 <= 0) goto L51
        L49:
            int r11 = (r23 > r7 ? 1 : (r23 == r7 ? 0 : -1))
            if (r11 > 0) goto L64
            int r7 = (r25 > r7 ? 1 : (r25 == r7 ? 0 : -1))
            if (r7 < 0) goto L64
        L51:
            r0 = r31
            r1 = r16
            r2 = r30
            r3 = r19
            r5 = r21
            r7 = r32
            r9 = r38
            double r0 = r0.solve(r1, r2, r3, r5, r7, r9)
            return r0
        L64:
            int r7 = (r23 > r25 ? 1 : (r23 == r25 ? 0 : -1))
            r8 = 0
            r12 = 1
            if (r7 >= 0) goto L72
            if (r10 < 0) goto L7a
        L6c:
            r28 = r12
            r12 = r8
            r8 = r28
            goto L7a
        L72:
            int r7 = (r23 > r25 ? 1 : (r23 == r25 ? 0 : -1))
            if (r7 <= 0) goto L79
            if (r11 > 0) goto L7a
            goto L6c
        L79:
            r8 = r12
        L7a:
            if (r8 == 0) goto L8c
            double r7 = r19 - r5
            double r7 = org.apache.commons.math3.util.FastMath.max(r0, r7)
            double r10 = r2.value(r7)
            int r16 = r16 + (-1)
            r19 = r7
            r23 = r10
        L8c:
            if (r12 == 0) goto L3d
            double r7 = r21 + r5
            double r7 = org.apache.commons.math3.util.FastMath.min(r3, r7)
            double r10 = r2.value(r7)
            int r16 = r16 + (-1)
            r21 = r7
            r25 = r10
            goto L3d
        L9f:
            org.apache.commons.math3.exception.NoBracketingException r2 = new org.apache.commons.math3.exception.NoBracketingException
            org.apache.commons.math3.exception.util.LocalizedFormats r18 = org.apache.commons.math3.exception.util.LocalizedFormats.FAILED_BRACKETING
            int r5 = r29 - r16
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Integer r6 = java.lang.Integer.valueOf(r29)
            java.lang.Double r7 = java.lang.Double.valueOf(r32)
            java.lang.Double r0 = java.lang.Double.valueOf(r34)
            java.lang.Double r1 = java.lang.Double.valueOf(r36)
            java.lang.Object[] r27 = new java.lang.Object[]{r5, r6, r7, r0, r1}
            r17 = r2
            r17.<init>(r18, r19, r21, r23, r25, r27)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.analysis.solvers.UnivariateSolverUtils.forceSide(int, org.apache.commons.math3.analysis.UnivariateFunction, org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver, double, double, double, org.apache.commons.math3.analysis.solvers.AllowedSolution):double");
    }

    public static boolean isBracketing(UnivariateFunction univariateFunction, double d, double d2) throws NullArgumentException {
        if (univariateFunction == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        double value = univariateFunction.value(d);
        double value2 = univariateFunction.value(d2);
        return (value >= 0.0d && value2 <= 0.0d) || (value <= 0.0d && value2 >= 0.0d);
    }

    public static boolean isSequence(double d, double d2, double d3) {
        return d < d2 && d2 < d3;
    }

    public static double midpoint(double d, double d2) {
        return (d + d2) * 0.5d;
    }

    public static double solve(UnivariateFunction univariateFunction, double d, double d2) throws NullArgumentException, NoBracketingException {
        if (univariateFunction != null) {
            return new BrentSolver().solve(Integer.MAX_VALUE, univariateFunction, d, d2);
        }
        throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
    }

    public static void verifyBracketing(UnivariateFunction univariateFunction, double d, double d2) throws NullArgumentException, NoBracketingException {
        if (univariateFunction == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        verifyInterval(d, d2);
        if (!isBracketing(univariateFunction, d, d2)) {
            throw new NoBracketingException(d, d2, univariateFunction.value(d), univariateFunction.value(d2));
        }
    }

    public static void verifyInterval(double d, double d2) throws NumberIsTooLargeException {
        if (d >= d2) {
            throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d), Double.valueOf(d2), false);
        }
    }

    public static void verifySequence(double d, double d2, double d3) throws NumberIsTooLargeException {
        verifyInterval(d, d2);
        verifyInterval(d2, d3);
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d, double d2, double d3, int i) throws NullArgumentException, NotStrictlyPositiveException, NoBracketingException {
        return bracket(univariateFunction, d, d2, d3, 1.0d, 1.0d, i);
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d, double d2, double d3, double d4, double d5, int i) throws NoBracketingException {
        long j;
        UnivariateFunction univariateFunction2 = univariateFunction;
        double d6 = d2;
        if (univariateFunction2 == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        if (d4 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d4));
        }
        if (i > 0) {
            double d7 = d;
            verifySequence(d2, d7, d3);
            double d8 = Double.NaN;
            double d9 = d7;
            double d10 = Double.NaN;
            double d11 = 0.0d;
            int i2 = 0;
            while (i2 < i && (d7 > d6 || d9 < d3)) {
                d11 = (d11 * d5) + d4;
                double max = FastMath.max(d - d11, d6);
                double min = FastMath.min(d + d11, d3);
                double value = univariateFunction2.value(max);
                double value2 = univariateFunction2.value(min);
                if (i2 == 0) {
                    j = 0;
                    if (value * value2 <= 0.0d) {
                        return new double[]{max, min};
                    }
                } else {
                    j = 0;
                    if (d8 * value <= 0.0d) {
                        return new double[]{max, d7};
                    }
                    if (d10 * value2 <= 0.0d) {
                        return new double[]{d9, min};
                    }
                }
                i2++;
                univariateFunction2 = univariateFunction;
                d9 = min;
                d7 = max;
                d8 = value;
                d10 = value2;
                d6 = d2;
            }
            throw new NoBracketingException(d7, d9, d8, d10);
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.INVALID_MAX_ITERATIONS, Integer.valueOf(i));
    }

    public static double solve(UnivariateFunction univariateFunction, double d, double d2, double d3) throws NullArgumentException, NoBracketingException {
        if (univariateFunction != null) {
            return new BrentSolver(d3).solve(Integer.MAX_VALUE, univariateFunction, d, d2);
        }
        throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
    }
}
