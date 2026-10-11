package org.apache.commons.math3.random;

/* loaded from: classes12.dex */
public class Well1024a extends AbstractWell {

    /* renamed from: K */
    private static final int f109624K = 1024;

    /* renamed from: M1 */
    private static final int f109625M1 = 3;

    /* renamed from: M2 */
    private static final int f109626M2 = 24;

    /* renamed from: M3 */
    private static final int f109627M3 = 10;
    private static final long serialVersionUID = 5680173464174485492L;

    public Well1024a() {
        super(1024, 3, 24, 10);
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
        int i7 = iArr2[this.f109574i3[i2]];
        int i8 = iArr2[i3];
        int i9 = i4 ^ (i5 ^ (i5 >>> 8));
        int i10 = ((i6 << 19) ^ i6) ^ ((i7 << 14) ^ i7);
        int i11 = i9 ^ i10;
        int i12 = ((i9 ^ (i9 << 7)) ^ ((i8 << 11) ^ i8)) ^ (i10 ^ (i10 << 13));
        iArr2[i2] = i11;
        iArr2[i3] = i12;
        this.index = i3;
        return i12 >>> (32 - i);
    }

    public Well1024a(int i) {
        super(1024, 3, 24, 10, i);
    }

    public Well1024a(int[] iArr) {
        super(1024, 3, 24, 10, iArr);
    }

    public Well1024a(long j) {
        super(1024, 3, 24, 10, j);
    }
}
