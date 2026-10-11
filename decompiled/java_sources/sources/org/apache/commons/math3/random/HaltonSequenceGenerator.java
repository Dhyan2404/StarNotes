package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathUtils;

/* loaded from: classes12.dex */
public class HaltonSequenceGenerator implements RandomVectorGenerator {

    /* renamed from: e */
    public static final int[] f109586e = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173};

    /* renamed from: f */
    public static final int[] f109587f = {1, 2, 3, 3, 8, 11, 12, 14, 7, 18, 12, 13, 17, 18, 29, 14, 18, 43, 41, 44, 40, 30, 47, 65, 71, 28, 40, 60, 79, 89, 56, 50, 52, 61, 108, 56, 66, 63, 60, 66};

    /* renamed from: a */
    public final int f109588a;

    /* renamed from: b */
    public int f109589b;

    /* renamed from: c */
    public final int[] f109590c;

    /* renamed from: d */
    public final int[] f109591d;

    public HaltonSequenceGenerator(int i) throws OutOfRangeException {
        this(i, f109586e, f109587f);
    }

    public int getNextIndex() {
        return this.f109589b;
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        double[] dArr = new double[this.f109588a];
        for (int i = 0; i < this.f109588a; i++) {
            int i2 = this.f109589b;
            double d = this.f109590c[i];
            double d2 = 1.0d;
            while (true) {
                d2 /= d;
                if (i2 > 0) {
                    int i3 = this.f109590c[i];
                    dArr[i] = dArr[i] + (scramble(i, 0, i3, i2 % i3) * d2);
                    int i4 = this.f109590c[i];
                    i2 /= i4;
                    d = i4;
                }
            }
        }
        this.f109589b++;
        return dArr;
    }

    public int scramble(int i, int i2, int i3, int i4) {
        int[] iArr = this.f109591d;
        return iArr != null ? (iArr[i] * i4) % i3 : i4;
    }

    public double[] skipTo(int i) throws NotPositiveException {
        this.f109589b = i;
        return nextVector();
    }

    public HaltonSequenceGenerator(int i, int[] iArr, int[] iArr2) throws NullArgumentException, OutOfRangeException, DimensionMismatchException {
        this.f109589b = 0;
        MathUtils.checkNotNull(iArr);
        if (i >= 1 && i <= iArr.length) {
            if (iArr2 != null && iArr2.length != iArr.length) {
                throw new DimensionMismatchException(iArr2.length, iArr.length);
            }
            this.f109588a = i;
            this.f109590c = (int[]) iArr.clone();
            this.f109591d = iArr2 == null ? null : (int[]) iArr2.clone();
            this.f109589b = 0;
            return;
        }
        throw new OutOfRangeException(Integer.valueOf(i), 1, Integer.valueOf(f109586e.length));
    }
}
