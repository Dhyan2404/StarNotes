package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class WilsonScoreInterval implements BinomialConfidenceInterval {
    @Override // org.apache.commons.math3.stat.interval.BinomialConfidenceInterval
    public ConfidenceInterval createInterval(int i, int i2, double d) {
        IntervalUtils.m68170a(i, i2, d);
        double inverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d) / 2.0d));
        double pow = FastMath.pow(inverseCumulativeProbability, 2);
        double d2 = i;
        double d3 = i2 / d2;
        double d4 = 1.0d / d2;
        double d5 = 1.0d / ((d4 * pow) + 1.0d);
        double d6 = ((1.0d / (i * 2)) * pow) + d3;
        double sqrt = inverseCumulativeProbability * FastMath.sqrt((d4 * d3 * (1.0d - d3)) + ((1.0d / (FastMath.pow(d2, 2) * 4.0d)) * pow));
        return new ConfidenceInterval((d6 - sqrt) * d5, d5 * (d6 + sqrt), d);
    }
}
