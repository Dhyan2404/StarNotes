package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class BitsStreamGenerator implements RandomGenerator, Serializable {
    private static final long serialVersionUID = 20130104;
    private double nextGaussian = Double.NaN;

    private void nextBytesFill(byte[] bArr, int i, int i2) {
        int i3 = (2147483644 & i2) + i;
        int i4 = i;
        while (i4 < i3) {
            int next = next(32);
            int i5 = i4 + 1;
            bArr[i4] = (byte) next;
            int i6 = i5 + 1;
            bArr[i5] = (byte) (next >>> 8);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (next >>> 16);
            i4 = i7 + 1;
            bArr[i7] = (byte) (next >>> 24);
        }
        int i8 = i + i2;
        if (i4 >= i8) {
            return;
        }
        int next2 = next(32);
        while (true) {
            int i9 = i4 + 1;
            bArr[i4] = (byte) next2;
            if (i9 >= i8) {
                return;
            }
            next2 >>>= 8;
            i4 = i9;
        }
    }

    public void clear() {
        this.nextGaussian = Double.NaN;
    }

    public abstract int next(int i);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public boolean nextBoolean() {
        return next(1) != 0;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytesFill(bArr, 0, bArr.length);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public double nextDouble() {
        return ((next(26) << 26) | next(26)) * 2.220446049250313E-16d;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public float nextFloat() {
        return next(23) * 1.1920929E-7f;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public double nextGaussian() {
        if (!Double.isNaN(this.nextGaussian)) {
            double d = this.nextGaussian;
            this.nextGaussian = Double.NaN;
            return d;
        }
        double nextDouble = nextDouble() * 6.283185307179586d;
        double sqrt = FastMath.sqrt(FastMath.log(nextDouble()) * (-2.0d));
        double cos = FastMath.cos(nextDouble) * sqrt;
        this.nextGaussian = sqrt * FastMath.sin(nextDouble);
        return cos;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public int nextInt() {
        return next(32);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public long nextLong() {
        return (next(32) << 32) | (next(32) & 4294967295L);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(int i);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(long j);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(int[] iArr);

    public void nextBytes(byte[] bArr, int i, int i2) {
        if (i >= 0 && i < bArr.length) {
            if (i2 >= 0 && i2 <= bArr.length - i) {
                nextBytesFill(bArr, i, i2);
                return;
            }
            throw new OutOfRangeException(Integer.valueOf(i2), 0, Integer.valueOf(bArr.length - i));
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(bArr.length));
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public int nextInt(int i) throws IllegalArgumentException {
        int next;
        int i2;
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        if (((-i) & i) == i) {
            return (int) ((i * next(31)) >> 31);
        }
        do {
            next = next(31);
            i2 = next % i;
        } while ((next - i2) + (i - 1) < 0);
        return i2;
    }

    public long nextLong(long j) throws IllegalArgumentException {
        long next;
        long j2;
        if (j <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        do {
            next = (next(31) << 32) | (next(32) & 4294967295L);
            j2 = next % j;
        } while ((next - j2) + (j - 1) < 0);
        return j2;
    }
}
