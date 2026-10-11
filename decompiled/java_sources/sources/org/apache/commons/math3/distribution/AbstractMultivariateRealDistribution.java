package org.apache.commons.math3.distribution;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;

/* loaded from: classes12.dex */
public abstract class AbstractMultivariateRealDistribution implements MultivariateRealDistribution {

    /* renamed from: a */
    public final int f108052a;
    protected final RandomGenerator random;

    public AbstractMultivariateRealDistribution(RandomGenerator randomGenerator, int i) {
        this.random = randomGenerator;
        this.f108052a = i;
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public int getDimension() {
        return this.f108052a;
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public void reseedRandomGenerator(long j) {
        this.random.setSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public abstract double[] sample();

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double[][] sample(int i) {
        if (i > 0) {
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i, this.f108052a);
            for (int i2 = 0; i2 < i; i2++) {
                dArr[i2] = sample();
            }
            return dArr;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
    }
}
