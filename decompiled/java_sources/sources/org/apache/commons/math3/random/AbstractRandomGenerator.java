package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class AbstractRandomGenerator implements RandomGenerator {

    /* renamed from: e */
    public double f109571e = Double.NaN;

    public void clear() {
        this.f109571e = Double.NaN;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public boolean nextBoolean() {
        return nextDouble() <= 0.5d;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void nextBytes(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int nextInt = nextInt();
            int i2 = 0;
            while (i2 < 3) {
                if (i2 > 0) {
                    nextInt >>= 8;
                }
                int i3 = i + 1;
                bArr[i] = (byte) nextInt;
                if (i3 == bArr.length) {
                    return;
                }
                i2++;
                i = i3;
            }
        }
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract double nextDouble();

    @Override // org.apache.commons.math3.random.RandomGenerator
    public float nextFloat() {
        return (float) nextDouble();
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public double nextGaussian() {
        if (!Double.isNaN(this.f109571e)) {
            double d = this.f109571e;
            this.f109571e = Double.NaN;
            return d;
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 1.0d;
        while (d4 >= 1.0d) {
            double nextDouble = (nextDouble() * 2.0d) - 1.0d;
            d3 = (nextDouble() * 2.0d) - 1.0d;
            d4 = (nextDouble * nextDouble) + (d3 * d3);
            d2 = nextDouble;
        }
        if (d4 != 0.0d) {
            d4 = FastMath.sqrt((FastMath.log(d4) * (-2.0d)) / d4);
        }
        this.f109571e = d3 * d4;
        return d2 * d4;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public int nextInt() {
        return (int) (((nextDouble() * 2.0d) - 1.0d) * 2.147483647E9d);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public long nextLong() {
        return (long) (((nextDouble() * 2.0d) - 1.0d) * 9.223372036854776E18d);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int i) {
        setSeed(i);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(long j);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public int nextInt(int i) {
        if (i > 0) {
            int nextDouble = (int) (nextDouble() * i);
            return nextDouble < i ? nextDouble : i - 1;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int[] iArr) {
        long j = 0;
        for (int i : iArr) {
            j = (j * 4294967291L) + i;
        }
        setSeed(j);
    }
}
