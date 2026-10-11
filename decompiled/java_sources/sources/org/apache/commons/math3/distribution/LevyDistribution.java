package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Erf;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class LevyDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20130314;

    /* renamed from: c */
    private final double f108059c;
    private final double halfC;

    /* renamed from: mu */
    private final double f108060mu;

    public LevyDistribution(double d, double d2) {
        this(new Well19937c(), d, d2);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d) {
        double d2 = this.f108060mu;
        if (d < d2) {
            return Double.NaN;
        }
        return Erf.erfc(FastMath.sqrt(this.halfC / (d - d2)));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d) {
        double d2 = this.f108060mu;
        if (d < d2) {
            return Double.NaN;
        }
        double d3 = d - d2;
        double d4 = this.halfC / d3;
        return (FastMath.sqrt(d4 / 3.141592653589793d) * FastMath.exp(-d4)) / d3;
    }

    public double getLocation() {
        return this.f108060mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        return Double.POSITIVE_INFINITY;
    }

    public double getScale() {
        return this.f108059c;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.f108060mu;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d) throws OutOfRangeException {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        double erfcInv = Erf.erfcInv(d);
        return this.f108060mu + (this.halfC / (erfcInv * erfcInv));
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

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double logDensity(double d) {
        double d2 = this.f108060mu;
        if (d < d2) {
            return Double.NaN;
        }
        double d3 = d - d2;
        double d4 = this.halfC / d3;
        return ((FastMath.log(d4 / 3.141592653589793d) * 0.5d) - d4) - FastMath.log(d3);
    }

    public LevyDistribution(RandomGenerator randomGenerator, double d, double d2) {
        super(randomGenerator);
        this.f108060mu = d;
        this.f108059c = d2;
        this.halfC = d2 * 0.5d;
    }
}
