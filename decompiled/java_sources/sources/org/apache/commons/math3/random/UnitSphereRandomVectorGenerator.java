package org.apache.commons.math3.random;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class UnitSphereRandomVectorGenerator implements RandomVectorGenerator {

    /* renamed from: a */
    public final RandomGenerator f109615a;

    /* renamed from: b */
    public final int f109616b;

    public UnitSphereRandomVectorGenerator(int i, RandomGenerator randomGenerator) {
        this.f109616b = i;
        this.f109615a = randomGenerator;
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        double[] dArr = new double[this.f109616b];
        double d = 0.0d;
        for (int i = 0; i < this.f109616b; i++) {
            double nextGaussian = this.f109615a.nextGaussian();
            dArr[i] = nextGaussian;
            d += nextGaussian * nextGaussian;
        }
        double sqrt = 1.0d / FastMath.sqrt(d);
        for (int i2 = 0; i2 < this.f109616b; i2++) {
            dArr[i2] = dArr[i2] * sqrt;
        }
        return dArr;
    }

    public UnitSphereRandomVectorGenerator(int i) {
        this(i, new MersenneTwister());
    }
}
