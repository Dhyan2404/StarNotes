package org.apache.commons.math3.distribution;

import com.sunia.HTREnginev2.k0m;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.CombinatoricsUtils;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class PoissonDistribution extends AbstractIntegerDistribution {
    public static final double DEFAULT_EPSILON = 1.0E-12d;
    public static final int DEFAULT_MAX_ITERATIONS = 10000000;
    private static final long serialVersionUID = -3349935121172596109L;
    private final double epsilon;
    private final ExponentialDistribution exponential;
    private final int maxIterations;
    private final double mean;
    private final NormalDistribution normal;

    public PoissonDistribution(double d) throws NotStrictlyPositiveException {
        this(d, 1.0E-12d, 10000000);
    }

    private long nextPoisson(double d) {
        double sample;
        double ceil;
        double d2;
        double d3;
        double d4;
        PoissonDistribution poissonDistribution = this;
        double d5 = 1.0d;
        if (d < 40.0d) {
            double exp = FastMath.exp(-d);
            while (r4 < 1000.0d * d) {
                d5 *= poissonDistribution.random.nextDouble();
                if (d5 < exp) {
                    break;
                }
                r4++;
            }
            return r4;
        }
        double floor = FastMath.floor(d);
        double d6 = d - floor;
        double log = FastMath.log(floor);
        double factorialLog = CombinatoricsUtils.factorialLog((int) floor);
        r4 = d6 >= Double.MIN_VALUE ? poissonDistribution.nextPoisson(d6) : 0L;
        double sqrt = FastMath.sqrt(FastMath.log(((32.0d * floor) / 3.141592653589793d) + 1.0d) * floor);
        double d7 = sqrt / 2.0d;
        double d8 = floor * 2.0d;
        double d9 = d8 + sqrt;
        double d10 = 1.0d / (8.0d * floor);
        double sqrt2 = FastMath.sqrt(3.141592653589793d * d9) * FastMath.exp(d10);
        double d11 = d9 / sqrt;
        long j = r4;
        double exp2 = FastMath.exp(((-sqrt) * (sqrt + 1.0d)) / d9) * d11;
        double d12 = sqrt2 + exp2 + 1.0d;
        double d13 = sqrt2 / d12;
        double d14 = exp2 / d12;
        while (true) {
            double nextDouble = poissonDistribution.random.nextDouble();
            if (nextDouble <= d13) {
                double nextGaussian = poissonDistribution.random.nextGaussian();
                sample = (FastMath.sqrt(floor + d7) * nextGaussian) - 0.5d;
                if (sample <= sqrt && sample >= (-floor)) {
                    double floor2 = sample < 0.0d ? FastMath.floor(sample) : FastMath.ceil(sample);
                    double d15 = ((-poissonDistribution.exponential.sample()) - ((nextGaussian * nextGaussian) / 2.0d)) + d10;
                    d2 = d14;
                    d4 = d15;
                    ceil = floor2;
                    d3 = 1.0d;
                }
            } else {
                if (nextDouble > d13 + d14) {
                    break;
                }
                sample = sqrt + (poissonDistribution.exponential.sample() * d11);
                ceil = FastMath.ceil(sample);
                d2 = d14;
                d3 = 1.0d;
                d4 = (-poissonDistribution.exponential.sample()) - (((sample + 1.0d) * sqrt) / d9);
            }
            int i = sample < 0.0d ? 1 : 0;
            double d16 = ceil + d3;
            double d17 = sqrt;
            double d18 = (ceil * d16) / d8;
            double d19 = d13;
            if (d4 < (-d18) && i == 0) {
                break;
            }
            double d20 = ((((ceil * 2.0d) + 1.0d) / (6.0d * floor)) - 1.0d) * d18;
            double d21 = factorialLog;
            if (d4 < d20 - ((d18 * d18) / (((i * d16) + floor) * 3.0d))) {
                break;
            }
            if (d4 <= d20) {
                double d22 = ceil * log;
                double d23 = ceil + floor;
                if (d4 < (d22 - CombinatoricsUtils.factorialLog((int) d23)) + d21) {
                    floor = d23;
                    break;
                }
            }
            poissonDistribution = this;
            d14 = d2;
            d13 = d19;
            sqrt = d17;
            factorialLog = d21;
        }
        floor += ceil;
        return j + ((long) floor);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i < 0) {
            return 0.0d;
        }
        if (i == Integer.MAX_VALUE) {
            return 1.0d;
        }
        return Gamma.regularizedGammaQ(i + 1.0d, this.mean, this.epsilon, this.maxIterations);
    }

    public double getMean() {
        return this.mean;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        return getMean();
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        return getMean();
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
        if (i < 0 || i == Integer.MAX_VALUE) {
            return Double.NEGATIVE_INFINITY;
        }
        if (i == 0) {
            return -this.mean;
        }
        double d = i;
        return (((-k0m.m55098b(d)) - k0m.m55097a(d, this.mean)) - (FastMath.log(6.283185307179586d) * 0.5d)) - (FastMath.log(d) * 0.5d);
    }

    public double normalApproximateProbability(int i) {
        return this.normal.cumulativeProbability(i + 0.5d);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        double logProbability = logProbability(i);
        if (logProbability == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logProbability);
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution, org.apache.commons.math3.distribution.IntegerDistribution
    public int sample() {
        return (int) FastMath.min(nextPoisson(this.mean), 2147483647L);
    }

    public PoissonDistribution(double d, double d2, int i) throws NotStrictlyPositiveException {
        this(new Well19937c(), d, d2, i);
    }

    public PoissonDistribution(RandomGenerator randomGenerator, double d, double d2, int i) throws NotStrictlyPositiveException {
        super(randomGenerator);
        if (d > 0.0d) {
            this.mean = d;
            this.epsilon = d2;
            this.maxIterations = i;
            this.normal = new NormalDistribution(randomGenerator, d, FastMath.sqrt(d), 1.0E-9d);
            this.exponential = new ExponentialDistribution(randomGenerator, 1.0d, 1.0E-9d);
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.MEAN, Double.valueOf(d));
    }

    public PoissonDistribution(double d, double d2) throws NotStrictlyPositiveException {
        this(d, d2, 10000000);
    }

    public PoissonDistribution(double d, int i) {
        this(d, 1.0E-12d, i);
    }
}
