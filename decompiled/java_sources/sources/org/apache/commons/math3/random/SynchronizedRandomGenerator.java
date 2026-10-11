package org.apache.commons.math3.random;

/* loaded from: classes12.dex */
public class SynchronizedRandomGenerator implements RandomGenerator {

    /* renamed from: e */
    public final RandomGenerator f109609e;

    public SynchronizedRandomGenerator(RandomGenerator randomGenerator) {
        this.f109609e = randomGenerator;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized boolean nextBoolean() {
        return this.f109609e.nextBoolean();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized void nextBytes(byte[] bArr) {
        this.f109609e.nextBytes(bArr);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized double nextDouble() {
        return this.f109609e.nextDouble();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized float nextFloat() {
        return this.f109609e.nextFloat();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized double nextGaussian() {
        return this.f109609e.nextGaussian();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized int nextInt() {
        return this.f109609e.nextInt();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized long nextLong() {
        return this.f109609e.nextLong();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized void setSeed(int i) {
        this.f109609e.setSeed(i);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized int nextInt(int i) {
        return this.f109609e.nextInt(i);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized void setSeed(int[] iArr) {
        this.f109609e.setSeed(iArr);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public synchronized void setSeed(long j) {
        this.f109609e.setSeed(j);
    }
}
