package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class MullerSolver2 extends AbstractUnivariateSolver {

    /* renamed from: k */
    public static final double f107987k = 1.0E-6d;

    public MullerSolver2() {
        this(1.0E-6d);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public double doSolve() throws TooManyEvaluationsException, NumberIsTooLargeException, NoBracketingException {
        double sqrt;
        double random;
        double min = getMin();
        double max = getMax();
        verifyInterval(min, max);
        double relativeAccuracy = getRelativeAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double functionValueAccuracy = getFunctionValueAccuracy();
        double computeObjectiveValue = computeObjectiveValue(min);
        if (FastMath.abs(computeObjectiveValue) < functionValueAccuracy) {
            return min;
        }
        double computeObjectiveValue2 = computeObjectiveValue(max);
        if (FastMath.abs(computeObjectiveValue2) < functionValueAccuracy) {
            return max;
        }
        if (computeObjectiveValue * computeObjectiveValue2 > 0.0d) {
            throw new NoBracketingException(min, max, computeObjectiveValue, computeObjectiveValue2);
        }
        double d = (min + max) * 0.5d;
        double d2 = min;
        double d3 = max;
        double d4 = Double.POSITIVE_INFINITY;
        double d5 = computeObjectiveValue2;
        double computeObjectiveValue3 = computeObjectiveValue(d);
        double d6 = d;
        double d7 = computeObjectiveValue;
        while (true) {
            double d8 = d6 - d3;
            double d9 = d8 / (d3 - d2);
            double d10 = d9 + 1.0d;
            double d11 = ((computeObjectiveValue3 - (d10 * d5)) + (d9 * d7)) * d9;
            double d12 = ((((d9 * 2.0d) + 1.0d) * computeObjectiveValue3) - ((d10 * d10) * d5)) + (d9 * d9 * d7);
            double d13 = d10 * computeObjectiveValue3;
            double d14 = d12 * d12;
            double d15 = d14 - ((d11 * 4.0d) * d13);
            if (d15 >= 0.0d) {
                sqrt = d12 + FastMath.sqrt(d15);
                double sqrt2 = d12 - FastMath.sqrt(d15);
                if (FastMath.abs(sqrt) <= FastMath.abs(sqrt2)) {
                    sqrt = sqrt2;
                }
            } else {
                sqrt = FastMath.sqrt(d14 - d15);
            }
            if (sqrt != 0.0d) {
                random = d6 - (((d13 * 2.0d) * d8) / sqrt);
                while (true) {
                    if (random != d3 && random != d6) {
                        break;
                    }
                    random += absoluteAccuracy;
                }
            } else {
                random = (FastMath.random() * (max - min)) + min;
                d4 = Double.POSITIVE_INFINITY;
            }
            double computeObjectiveValue4 = computeObjectiveValue(random);
            double d16 = d5;
            if (FastMath.abs(random - d4) <= FastMath.max(relativeAccuracy * FastMath.abs(random), absoluteAccuracy) || FastMath.abs(computeObjectiveValue4) <= functionValueAccuracy) {
                break;
            }
            d4 = random;
            d5 = computeObjectiveValue3;
            computeObjectiveValue3 = computeObjectiveValue4;
            d2 = d3;
            d7 = d16;
            d3 = d6;
            d6 = d4;
        }
        return random;
    }

    public MullerSolver2(double d) {
        super(d);
    }

    public MullerSolver2(double d, double d2) {
        super(d, d2);
    }
}
