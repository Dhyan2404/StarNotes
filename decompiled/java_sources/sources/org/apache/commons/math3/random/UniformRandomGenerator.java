package org.apache.commons.math3.random;

import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class UniformRandomGenerator implements NormalizedRandomGenerator {

    /* renamed from: b */
    public static final double f109613b = FastMath.sqrt(3.0d);

    /* renamed from: a */
    public final RandomGenerator f109614a;

    public UniformRandomGenerator(RandomGenerator randomGenerator) {
        this.f109614a = randomGenerator;
    }

    @Override // org.apache.commons.math3.random.NormalizedRandomGenerator
    public double nextNormalizedDouble() {
        return f109613b * ((this.f109614a.nextDouble() * 2.0d) - 1.0d);
    }
}
