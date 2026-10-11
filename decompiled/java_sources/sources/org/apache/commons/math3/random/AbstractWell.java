package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class AbstractWell extends BitsStreamGenerator implements Serializable {
    private static final long serialVersionUID = -817701723016583596L;

    /* renamed from: i1 */
    protected final int[] f109572i1;

    /* renamed from: i2 */
    protected final int[] f109573i2;

    /* renamed from: i3 */
    protected final int[] f109574i3;
    protected final int[] iRm1;
    protected final int[] iRm2;
    protected int index;

    /* renamed from: v */
    protected final int[] f109575v;

    public AbstractWell(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, (int[]) null);
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator
    public abstract int next(int i);

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int i) {
        setSeed(new int[]{i});
    }

    public AbstractWell(int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, new int[]{i5});
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int[] iArr) {
        if (iArr == null) {
            setSeed(System.currentTimeMillis() + System.identityHashCode(this));
            return;
        }
        int[] iArr2 = this.f109575v;
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(iArr.length, iArr2.length));
        if (iArr.length < this.f109575v.length) {
            int length = iArr.length;
            while (true) {
                int[] iArr3 = this.f109575v;
                if (length >= iArr3.length) {
                    break;
                }
                long j = iArr3[length - iArr.length];
                iArr3[length] = (int) ((((j ^ (j >> 30)) * 1812433253) + length) & 4294967295L);
                length++;
            }
        }
        this.index = 0;
        clear();
    }

    public AbstractWell(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = ((i + 32) - 1) / 32;
        this.f109575v = new int[i5];
        this.index = 0;
        this.iRm1 = new int[i5];
        this.iRm2 = new int[i5];
        this.f109572i1 = new int[i5];
        this.f109573i2 = new int[i5];
        this.f109574i3 = new int[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i6 + i5;
            this.iRm1[i6] = (i7 - 1) % i5;
            this.iRm2[i6] = (i7 - 2) % i5;
            this.f109572i1[i6] = (i6 + i2) % i5;
            this.f109573i2[i6] = (i6 + i3) % i5;
            this.f109574i3[i6] = (i6 + i4) % i5;
        }
        setSeed(iArr);
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(long j) {
        setSeed(new int[]{(int) (j >>> 32), (int) (j & 4294967295L)});
    }

    public AbstractWell(int i, int i2, int i3, int i4, long j) {
        this(i, i2, i3, i4, new int[]{(int) (j >>> 32), (int) (j & 4294967295L)});
    }
}
