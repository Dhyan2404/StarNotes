package org.apache.commons.math3.distribution;

import java.io.Serializable;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomDataImpl;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class AbstractRealDistribution implements RealDistribution, Serializable {
    public static final double SOLVER_DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;
    private static final long serialVersionUID = -38038050983108802L;
    protected final RandomGenerator random;

    @Deprecated
    protected RandomDataImpl randomData;
    private double solverAbsoluteAccuracy;

    /* renamed from: org.apache.commons.math3.distribution.AbstractRealDistribution$a */
    /* loaded from: classes12.dex */
    public class C19077a implements UnivariateFunction {

        /* renamed from: e */
        public final /* synthetic */ double f108053e;

        public C19077a(double d) {
            this.f108053e = d;
        }

        @Override // org.apache.commons.math3.analysis.UnivariateFunction
        public double value(double d) {
            return AbstractRealDistribution.this.cumulativeProbability(d) - this.f108053e;
        }
    }

    @Deprecated
    public AbstractRealDistribution() {
        this.randomData = new RandomDataImpl();
        this.solverAbsoluteAccuracy = 1.0E-6d;
        this.random = null;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    @Deprecated
    public double cumulativeProbability(double d, double d2) throws NumberIsTooLargeException {
        return probability(d, d2);
    }

    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00a4  */
    @Override // org.apache.commons.math3.distribution.RealDistribution
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double inverseCumulativeProbability(double r26) throws org.apache.commons.math3.exception.OutOfRangeException {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.distribution.AbstractRealDistribution.inverseCumulativeProbability(double):double");
    }

    public double logDensity(double d) {
        return FastMath.log(density(d));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double probability(double d) {
        return 0.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public void reseedRandomGenerator(long j) {
        this.random.setSeed(j);
        this.randomData.reSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return inverseCumulativeProbability(this.random.nextDouble());
    }

    public double probability(double d, double d2) {
        if (d <= d2) {
            return cumulativeProbability(d2) - cumulativeProbability(d);
        }
        throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Double.valueOf(d), Double.valueOf(d2), true);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double[] sample(int i) {
        if (i > 0) {
            double[] dArr = new double[i];
            for (int i2 = 0; i2 < i; i2++) {
                dArr[i2] = sample();
            }
            return dArr;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
    }

    public AbstractRealDistribution(RandomGenerator randomGenerator) {
        this.randomData = new RandomDataImpl();
        this.solverAbsoluteAccuracy = 1.0E-6d;
        this.random = randomGenerator;
    }
}
