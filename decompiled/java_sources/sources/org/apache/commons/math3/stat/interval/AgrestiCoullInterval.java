package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class AgrestiCoullInterval implements BinomialConfidenceInterval {
    @Override // org.apache.commons.math3.stat.interval.BinomialConfidenceInterval
    public ConfidenceInterval createInterval(int i, int i2, double d) {
        IntervalUtils.m68170a(i, i2, d);
        double inverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d) / 2.0d));
        double pow = FastMath.pow(inverseCumulativeProbability, 2);
        double d2 = 1.0d / (i + pow);
        double d3 = (i2 + (pow * 0.5d)) * d2;
        double sqrt = inverseCumulativeProbability * FastMath.sqrt(d2 * d3 * (1.0d - d3));
        return new ConfidenceInterval(d3 - sqrt, d3 + sqrt, d);
    }
}
