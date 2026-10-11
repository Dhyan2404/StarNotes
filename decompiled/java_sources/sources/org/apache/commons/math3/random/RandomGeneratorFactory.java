package org.apache.commons.math3.random;

import java.util.Random;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;

/* loaded from: classes12.dex */
public class RandomGeneratorFactory {

    /* renamed from: org.apache.commons.math3.random.RandomGeneratorFactory$a */
    /* loaded from: classes12.dex */
    public static class C19258a implements RandomGenerator {

        /* renamed from: e */
        public final /* synthetic */ Random f109595e;

        public C19258a(Random random) {
            this.f109595e = random;
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public boolean nextBoolean() {
            return this.f109595e.nextBoolean();
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public void nextBytes(byte[] bArr) {
            this.f109595e.nextBytes(bArr);
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public double nextDouble() {
            return this.f109595e.nextDouble();
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public float nextFloat() {
            return this.f109595e.nextFloat();
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public double nextGaussian() {
            return this.f109595e.nextGaussian();
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public int nextInt() {
            return this.f109595e.nextInt();
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public long nextLong() {
            return this.f109595e.nextLong();
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public void setSeed(int i) {
            this.f109595e.setSeed(i);
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public int nextInt(int i) {
            if (i > 0) {
                return this.f109595e.nextInt(i);
            }
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public void setSeed(int[] iArr) {
            this.f109595e.setSeed(RandomGeneratorFactory.convertToLong(iArr));
        }

        @Override // org.apache.commons.math3.random.RandomGenerator
        public void setSeed(long j) {
            this.f109595e.setSeed(j);
        }
    }

    public static long convertToLong(int[] iArr) {
        long j = 0;
        for (int i : iArr) {
            j = (j * 4294967291L) + i;
        }
        return j;
    }

    public static RandomGenerator createRandomGenerator(Random random) {
        return new C19258a(random);
    }
}
