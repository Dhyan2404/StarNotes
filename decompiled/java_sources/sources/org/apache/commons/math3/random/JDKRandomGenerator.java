package org.apache.commons.math3.random;

import java.util.Random;

/* loaded from: classes12.dex */
public class JDKRandomGenerator extends Random implements RandomGenerator {
    private static final long serialVersionUID = -7745277476784028798L;

    public JDKRandomGenerator() {
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int i) {
        setSeed(i);
    }

    public JDKRandomGenerator(int i) {
        setSeed(i);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int[] iArr) {
        setSeed(RandomGeneratorFactory.convertToLong(iArr));
    }
}
