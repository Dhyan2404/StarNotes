package org.apache.commons.math3.random;

/* loaded from: classes12.dex */
public class GaussianRandomGenerator implements NormalizedRandomGenerator {

    /* renamed from: a */
    public final RandomGenerator f109585a;

    public GaussianRandomGenerator(RandomGenerator randomGenerator) {
        this.f109585a = randomGenerator;
    }

    @Override // org.apache.commons.math3.random.NormalizedRandomGenerator
    public double nextNormalizedDouble() {
        return this.f109585a.nextGaussian();
    }
}
