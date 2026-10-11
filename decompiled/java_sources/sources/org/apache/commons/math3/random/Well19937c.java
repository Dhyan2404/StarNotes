package org.apache.commons.math3.random;

/* loaded from: classes12.dex */
public class Well19937c extends AbstractWell {

    /* renamed from: K */
    private static final int f109632K = 19937;

    /* renamed from: M1 */
    private static final int f109633M1 = 70;

    /* renamed from: M2 */
    private static final int f109634M2 = 179;

    /* renamed from: M3 */
    private static final int f109635M3 = 449;
    private static final long serialVersionUID = -7203498180754925124L;

    public Well19937c() {
        super(f109632K, 70, 179, f109635M3);
    }

    @Override // org.apache.commons.math3.random.AbstractWell, org.apache.commons.math3.random.BitsStreamGenerator
    public int next(int i) {
        int[] iArr = this.iRm1;
        int i2 = this.index;
        int i3 = iArr[i2];
        int i4 = this.iRm2[i2];
        int[] iArr2 = this.f109575v;
        int i5 = iArr2[i2];
        int i6 = iArr2[this.f109572i1[i2]];
        int i7 = iArr2[this.f109573i2[i2]];
        int i8 = iArr2[this.f109574i3[i2]];
        int i9 = (i5 ^ (i5 << 25)) ^ (i6 ^ (i6 >>> 27));
        int i10 = (i7 >>> 9) ^ ((i8 >>> 1) ^ i8);
        int i11 = i9 ^ i10;
        int i12 = (((i9 ^ (i9 << 9)) ^ ((iArr2[i3] & Integer.MIN_VALUE) ^ (Integer.MAX_VALUE & iArr2[i4]))) ^ (i10 ^ (i10 << 21))) ^ ((i11 >>> 21) ^ i11);
        iArr2[i2] = i11;
        iArr2[i3] = i12;
        iArr2[i4] = iArr2[i4] & Integer.MIN_VALUE;
        this.index = i3;
        int i13 = ((i12 << 7) & (-462547200)) ^ i12;
        return (i13 ^ ((i13 << 15) & (-1685684224))) >>> (32 - i);
    }

    public Well19937c(int i) {
        super(f109632K, 70, 179, f109635M3, i);
    }

    public Well19937c(int[] iArr) {
        super(f109632K, 70, 179, f109635M3, iArr);
    }

    public Well19937c(long j) {
        super(f109632K, 70, 179, f109635M3, j);
    }
}
