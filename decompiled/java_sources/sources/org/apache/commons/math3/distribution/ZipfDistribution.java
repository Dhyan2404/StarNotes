package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class ZipfDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = -140627372283420404L;
    private final double exponent;
    private final int numberOfElements;
    private double numericalMean;
    private boolean numericalMeanIsCalculated;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;
    private transient C19079a sampler;

    /* renamed from: org.apache.commons.math3.distribution.ZipfDistribution$a */
    /* loaded from: classes12.dex */
    public static final class C19079a {

        /* renamed from: a */
        public final double f108074a;

        /* renamed from: b */
        public final int f108075b;

        /* renamed from: d */
        public final double f108077d;

        /* renamed from: c */
        public final double f108076c = m67552b(1.5d) - 1.0d;

        /* renamed from: e */
        public final double f108078e = 2.0d - m67553c(m67552b(2.5d) - m67551a(2.0d));

        public C19079a(int i, double d) {
            this.f108074a = d;
            this.f108075b = i;
            this.f108077d = m67552b(i + 0.5d);
        }

        /* renamed from: d */
        public static double m67549d(double d) {
            return FastMath.abs(d) > 1.0E-8d ? FastMath.log1p(d) / d : 1.0d - (d * (0.5d - ((0.3333333333333333d - (0.25d * d)) * d)));
        }

        /* renamed from: e */
        public static double m67550e(double d) {
            return FastMath.abs(d) > 1.0E-8d ? FastMath.expm1(d) / d : (0.5d * d * ((0.3333333333333333d * d * ((d * 0.25d) + 1.0d)) + 1.0d)) + 1.0d;
        }

        /* renamed from: a */
        public final double m67551a(double d) {
            return FastMath.exp((-this.f108074a) * FastMath.log(d));
        }

        /* renamed from: b */
        public final double m67552b(double d) {
            double log = FastMath.log(d);
            return m67550e((1.0d - this.f108074a) * log) * log;
        }

        /* renamed from: c */
        public final double m67553c(double d) {
            double d2 = (1.0d - this.f108074a) * d;
            if (d2 < -1.0d) {
                d2 = -1.0d;
            }
            return FastMath.exp(m67549d(d2) * d);
        }

        /* renamed from: f */
        public int m67554f(RandomGenerator randomGenerator) {
            double nextDouble;
            int i;
            double d;
            do {
                nextDouble = this.f108077d + (randomGenerator.nextDouble() * (this.f108076c - this.f108077d));
                double m67553c = m67553c(nextDouble);
                i = (int) (m67553c + 0.5d);
                int i2 = 1;
                if (i < 1 || i > (i2 = this.f108075b)) {
                    i = i2;
                }
                d = i;
                if (d - m67553c <= this.f108078e) {
                    break;
                }
            } while (nextDouble < m67552b(0.5d + d) - m67551a(d));
            return i;
        }
    }

    public ZipfDistribution(int i, double d) {
        this(new Well19937c(), i, d);
    }

    private double generalizedHarmonic(int i, double d) {
        double d2 = 0.0d;
        while (i > 0) {
            d2 += 1.0d / FastMath.pow(i, d);
            i--;
        }
        return d2;
    }

    public double calculateNumericalMean() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        return generalizedHarmonic(numberOfElements, exponent - 1.0d) / generalizedHarmonic(numberOfElements, exponent);
    }

    public double calculateNumericalVariance() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        double generalizedHarmonic = generalizedHarmonic(numberOfElements, exponent - 2.0d);
        double generalizedHarmonic2 = generalizedHarmonic(numberOfElements, exponent - 1.0d);
        double generalizedHarmonic3 = generalizedHarmonic(numberOfElements, exponent);
        return (generalizedHarmonic / generalizedHarmonic3) - ((generalizedHarmonic2 * generalizedHarmonic2) / (generalizedHarmonic3 * generalizedHarmonic3));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i <= 0) {
            return 0.0d;
        }
        if (i >= this.numberOfElements) {
            return 1.0d;
        }
        return generalizedHarmonic(i, this.exponent) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    public double getExponent() {
        return this.exponent;
    }

    public int getNumberOfElements() {
        return this.numberOfElements;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        if (!this.numericalMeanIsCalculated) {
            this.numericalMean = calculateNumericalMean();
            this.numericalMeanIsCalculated = true;
        }
        return this.numericalMean;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        return 1;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        return getNumberOfElements();
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        if (i <= 0 || i > this.numberOfElements) {
            return Double.NEGATIVE_INFINITY;
        }
        double d = -FastMath.log(i);
        double d2 = this.exponent;
        return (d * d2) - FastMath.log(generalizedHarmonic(this.numberOfElements, d2));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        if (i <= 0 || i > this.numberOfElements) {
            return 0.0d;
        }
        return (1.0d / FastMath.pow(i, this.exponent)) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution, org.apache.commons.math3.distribution.IntegerDistribution
    public int sample() {
        if (this.sampler == null) {
            this.sampler = new C19079a(this.numberOfElements, this.exponent);
        }
        return this.sampler.m67554f(this.random);
    }

    public ZipfDistribution(RandomGenerator randomGenerator, int i, double d) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalMean = Double.NaN;
        this.numericalMeanIsCalculated = false;
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DIMENSION, Integer.valueOf(i));
        }
        if (d > 0.0d) {
            this.numberOfElements = i;
            this.exponent = d;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.EXPONENT, Double.valueOf(d));
    }
}
