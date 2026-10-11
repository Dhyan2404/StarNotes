package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class TrapezoidIntegrator extends BaseAbstractUnivariateIntegrator {
    public static final int TRAPEZOID_MAX_ITERATIONS_COUNT = 64;

    /* renamed from: i */
    public double f107835i;

    public TrapezoidIntegrator(double d, double d2, int i, int i2) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(d, d2, i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    /* renamed from: a */
    public double m67488a(BaseAbstractUnivariateIntegrator baseAbstractUnivariateIntegrator, int i) throws TooManyEvaluationsException {
        if (i == 0) {
            double max = baseAbstractUnivariateIntegrator.getMax();
            double min = baseAbstractUnivariateIntegrator.getMin();
            double computeObjectiveValue = (max - min) * 0.5d * (baseAbstractUnivariateIntegrator.computeObjectiveValue(min) + baseAbstractUnivariateIntegrator.computeObjectiveValue(max));
            this.f107835i = computeObjectiveValue;
            return computeObjectiveValue;
        }
        long j = 1 << (i - 1);
        double max2 = baseAbstractUnivariateIntegrator.getMax();
        double min2 = baseAbstractUnivariateIntegrator.getMin();
        double d = (max2 - min2) / j;
        double d2 = min2 + (d * 0.5d);
        double d3 = 0.0d;
        for (long j2 = 0; j2 < j; j2++) {
            d3 += baseAbstractUnivariateIntegrator.computeObjectiveValue(d2);
            d2 += d;
        }
        double d4 = (this.f107835i + (d3 * d)) * 0.5d;
        this.f107835i = d4;
        return d4;
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    public double doIntegrate() throws MathIllegalArgumentException, TooManyEvaluationsException, MaxCountExceededException {
        double m67488a;
        double m67488a2 = m67488a(this, 0);
        incrementCount();
        while (true) {
            int iterations = getIterations();
            m67488a = m67488a(this, iterations);
            if (iterations >= getMinimalIterationCount()) {
                double abs = FastMath.abs(m67488a - m67488a2);
                if (abs <= getRelativeAccuracy() * (FastMath.abs(m67488a2) + FastMath.abs(m67488a)) * 0.5d || abs <= getAbsoluteAccuracy()) {
                    break;
                }
            }
            incrementCount();
            m67488a2 = m67488a;
        }
        return m67488a;
    }

    public TrapezoidIntegrator(int i, int i2) throws NotStrictlyPositiveException, NumberIsTooSmallException, NumberIsTooLargeException {
        super(i, i2);
        if (i2 > 64) {
            throw new NumberIsTooLargeException(Integer.valueOf(i2), 64, false);
        }
    }

    public TrapezoidIntegrator() {
        super(3, 64);
    }
}
