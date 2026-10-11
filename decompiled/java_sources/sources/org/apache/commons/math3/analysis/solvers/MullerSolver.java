package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class MullerSolver extends AbstractUnivariateSolver {

    /* renamed from: k */
    public static final double f107986k = 1.0E-6d;

    public MullerSolver() {
        this(1.0E-6d);
    }

    /* renamed from: a */
    public final double m67535a(double d, double d2, double d3, double d4) throws TooManyEvaluationsException {
        double sqrt;
        long j;
        double d5;
        double relativeAccuracy = getRelativeAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double d6 = (d + d2) * 0.5d;
        double d7 = d3;
        double d8 = d4;
        double d9 = d6;
        double computeObjectiveValue = computeObjectiveValue(d6);
        double d10 = Double.POSITIVE_INFINITY;
        double d11 = d;
        double d12 = d2;
        while (true) {
            double d13 = d9 - d11;
            double d14 = (computeObjectiveValue - d7) / d13;
            double d15 = d12 - d9;
            double d16 = d12 - d11;
            double d17 = (((d8 - computeObjectiveValue) / d15) - d14) / d16;
            double d18 = d14 + (d13 * d17);
            double d19 = (d18 * d18) - ((4.0d * computeObjectiveValue) * d17);
            double d20 = (-2.0d) * computeObjectiveValue;
            double sqrt2 = d9 + (d20 / (d18 + FastMath.sqrt(d19)));
            sqrt = isSequence(d11, sqrt2, d12) ? sqrt2 : d9 + (d20 / (d18 - FastMath.sqrt(d19)));
            double computeObjectiveValue2 = computeObjectiveValue(sqrt);
            if (FastMath.abs(sqrt - d10) <= FastMath.max(relativeAccuracy * FastMath.abs(sqrt), absoluteAccuracy) || FastMath.abs(computeObjectiveValue2) <= functionValueAccuracy) {
                break;
            }
            if ((sqrt < d9 && d13 > d16 * 0.95d) || (sqrt > d9 && d15 > d16 * 0.95d) || sqrt == d9) {
                j = 4602678819172646912L;
                double d21 = (d11 + d12) * 0.5d;
                double computeObjectiveValue3 = computeObjectiveValue(d21);
                if (FastMath.signum(d7) + FastMath.signum(computeObjectiveValue3) == 0.0d) {
                    d12 = d21;
                    d8 = computeObjectiveValue3;
                } else {
                    d11 = d21;
                    d7 = computeObjectiveValue3;
                }
                d5 = (d11 + d12) * 0.5d;
                computeObjectiveValue = computeObjectiveValue(d5);
                d10 = Double.POSITIVE_INFINITY;
            } else {
                if (sqrt >= d9) {
                    d11 = d9;
                }
                if (sqrt >= d9) {
                    d7 = computeObjectiveValue;
                }
                if (sqrt <= d9) {
                    d12 = d9;
                }
                if (sqrt <= d9) {
                    d8 = computeObjectiveValue;
                }
                d5 = sqrt;
                d10 = d5;
                computeObjectiveValue = computeObjectiveValue2;
                j = 4602678819172646912L;
            }
            d9 = d5;
        }
        return sqrt;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        double functionValueAccuracy = getFunctionValueAccuracy();
        verifySequence(min, startValue, max);
        double computeObjectiveValue = computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue) < functionValueAccuracy) {
            return min;
        }
        double computeObjectiveValue2 = computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue2) < functionValueAccuracy) {
            return max;
        }
        double computeObjectiveValue3 = computeObjectiveValue(startValue);
        if (FastMath.abs(computeObjectiveValue3) < functionValueAccuracy) {
            return startValue;
        }
        verifyBracketing(min, max);
        return isBracketing(min, startValue) ? m67535a(min, startValue, computeObjectiveValue, computeObjectiveValue3) : m67535a(startValue, max, computeObjectiveValue3, computeObjectiveValue2);
    }

    public MullerSolver(double d) {
        super(d);
    }

    public MullerSolver(double d, double d2) {
        super(d, d2);
    }
}
