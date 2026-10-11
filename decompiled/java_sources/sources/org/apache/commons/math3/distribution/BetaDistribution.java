package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.special.Beta;
import org.apache.commons.math3.special.Gamma;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* loaded from: classes12.dex */
public class BetaDistribution extends AbstractRealDistribution {
    public static final double DEFAULT_INVERSE_ABSOLUTE_ACCURACY = 1.0E-9d;
    private static final long serialVersionUID = -1221965979403477668L;
    private final double alpha;
    private final double beta;
    private final double solverAbsoluteAccuracy;

    /* renamed from: z */
    private double f108055z;

    /* renamed from: org.apache.commons.math3.distribution.BetaDistribution$a */
    /* loaded from: classes12.dex */
    public static final class C19078a {
        /* renamed from: a */
        public static double m67544a(RandomGenerator randomGenerator, double d, double d2, double d3) {
            double exp;
            double d4;
            double log;
            double d5 = d2 + d3;
            double sqrt = FastMath.sqrt((d5 - 2.0d) / (((2.0d * d2) * d3) - d5));
            double d6 = (1.0d / sqrt) + d2;
            do {
                double nextDouble = randomGenerator.nextDouble();
                double nextDouble2 = randomGenerator.nextDouble();
                double log2 = (FastMath.log(nextDouble) - FastMath.log1p(-nextDouble)) * sqrt;
                exp = FastMath.exp(log2) * d2;
                double d7 = nextDouble * nextDouble * nextDouble2;
                d4 = (log2 * d6) - 1.3862944d;
                double d8 = (d2 + d4) - exp;
                if (d8 + 2.609438d >= 5.0d * d7) {
                    break;
                }
                log = FastMath.log(d7);
                if (d8 >= log) {
                    break;
                }
            } while (d4 + ((FastMath.log(d5) - FastMath.log(d3 + exp)) * d5) < log);
            double min = FastMath.min(exp, Double.MAX_VALUE);
            return Precision.equals(d2, d) ? min / (d3 + min) : d3 / (d3 + min);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0092 A[SYNTHETIC] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static double m67545b(org.apache.commons.math3.random.RandomGenerator r24, double r25, double r27, double r29) {
            /*
                r0 = r27
                double r2 = r0 + r29
                r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                double r6 = r4 / r29
                double r4 = r4 + r0
                double r4 = r4 - r29
                r8 = 4586165625342794696(0x3fa5555673aa1bc8, double:0.0416667)
                double r8 = r8 * r29
                r10 = 4579160027523720458(0x3f8c71c89a38250a, double:0.0138889)
                double r8 = r8 + r10
                double r8 = r8 * r4
                double r10 = r0 * r6
                r12 = 4605180820967230355(0x3fe8e38eb0318b93, double:0.777778)
                double r10 = r10 - r12
                double r8 = r8 / r10
                r10 = 4598175219545276416(0x3fd0000000000000, double:0.25)
                double r4 = r10 / r4
                r12 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                double r4 = r4 + r12
                double r4 = r4 * r29
                double r4 = r4 + r10
            L2c:
                double r14 = r24.nextDouble()
                double r16 = r24.nextDouble()
                double r18 = r14 * r16
                double r20 = r14 * r18
                int r22 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
                if (r22 >= 0) goto L47
                double r16 = r16 * r10
                double r16 = r16 + r20
                double r16 = r16 - r18
                int r16 = (r16 > r8 ? 1 : (r16 == r8 ? 0 : -1))
                if (r16 < 0) goto L61
                goto L2c
            L47:
                int r16 = (r20 > r10 ? 1 : (r20 == r10 ? 0 : -1))
                if (r16 > 0) goto L5c
                double r2 = org.apache.commons.math3.util.FastMath.log(r14)
                double r4 = -r14
                double r4 = org.apache.commons.math3.util.FastMath.log1p(r4)
                double r2 = r2 - r4
                double r6 = r6 * r2
                double r2 = org.apache.commons.math3.util.FastMath.exp(r6)
                double r2 = r2 * r0
                goto L93
            L5c:
                int r16 = (r20 > r4 ? 1 : (r20 == r4 ? 0 : -1))
                if (r16 < 0) goto L61
                goto L2c
            L61:
                double r16 = org.apache.commons.math3.util.FastMath.log(r14)
                double r14 = -r14
                double r14 = org.apache.commons.math3.util.FastMath.log1p(r14)
                double r16 = r16 - r14
                double r16 = r16 * r6
                double r14 = org.apache.commons.math3.util.FastMath.exp(r16)
                double r14 = r14 * r0
                double r18 = org.apache.commons.math3.util.FastMath.log(r2)
                double r22 = r29 + r14
                double r22 = org.apache.commons.math3.util.FastMath.log(r22)
                double r18 = r18 - r22
                double r18 = r18 + r16
                double r18 = r18 * r2
                r16 = 4608922134115912717(0x3ff62e43096a0c0d, double:1.3862944)
                double r18 = r18 - r16
                double r16 = org.apache.commons.math3.util.FastMath.log(r20)
                int r16 = (r18 > r16 ? 1 : (r18 == r16 ? 0 : -1))
                if (r16 < 0) goto Lad
                r2 = r14
            L93:
                r4 = 9218868437227405311(0x7fefffffffffffff, double:1.7976931348623157E308)
                double r2 = org.apache.commons.math3.util.FastMath.min(r2, r4)
                r14 = r25
                boolean r0 = org.apache.commons.math3.util.Precision.equals(r0, r14)
                if (r0 == 0) goto La8
                double r0 = r29 + r2
                double r2 = r2 / r0
                goto Lac
            La8:
                double r0 = r29 + r2
                double r2 = r29 / r0
            Lac:
                return r2
            Lad:
                r14 = r25
                goto L2c
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.distribution.BetaDistribution.C19078a.m67545b(org.apache.commons.math3.random.RandomGenerator, double, double, double):double");
        }

        /* renamed from: c */
        public static double m67546c(RandomGenerator randomGenerator, double d, double d2) {
            double min = FastMath.min(d, d2);
            double max = FastMath.max(d, d2);
            return min > 1.0d ? m67544a(randomGenerator, d, min, max) : m67545b(randomGenerator, d, max, min);
        }
    }

    public BetaDistribution(double d, double d2) {
        this(d, d2, 1.0E-9d);
    }

    private void recomputeZ() {
        if (Double.isNaN(this.f108055z)) {
            this.f108055z = (Gamma.logGamma(this.alpha) + Gamma.logGamma(this.beta)) - Gamma.logGamma(this.alpha + this.beta);
        }
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        return Beta.regularizedBeta(d, this.alpha, this.beta);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d) {
        double logDensity = logDensity(d);
        if (logDensity == Double.NEGATIVE_INFINITY) {
            return 0.0d;
        }
        return FastMath.exp(logDensity);
    }

    public double getAlpha() {
        return this.alpha;
    }

    public double getBeta() {
        return this.beta;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        double alpha = getAlpha();
        return alpha / (getBeta() + alpha);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        double alpha = getAlpha();
        double beta = getBeta();
        double d = alpha + beta;
        return (alpha * beta) / ((d * d) * (d + 1.0d));
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution
    public double getSolverAbsoluteAccuracy() {
        return this.solverAbsoluteAccuracy;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return 0.0d;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return 1.0d;
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
        recomputeZ();
        if (d < 0.0d || d > 1.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d == 0.0d) {
            if (this.alpha >= 1.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            throw new NumberIsTooSmallException(LocalizedFormats.CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA, Double.valueOf(this.alpha), 1, false);
        }
        if (d == 1.0d) {
            if (this.beta >= 1.0d) {
                return Double.NEGATIVE_INFINITY;
            }
            throw new NumberIsTooSmallException(LocalizedFormats.CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA, Double.valueOf(this.beta), 1, false);
        }
        return (((this.alpha - 1.0d) * FastMath.log(d)) + ((this.beta - 1.0d) * FastMath.log1p(-d))) - this.f108055z;
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double sample() {
        return C19078a.m67546c(this.random, this.alpha, this.beta);
    }

    public BetaDistribution(double d, double d2, double d3) {
        this(new Well19937c(), d, d2, d3);
    }

    public BetaDistribution(RandomGenerator randomGenerator, double d, double d2) {
        this(randomGenerator, d, d2, 1.0E-9d);
    }

    public BetaDistribution(RandomGenerator randomGenerator, double d, double d2, double d3) {
        super(randomGenerator);
        this.alpha = d;
        this.beta = d2;
        this.f108055z = Double.NaN;
        this.solverAbsoluteAccuracy = d3;
    }
}
