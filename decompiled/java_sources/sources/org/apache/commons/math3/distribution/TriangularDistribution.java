package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class TriangularDistribution extends AbstractRealDistribution {
    private static final long serialVersionUID = 20120112;

    /* renamed from: a */
    private final double f108071a;

    /* renamed from: b */
    private final double f108072b;

    /* renamed from: c */
    private final double f108073c;
    private final double solverAbsoluteAccuracy;

    public TriangularDistribution(double d, double d2, double d3) throws NumberIsTooLargeException, NumberIsTooSmallException {
        this(new Well19937c(), d, d2, d3);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d) {
        double d2 = this.f108071a;
        if (d < d2) {
            return 0.0d;
        }
        if (d2 <= d) {
            double d3 = this.f108073c;
            if (d < d3) {
                return ((d - d2) * (d - d2)) / ((this.f108072b - d2) * (d3 - d2));
            }
        }
        double d4 = this.f108073c;
        if (d == d4) {
            return (d4 - d2) / (this.f108072b - d2);
        }
        if (d4 >= d) {
            return 1.0d;
        }
        double d5 = this.f108072b;
        if (d <= d5) {
            return 1.0d - (((d5 - d) * (d5 - d)) / ((d5 - d2) * (d5 - d4)));
        }
        return 1.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d) {
        double d2 = this.f108071a;
        if (d < d2) {
            return 0.0d;
        }
        if (d2 <= d) {
            double d3 = this.f108073c;
            if (d < d3) {
                return ((d - d2) * 2.0d) / ((this.f108072b - d2) * (d3 - d2));
            }
        }
        double d4 = this.f108073c;
        if (d == d4) {
            return 2.0d / (this.f108072b - d2);
        }
        if (d4 < d) {
            double d5 = this.f108072b;
            if (d <= d5) {
                return ((d5 - d) * 2.0d) / ((d5 - d2) * (d5 - d4));
            }
        }
        return 0.0d;
    }

    public double getMode() {
        return this.f108073c;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return ((this.f108071a + this.f108072b) + this.f108073c) / 3.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double d = this.f108071a;
        double d2 = this.f108072b;
        double d3 = (d * d) + (d2 * d2);
        double d4 = this.f108073c;
        return ((((d3 + (d4 * d4)) - (d * d2)) - (d * d4)) - (d2 * d4)) / 18.0d;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.f108071a;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return this.f108072b;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d) throws OutOfRangeException {
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        if (d == 0.0d) {
            return this.f108071a;
        }
        if (d == 1.0d) {
            return this.f108072b;
        }
        double d2 = this.f108073c;
        double d3 = this.f108071a;
        double d4 = this.f108072b;
        return d < (d2 - d3) / (d4 - d3) ? d3 + FastMath.sqrt(d * (d4 - d3) * (d2 - d3)) : d4 - FastMath.sqrt(((1.0d - d) * (d4 - d3)) * (d4 - d2));
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
        return true;
    }

    public TriangularDistribution(RandomGenerator randomGenerator, double d, double d2, double d3) throws NumberIsTooLargeException, NumberIsTooSmallException {
        super(randomGenerator);
        if (d >= d3) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d), Double.valueOf(d3), false);
        }
        if (d2 < d) {
            throw new NumberIsTooSmallException(LocalizedFormats.NUMBER_TOO_SMALL, Double.valueOf(d2), Double.valueOf(d), true);
        }
        if (d2 <= d3) {
            this.f108071a = d;
            this.f108073c = d2;
            this.f108072b = d3;
            this.solverAbsoluteAccuracy = FastMath.max(FastMath.ulp(d), FastMath.ulp(d3));
            return;
        }
        throw new NumberIsTooLargeException(LocalizedFormats.NUMBER_TOO_LARGE, Double.valueOf(d2), Double.valueOf(d3), true);
    }
}
