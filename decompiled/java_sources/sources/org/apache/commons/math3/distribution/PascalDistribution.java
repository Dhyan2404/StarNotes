package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class PascalDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = 6751309484392813623L;
    private final double log1mProbabilityOfSuccess;
    private final double logProbabilityOfSuccess;
    private final int numberOfSuccesses;
    private final double probabilityOfSuccess;

    public PascalDistribution(int i, double d) throws NotStrictlyPositiveException, OutOfRangeException {
        this(new Well19937c(), i, d);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        return Beta.regularizedBeta(this.probabilityOfSuccess, this.numberOfSuccesses, 1.0d + i);
    }

    public int getNumberOfSuccesses() {
        return this.numberOfSuccesses;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        double probabilityOfSuccess = getProbabilityOfSuccess();
        return (getNumberOfSuccesses() * (1.0d - probabilityOfSuccess)) / probabilityOfSuccess;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        double probabilityOfSuccess = getProbabilityOfSuccess();
        return (getNumberOfSuccesses() * (1.0d - probabilityOfSuccess)) / (probabilityOfSuccess * probabilityOfSuccess);
    }

    public double getProbabilityOfSuccess() {
        return this.probabilityOfSuccess;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        return 0;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        return Integer.MAX_VALUE;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        if (i < 0) {
            return Double.NEGATIVE_INFINITY;
        }
        return CombinatoricsUtils.binomialCoefficientLog((i + r0) - 1, this.numberOfSuccesses - 1) + (this.logProbabilityOfSuccess * this.numberOfSuccesses) + (this.log1mProbabilityOfSuccess * i);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        return FastMath.pow(1.0d - this.probabilityOfSuccess, i) * CombinatoricsUtils.binomialCoefficientDouble((i + r0) - 1, this.numberOfSuccesses - 1) * FastMath.pow(this.probabilityOfSuccess, this.numberOfSuccesses);
    }

    public PascalDistribution(RandomGenerator randomGenerator, int i, double d) throws NotStrictlyPositiveException, OutOfRangeException {
        super(randomGenerator);
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SUCCESSES, Integer.valueOf(i));
        }
        if (d >= 0.0d && d <= 1.0d) {
            this.numberOfSuccesses = i;
            this.probabilityOfSuccess = d;
            this.logProbabilityOfSuccess = FastMath.log(d);
            this.log1mProbabilityOfSuccess = FastMath.log1p(-d);
            return;
        }
        throw new OutOfRangeException(Double.valueOf(d), 0, 1);
    }
}
