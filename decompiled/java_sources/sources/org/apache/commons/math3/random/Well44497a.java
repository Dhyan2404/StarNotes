package org.apache.commons.math3.random;

import com.fasterxml.jackson.core.JsonParser;

/* loaded from: classes12.dex */
public class Well44497a extends AbstractWell {

    /* renamed from: K */
    private static final int f109636K = 44497;

    /* renamed from: M1 */
    private static final int f109637M1 = 23;

    /* renamed from: M2 */
    private static final int f109638M2 = 481;

    /* renamed from: M3 */
    private static final int f109639M3 = 229;
    private static final long serialVersionUID = -3859207588353972099L;

    public Well44497a() {
        super(f109636K, 23, f109638M2, 229);
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
        int i9 = (iArr2[i3] & JsonParser.f21215g) ^ (iArr2[i4] & 32767);
        int i10 = (i5 ^ (i5 << 24)) ^ (i6 ^ (i6 >>> 30));
        int i11 = ((i7 << 10) ^ i7) ^ (i8 << 26);
        int i12 = i10 ^ i11;
        int i13 = ((i11 << 9) ^ (i11 >>> 23)) & (-67108865);
        if ((i11 & 131072) != 0) {
            i13 ^= -1221985044;
        }
        int i14 = (((i10 ^ (i10 >>> 20)) ^ i9) ^ i13) ^ i12;
        iArr2[i2] = i12;
        iArr2[i3] = i14;
        iArr2[i4] = iArr2[i4] & JsonParser.f21215g;
        this.index = i3;
        return i14 >>> (32 - i);
    }

    public Well44497a(int i) {
        super(f109636K, 23, f109638M2, 229, i);
    }

    public Well44497a(int[] iArr) {
        super(f109636K, 23, f109638M2, 229, iArr);
    }

    public Well44497a(long j) {
        super(f109636K, 23, f109638M2, 229, j);
    }
}
