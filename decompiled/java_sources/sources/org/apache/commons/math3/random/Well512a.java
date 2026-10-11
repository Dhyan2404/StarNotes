package org.apache.commons.math3.random;

/* loaded from: classes12.dex */
public class Well512a extends AbstractWell {

    /* renamed from: K */
    private static final int f109644K = 512;

    /* renamed from: M1 */
    private static final int f109645M1 = 13;

    /* renamed from: M2 */
    private static final int f109646M2 = 9;

    /* renamed from: M3 */
    private static final int f109647M3 = 5;
    private static final long serialVersionUID = -6104179812103820574L;

    public Well512a() {
        super(512, 13, 9, 5);
    }

    @Override // org.apache.commons.math3.random.AbstractWell, org.apache.commons.math3.random.BitsStreamGenerator
    public int next(int i) {
        int[] iArr = this.iRm1;
        int i2 = this.index;
        int i3 = iArr[i2];
        int[] iArr2 = this.f109575v;
        int i4 = iArr2[i2];
        int i5 = iArr2[this.f109572i1[i2]];
        int i6 = iArr2[this.f109573i2[i2]];
        int i7 = iArr2[i3];
        int i8 = (i4 ^ (i4 << 16)) ^ (i5 ^ (i5 << 15));
        int i9 = (i6 >>> 11) ^ i6;
        int i10 = i8 ^ i9;
        int i11 = (((i8 ^ (i8 << 18)) ^ (i7 ^ (i7 << 2))) ^ (i9 << 28)) ^ (((i10 << 5) & (-633066204)) ^ i10);
        iArr2[i2] = i10;
        iArr2[i3] = i11;
        this.index = i3;
        return i11 >>> (32 - i);
    }

    public Well512a(int i) {
        super(512, 13, 9, 5, i);
    }

    public Well512a(int[] iArr) {
        super(512, 13, 9, 5, iArr);
    }

    public Well512a(long j) {
        super(512, 13, 9, 5, j);
    }
}
