package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class NakagamiDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = 20141003;
    private final double inverseAbsoluteAccuracy;

    /* renamed from: mu */
    private final double f108070mu;
    private final double omega;

    public NakagamiDistribution(double d, double d2) {
        this(d, d2, 1.0E-9d);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d) {
        double d2 = this.f108070mu;
        return Gamma.regularizedGammaP(d2, ((d2 * d) * d) / this.omega);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        double d2 = this.f108070mu;
        return ((FastMath.pow(d2, d2) * 2.0d) / (Gamma.gamma(this.f108070mu) * FastMath.pow(this.omega, this.f108070mu))) * FastMath.pow(d, (this.f108070mu * 2.0d) - 1.0d) * FastMath.exp((((-this.f108070mu) * d) * d) / this.omega);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return (Gamma.gamma(this.f108070mu + 0.5d) / Gamma.gamma(this.f108070mu)) * FastMath.sqrt(this.omega / this.f108070mu);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double gamma = Gamma.gamma(this.f108070mu + 0.5d) / Gamma.gamma(this.f108070mu);
        return this.omega * (1.0d - (((1.0d / this.f108070mu) * gamma) * gamma));
    }

    public double getScale() {
        return this.omega;
    }

    public double getShape() {
        return this.f108070mu;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double getSolverAbsoluteAccuracy() {
        return this.inverseAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return 0.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return Double.POSITIVE_INFINITY;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return false;
    }

    public NakagamiDistribution(double d, double d2, double d3) {
        this(new Well19937c(), d, d2, d3);
    }

    public NakagamiDistribution(RandomGenerator randomGenerator, double d, double d2, double d3) {
        super(randomGenerator);
        if (d < 0.5d) {
            throw new NumberIsTooSmallException(Double.valueOf(d), Double.valueOf(0.5d), true);
        }
        if (d2 > 0.0d) {
            this.f108070mu = d;
            this.omega = d2;
            this.inverseAbsoluteAccuracy = d3;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_SCALE, Double.valueOf(d2));
    }
}
