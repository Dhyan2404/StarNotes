package org.apache.commons.math3.random;

import com.caverock.androidsvg.SVG;
import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public class MersenneTwister extends BitsStreamGenerator implements Serializable {

    /* renamed from: M */
    private static final int f109592M = 397;
    private static final int[] MAG01 = {0, -1727483681};

    /* renamed from: N */
    private static final int f109593N = 624;
    private static final long serialVersionUID = 8661194735290153518L;

    /* renamed from: mt */
    private int[] f109594mt;
    private int mti;

    public MersenneTwister() {
        this.f109594mt = new int[624];
        setSeed(System.currentTimeMillis() + System.identityHashCode(this));
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator
    public int next(int i) {
        int i2;
        if (this.mti >= 624) {
            int i3 = this.f109594mt[0];
            int i4 = 0;
            while (true) {
                i2 = 227;
                if (i4 >= 227) {
                    break;
                }
                int[] iArr = this.f109594mt;
                int i5 = i4 + 1;
                int i6 = iArr[i5];
                int i7 = (i3 & Integer.MIN_VALUE) | (Integer.MAX_VALUE & i6);
                iArr[i4] = MAG01[i7 & 1] ^ (iArr[i4 + f109592M] ^ (i7 >>> 1));
                i4 = i5;
                i3 = i6;
            }
            while (i2 < 623) {
                int[] iArr2 = this.f109594mt;
                int i8 = i2 + 1;
                int i9 = iArr2[i8];
                int i10 = (i3 & Integer.MIN_VALUE) | (i9 & Integer.MAX_VALUE);
                iArr2[i2] = MAG01[i10 & 1] ^ (iArr2[i2 - 227] ^ (i10 >>> 1));
                i2 = i8;
                i3 = i9;
            }
            int[] iArr3 = this.f109594mt;
            int i11 = (i3 & Integer.MIN_VALUE) | (Integer.MAX_VALUE & iArr3[0]);
            iArr3[623] = MAG01[i11 & 1] ^ (iArr3[396] ^ (i11 >>> 1));
            this.mti = 0;
        }
        int[] iArr4 = this.f109594mt;
        int i12 = this.mti;
        this.mti = i12 + 1;
        int i13 = iArr4[i12];
        int i14 = i13 ^ (i13 >>> 11);
        int i15 = i14 ^ ((i14 << 7) & (-1658038656));
        int i16 = i15 ^ ((i15 << 15) & (-272236544));
        return (i16 ^ (i16 >>> 18)) >>> (32 - i);
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int i) {
        long j = i;
        this.f109594mt[0] = (int) j;
        int i2 = 1;
        while (true) {
            this.mti = i2;
            int i3 = this.mti;
            if (i3 < 624) {
                j = (((j ^ (j >> 30)) * 1812433253) + i3) & 4294967295L;
                this.f109594mt[i3] = (int) j;
                i2 = i3 + 1;
            } else {
                clear();
                return;
            }
        }
    }

    public MersenneTwister(int i) {
        this.f109594mt = new int[624];
        setSeed(i);
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int[] iArr) {
        if (iArr == null) {
            setSeed(System.currentTimeMillis() + System.identityHashCode(this));
            return;
        }
        setSeed(19650218);
        int i = 1;
        int i2 = 0;
        for (int max = FastMath.max(624, iArr.length); max != 0; max--) {
            int[] iArr2 = this.f109594mt;
            int i3 = iArr2[i];
            long j = (i3 & 2147483647L) | (i3 < 0 ? SVG.f15810R : 0L);
            int i4 = iArr2[i - 1];
            long j2 = (i4 & 2147483647L) | (i4 < 0 ? SVG.f15810R : 0L);
            iArr2[i] = (int) (((((j2 ^ (j2 >> 30)) * 1664525) ^ j) + iArr[i2] + i2) & 4294967295L);
            i++;
            i2++;
            if (i >= 624) {
                iArr2[0] = iArr2[623];
                i = 1;
            }
            if (i2 >= iArr.length) {
                i2 = 0;
            }
        }
        for (int i5 = 623; i5 != 0; i5--) {
            int[] iArr3 = this.f109594mt;
            int i6 = iArr3[i];
            long j3 = (i6 < 0 ? SVG.f15810R : 0L) | (i6 & 2147483647L);
            int i7 = iArr3[i - 1];
            long j4 = (i7 & 2147483647L) | (i7 < 0 ? SVG.f15810R : 0L);
            iArr3[i] = (int) (((j3 ^ ((j4 ^ (j4 >> 30)) * 1566083941)) - i) & 4294967295L);
            i++;
            if (i >= 624) {
                iArr3[0] = iArr3[623];
                i = 1;
            }
        }
        this.f109594mt[0] = Integer.MIN_VALUE;
        clear();
    }

    public MersenneTwister(int[] iArr) {
        this.f109594mt = new int[624];
        setSeed(iArr);
    }

    public MersenneTwister(long j) {
        this.f109594mt = new int[624];
        setSeed(j);
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(long j) {
        setSeed(new int[]{(int) (j >>> 32), (int) (j & 4294967295L)});
    }
}
