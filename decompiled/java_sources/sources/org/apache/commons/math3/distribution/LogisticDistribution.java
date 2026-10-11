package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class LogisticDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20141003;

    /* renamed from: mu */
    private final double f108061mu;

    /* renamed from: s */
    private final double f108062s;

    public LogisticDistribution(double d, double d2) {
        this(new Well19937c(), d, d2);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d) {
        return 1.0d / (FastMath.exp(-((1.0d / this.f108062s) * (d - this.f108061mu))) + 1.0d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d) {
        double exp = FastMath.exp(-((d - this.f108061mu) / this.f108062s));
        double d2 = (1.0d / this.f108062s) * exp;
        double d3 = exp + 1.0d;
        return d2 / (d3 * d3);
    }

    public double getLocation() {
        return this.f108061mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return this.f108061mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d = this.f108062s;
        return (1.0d / (d * d)) * 3.289868133696453d;
    }

    public double getScale() {
        return this.f108062s;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return Double.NEGATIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d) throws OutOfRangeException {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), Double.valueOf(0.0d), Double.valueOf(1.0d));
        }
        if (d == 0.0d) {
            return 0.0d;
        }
        if (d == 1.0d) {
            return Double.POSITIVE_INFINITY;
        }
        return (this.f108062s * Math.log(d / (1.0d - d))) + this.f108061mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportLowerBoundInclusive() {
        return false;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    public LogisticDistribution(RandomGenerator randomGenerator, double d, double d2) {
        super(randomGenerator);
        if (d2 > 0.0d) {
            this.f108061mu = d;
            this.f108062s = d2;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d2));
    }
}
