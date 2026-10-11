package org.apache.commons.math3.analysis.integration;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.integration.gauss.GaussIntegratorFactory;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class IterativeLegendreGaussIntegrator extends BaseAbstractUnivariateIntegrator {

    /* renamed from: j */
    public static final GaussIntegratorFactory f107822j = new GaussIntegratorFactory();

    /* renamed from: i */
    public final int f107823i;

    /* renamed from: org.apache.commons.math3.analysis.integration.IterativeLegendreGaussIntegrator$a */
    /* loaded from: classes12.dex */
    public class C19052a implements UnivariateFunction {
        public C19052a() {
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) throws MathIllegalArgumentException, TooManyEvaluationsException {
            return IterativeLegendreGaussIntegrator.this.computeObjectiveValue(d);
        }
    }

    public IterativeLegendreGaussIntegrator(int i, double d, double d2, int i2, int i3) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        super(d, d2, i2, i3);
        if (i > 0) {
            this.f107823i = i;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_POINTS, Integer.valueOf(i));
    }

    /* renamed from: a */
    public final double m67485a(int i) throws TooManyEvaluationsException {
        C19052a c19052a = new C19052a();
        double min = getMin();
        double max = (getMax() - min) / i;
        double d = 0.0d;
        for (int i2 = 0; i2 < i; i2++) {
            double d2 = min + (i2 * max);
            d += f107822j.legendreHighPrecision(this.f107823i, d2, d2 + max).integrate(c19052a);
        }
        return d;
    }

    @Override // org.apache.commons.math3.analysis.integration.BaseAbstractUnivariateIntegrator
    public double doIntegrate() throws MathIllegalArgumentException, TooManyEvaluationsException, MaxCountExceededException {
        double m67485a = m67485a(1);
        int i = 2;
        while (true) {
            double m67485a2 = m67485a(i);
            double abs = FastMath.abs(m67485a2 - m67485a);
            double max = FastMath.max(getAbsoluteAccuracy(), getRelativeAccuracy() * (FastMath.abs(m67485a) + FastMath.abs(m67485a2)) * 0.5d);
            if (getIterations() + 1 >= getMinimalIterationCount() && abs <= max) {
                return m67485a2;
            }
            i = FastMath.max((int) (FastMath.min(4.0d, FastMath.pow(abs / max, 0.5d / this.f107823i)) * i), i + 1);
            incrementCount();
            m67485a = m67485a2;
        }
    }

    public IterativeLegendreGaussIntegrator(int i, double d, double d2) throws NotStrictlyPositiveException {
        this(i, d, d2, 3, Integer.MAX_VALUE);
    }

    public IterativeLegendreGaussIntegrator(int i, int i2, int i3) throws NotStrictlyPositiveException, NumberIsTooSmallException {
        this(i, 1.0E-6d, 1.0E-15d, i2, i3);
    }
}
