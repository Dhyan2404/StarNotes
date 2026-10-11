package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class SimpsonIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int SIMPSON_MAX_ITERATIONS_COUNT = 64;

    public SimpsonIntegrator(double d, double d2, int i, int i2) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(d, d2, i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    public double doIntegrate() throws TooManyEvaluationsException, MaxCountExceededException {
        double d;
        TrapezoidIntegrator trapezoidIntegrator = new TrapezoidIntegrator();
        if (getMinimalIterationCount() == 1) {
            return ((trapezoidIntegrator.m67488a(this, 1) * 4.0d) - trapezoidIntegrator.m67488a(this, 0)) / 3.0d;
        }
        double m67488a = trapezoidIntegrator.m67488a(this, 0);
        double d2 = 0.0d;
        while (true) {
            double m67488a2 = trapezoidIntegrator.m67488a(this, getIterations());
            incrementCount();
            d = ((m67488a2 * 4.0d) - m67488a) / 3.0d;
            if (getIterations() >= getMinimalIterationCount()) {
                double abs = FastMath.abs(d - d2);
                if (abs <= getRelativeAccuracy() * (FastMath.abs(d2) + FastMath.abs(d)) * 0.5d || abs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            d2 = d;
            m67488a = m67488a2;
        }
        return d;
    }

    public SimpsonIntegrator(int i, int i2) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    public SimpsonIntegrator() {
        super(3, 64);
    }
}
