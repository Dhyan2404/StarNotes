package org.apache.commons.compress.compressors.bzip2;

import java.util.Arrays;
import java.util.BitSet;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorOutputStream;

/* renamed from: org.apache.commons.compress.compressors.bzip2.a */
/* loaded from: classes12.dex */
public class C18880a {

    /* renamed from: m */
    public static final int f106071m = 65537;

    /* renamed from: n */
    public static final int f106072n = 1000;

    /* renamed from: o */
    public static final int f106073o = 100;

    /* renamed from: q */
    public static final int f106075q = 10;

    /* renamed from: s */
    public static final int f106077s = 20;

    /* renamed from: t */
    public static final int f106078t = 10;

    /* renamed from: u */
    public static final int f106079u = 30;

    /* renamed from: v */
    public static final int f106080v = 2097152;

    /* renamed from: w */
    public static final int f106081w = -2097153;

    /* renamed from: a */
    public int f106082a;

    /* renamed from: b */
    public int f106083b;

    /* renamed from: c */
    public boolean f106084c;

    /* renamed from: d */
    public final int[] f106085d;

    /* renamed from: e */
    public final int[] f106086e;

    /* renamed from: f */
    public final int[] f106087f;

    /* renamed from: g */
    public final int[] f106088g;

    /* renamed from: h */
    public final int[] f106089h;

    /* renamed from: i */
    public final boolean[] f106090i;

    /* renamed from: j */
    public final int[] f106091j;

    /* renamed from: k */
    public final char[] f106092k;

    /* renamed from: l */
    public int[] f106093l;

    /* renamed from: p */
    public static final int f106074p = Math.max(1000, 100);

    /* renamed from: r */
    public static final int[] f106076r = {1, 4, 13, 40, 121, 364, 1093, 3280, 9841, 29524, 88573, 265720, 797161, 2391484};

    public C18880a(BZip2CompressorOutputStream.C18879a c18879a) {
        int i = f106074p;
        this.f106085d = new int[i];
        this.f106086e = new int[i];
        this.f106087f = new int[1000];
        this.f106088g = new int[256];
        this.f106089h = new int[256];
        this.f106090i = new boolean[256];
        this.f106091j = new int[65537];
        this.f106092k = c18879a.f106068s;
    }

    /* renamed from: n */
    public static int m66657n(int i, int i2, int i3) {
        if (i < i2) {
            if (i2 >= i3) {
                if (i >= i3) {
                    return i;
                }
                return i3;
            }
            return i2;
        }
        if (i2 <= i3) {
            if (i <= i3) {
                return i;
            }
            return i3;
        }
        return i2;
    }

    /* renamed from: o */
    public static void m66658o(int[] iArr, int i, int i2, int i3) {
        int i4 = i3 + i;
        while (i < i4) {
            int i5 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i5;
            i2++;
            i++;
        }
    }

    /* renamed from: a */
    public void m66659a(BZip2CompressorOutputStream.C18879a c18879a, int i) {
        this.f106083b = i * 30;
        this.f106082a = 0;
        this.f106084c = true;
        if (i + 1 < 10000) {
            m66662d(c18879a, i);
        } else {
            m66671m(c18879a, i);
            if (this.f106084c && this.f106082a > this.f106083b) {
                m66662d(c18879a, i);
            }
        }
        int[] iArr = c18879a.f106067r;
        c18879a.f106069t = -1;
        for (int i2 = 0; i2 <= i; i2++) {
            if (iArr[i2] == 0) {
                c18879a.f106069t = i2;
                return;
            }
        }
    }

    /* renamed from: b */
    public final void m66660b(int[] iArr, int[] iArr2, int i, int i2) {
        int i3;
        char c = 0;
        m66665g(0, i, i2);
        long j = 0;
        int i4 = 1;
        long j2 = 0;
        int i5 = 1;
        while (i5 > 0) {
            i5--;
            int[] m66664f = m66664f(i5);
            int i6 = m66664f[c];
            int i7 = m66664f[i4];
            if (i7 - i6 < 10) {
                m66661c(iArr, iArr2, i6, i7);
            } else {
                j2 = ((j2 * 7621) + 1) % 32768;
                long j3 = j2 % 3;
                long j4 = j3 == j ? iArr2[iArr[i6]] : j3 == 1 ? iArr2[iArr[(i6 + i7) >>> i4]] : iArr2[iArr[i7]];
                int i8 = i7;
                int i9 = i8;
                int i10 = i6;
                int i11 = i10;
                while (true) {
                    if (i11 <= i8) {
                        int i12 = iArr2[iArr[i11]] - ((int) j4);
                        if (i12 == 0) {
                            m66666h(iArr, i11, i10);
                            i10++;
                        } else if (i12 <= 0) {
                        }
                        i11++;
                    }
                    i3 = i9;
                    while (i11 <= i8) {
                        int i13 = iArr2[iArr[i8]] - ((int) j4);
                        if (i13 == 0) {
                            m66666h(iArr, i8, i3);
                            i3--;
                            i8--;
                        } else if (i13 < 0) {
                            break;
                        } else {
                            i8--;
                        }
                    }
                    if (i11 > i8) {
                        break;
                    }
                    m66666h(iArr, i11, i8);
                    i11++;
                    i8--;
                    i9 = i3;
                    i4 = 1;
                }
                if (i3 < i10) {
                    c = 0;
                    j = 0;
                    i4 = 1;
                } else {
                    int min = Math.min(i10 - i6, i11 - i10);
                    m66667i(iArr, i6, i11 - min, min);
                    int i14 = i7 - i3;
                    int i15 = i3 - i8;
                    int min2 = Math.min(i14, i15);
                    m66667i(iArr, i8 + 1, (i7 - min2) + 1, min2);
                    int i16 = ((i11 + i6) - i10) - 1;
                    int i17 = (i7 - i15) + 1;
                    if (i16 - i6 > i7 - i17) {
                        int i18 = i5 + 1;
                        m66665g(i5, i6, i16);
                        m66665g(i18, i17, i7);
                        i5 = i18 + 1;
                    } else {
                        int i19 = i5 + 1;
                        m66665g(i5, i17, i7);
                        m66665g(i19, i6, i16);
                        i5 = i19 + 1;
                    }
                    i4 = 1;
                    c = 0;
                    j = 0;
                }
            }
        }
    }

    /* renamed from: c */
    public final void m66661c(int[] iArr, int[] iArr2, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 - i > 3) {
            for (int i3 = i2 - 4; i3 >= i; i3--) {
                int i4 = iArr[i3];
                int i5 = iArr2[i4];
                int i6 = i3 + 4;
                while (i6 <= i2) {
                    int i7 = iArr[i6];
                    if (i5 > iArr2[i7]) {
                        iArr[i6 - 4] = i7;
                        i6 += 4;
                    }
                }
                iArr[i6 - 4] = i4;
            }
        }
        for (int i8 = i2 - 1; i8 >= i; i8--) {
            int i9 = iArr[i8];
            int i10 = iArr2[i9];
            int i11 = i8 + 1;
            while (i11 <= i2) {
                int i12 = iArr[i11];
                if (i10 > iArr2[i12]) {
                    iArr[i11 - 1] = i12;
                    i11++;
                }
            }
            iArr[i11 - 1] = i9;
        }
    }

    /* renamed from: d */
    public final void m66662d(BZip2CompressorOutputStream.C18879a c18879a, int i) {
        byte[] bArr = c18879a.f106066q;
        int i2 = i + 1;
        bArr[0] = bArr[i2];
        m66663e(c18879a.f106067r, bArr, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            c18879a.f106067r[i3] = r0[i3] - 1;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            int[] iArr = c18879a.f106067r;
            if (iArr[i4] == -1) {
                iArr[i4] = i;
                return;
            }
        }
    }

    /* renamed from: e */
    public final void m66663e(int[] iArr, byte[] bArr, int i) {
        int i2;
        int[] iArr2 = new int[257];
        int[] m66668j = m66668j();
        for (int i3 = 0; i3 < i; i3++) {
            m66668j[i3] = 0;
        }
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = bArr[i4] & 255;
            iArr2[i5] = iArr2[i5] + 1;
        }
        for (int i6 = 1; i6 < 257; i6++) {
            iArr2[i6] = iArr2[i6] + iArr2[i6 - 1];
        }
        for (int i7 = 0; i7 < i; i7++) {
            int i8 = bArr[i7] & 255;
            int i9 = iArr2[i8] - 1;
            iArr2[i8] = i9;
            iArr[i9] = i7;
        }
        BitSet bitSet = new BitSet(i + 64);
        for (int i10 = 0; i10 < 256; i10++) {
            bitSet.set(iArr2[i10]);
        }
        for (int i11 = 0; i11 < 32; i11++) {
            int i12 = (i11 * 2) + i;
            bitSet.set(i12);
            bitSet.clear(i12 + 1);
        }
        int i13 = 1;
        do {
            int i14 = 0;
            for (int i15 = 0; i15 < i; i15++) {
                if (bitSet.get(i15)) {
                    i14 = i15;
                }
                int i16 = iArr[i15] - i13;
                if (i16 < 0) {
                    i16 += i;
                }
                m66668j[i16] = i14;
            }
            int i17 = -1;
            i2 = 0;
            while (true) {
                int nextClearBit = bitSet.nextClearBit(i17 + 1);
                int i18 = nextClearBit - 1;
                if (i18 < i && (i17 = bitSet.nextSetBit(nextClearBit + 1) - 1) < i) {
                    if (i17 > i18) {
                        i2 += (i17 - i18) + 1;
                        m66660b(iArr, m66668j, i18, i17);
                        int i19 = -1;
                        while (i18 <= i17) {
                            int i20 = m66668j[iArr[i18]];
                            if (i19 != i20) {
                                bitSet.set(i18);
                                i19 = i20;
                            }
                            i18++;
                        }
                    }
                }
            }
            i13 *= 2;
            if (i13 > i) {
                return;
            }
        } while (i2 != 0);
    }

    /* renamed from: f */
    public final int[] m66664f(int i) {
        return new int[]{this.f106085d[i], this.f106086e[i]};
    }

    /* renamed from: g */
    public final void m66665g(int i, int i2, int i3) {
        this.f106085d[i] = i2;
        this.f106086e[i] = i3;
    }

    /* renamed from: h */
    public final void m66666h(int[] iArr, int i, int i2) {
        int i3 = iArr[i];
        iArr[i] = iArr[i2];
        iArr[i2] = i3;
    }

    /* renamed from: i */
    public final void m66667i(int[] iArr, int i, int i2, int i3) {
        while (i3 > 0) {
            m66666h(iArr, i, i2);
            i++;
            i2++;
            i3--;
        }
    }

    /* renamed from: j */
    public final int[] m66668j() {
        if (this.f106093l == null) {
            this.f106093l = new int[this.f106092k.length / 2];
        }
        return this.f106093l;
    }

    /* renamed from: k */
    public final void m66669k(BZip2CompressorOutputStream.C18879a c18879a, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int[] iArr = this.f106085d;
        int[] iArr2 = this.f106086e;
        int[] iArr3 = this.f106087f;
        int[] iArr4 = c18879a.f106067r;
        byte[] bArr = c18879a.f106066q;
        iArr[0] = i;
        iArr2[0] = i2;
        iArr3[0] = i3;
        int i7 = 1;
        int i8 = 1;
        while (true) {
            int i9 = i8 - 1;
            if (i9 < 0) {
                return;
            }
            int i10 = iArr[i9];
            int i11 = iArr2[i9];
            int i12 = iArr3[i9];
            if (i11 - i10 < 20 || i12 > 10) {
                i5 = i7;
                if (m66670l(c18879a, i10, i11, i12, i4)) {
                    return;
                }
            } else {
                int i13 = i12 + 1;
                int m66657n = m66657n(bArr[iArr4[i10] + i13] & 255, bArr[iArr4[i11] + i13] & 255, bArr[iArr4[(i10 + i11) >>> i7] + i13] & 255);
                int i14 = i10;
                int i15 = i14;
                int i16 = i11;
                int i17 = i16;
                while (true) {
                    if (i14 <= i16) {
                        int i18 = iArr4[i14];
                        int i19 = (bArr[i18 + i13] & 255) - m66657n;
                        if (i19 == 0) {
                            iArr4[i14] = iArr4[i15];
                            iArr4[i15] = i18;
                            i15++;
                            i14++;
                        } else if (i19 < 0) {
                            i14++;
                        }
                    }
                    i6 = i17;
                    while (i14 <= i16) {
                        int i20 = iArr4[i16];
                        int i21 = (bArr[i20 + i13] & 255) - m66657n;
                        if (i21 != 0) {
                            if (i21 <= 0) {
                                break;
                            } else {
                                i16--;
                            }
                        } else {
                            iArr4[i16] = iArr4[i6];
                            iArr4[i6] = i20;
                            i6--;
                            i16--;
                        }
                    }
                    if (i14 > i16) {
                        break;
                    }
                    int i22 = iArr4[i14];
                    iArr4[i14] = iArr4[i16];
                    iArr4[i16] = i22;
                    i16--;
                    i17 = i6;
                    i14++;
                }
                if (i6 < i15) {
                    iArr[i9] = i10;
                    iArr2[i9] = i11;
                    iArr3[i9] = i13;
                    i8 = i9 + 1;
                    i5 = 1;
                    i7 = i5;
                } else {
                    int min = Math.min(i15 - i10, i14 - i15);
                    m66658o(iArr4, i10, i14 - min, min);
                    int i23 = i11 - i6;
                    int i24 = i6 - i16;
                    int min2 = Math.min(i23, i24);
                    i5 = 1;
                    m66658o(iArr4, i14, (i11 - min2) + 1, min2);
                    int i25 = ((i14 + i10) - i15) - 1;
                    int i26 = (i11 - i24) + 1;
                    iArr[i9] = i10;
                    iArr2[i9] = i25;
                    iArr3[i9] = i12;
                    int i27 = i9 + 1;
                    iArr[i27] = i25 + 1;
                    iArr2[i27] = i26 - 1;
                    iArr3[i27] = i13;
                    int i28 = i27 + 1;
                    iArr[i28] = i26;
                    iArr2[i28] = i11;
                    iArr3[i28] = i12;
                    i9 = i28 + 1;
                }
            }
            i8 = i9;
            i7 = i5;
        }
    }

    /* renamed from: l */
    public final boolean m66670l(BZip2CompressorOutputStream.C18879a c18879a, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = (i2 - i) + 1;
        if (i10 < 2) {
            return this.f106084c && this.f106082a > this.f106083b;
        }
        int i11 = 0;
        while (f106076r[i11] < i10) {
            i11++;
        }
        int[] iArr = c18879a.f106067r;
        char[] cArr = this.f106092k;
        byte[] bArr = c18879a.f106066q;
        int i12 = i4 + 1;
        boolean z = this.f106084c;
        int i13 = this.f106083b;
        int i14 = this.f106082a;
        loop1: while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            int i15 = f106076r[i11];
            int i16 = i + i15;
            int i17 = i16 - 1;
            while (i16 <= i2) {
                int i18 = 3;
                while (i16 <= i2) {
                    int i19 = i18 - 1;
                    if (i19 < 0) {
                        break;
                    }
                    int i20 = iArr[i16];
                    int i21 = i20 + i3;
                    int i22 = i16;
                    boolean z2 = false;
                    int i23 = 0;
                    while (true) {
                        if (z2) {
                            iArr[i22] = i23;
                            i9 = i22 - i15;
                            if (i9 <= i17) {
                                i8 = i11;
                                i6 = i15;
                                i5 = i17;
                                i7 = i19;
                                break;
                            }
                            i22 = i9;
                        } else {
                            z2 = true;
                        }
                        int i24 = iArr[i22 - i15];
                        int i25 = i24 + i3;
                        byte b = bArr[i25 + 1];
                        byte b2 = bArr[i21 + 1];
                        if (b != b2) {
                            i8 = i11;
                            i6 = i15;
                            i5 = i17;
                            i7 = i19;
                            if ((b & 255) <= (b2 & 255)) {
                                break;
                            }
                            i23 = i24;
                            i11 = i8;
                            i19 = i7;
                            i15 = i6;
                            i17 = i5;
                        } else {
                            byte b3 = bArr[i25 + 2];
                            byte b4 = bArr[i21 + 2];
                            if (b3 != b4) {
                                i8 = i11;
                                i6 = i15;
                                i5 = i17;
                                i7 = i19;
                                if ((b3 & 255) <= (b4 & 255)) {
                                    break;
                                }
                                i23 = i24;
                                i11 = i8;
                                i19 = i7;
                                i15 = i6;
                                i17 = i5;
                            } else {
                                byte b5 = bArr[i25 + 3];
                                byte b6 = bArr[i21 + 3];
                                if (b5 != b6) {
                                    i8 = i11;
                                    i6 = i15;
                                    i5 = i17;
                                    i7 = i19;
                                    if ((b5 & 255) <= (b6 & 255)) {
                                        break;
                                    }
                                    i23 = i24;
                                    i11 = i8;
                                    i19 = i7;
                                    i15 = i6;
                                    i17 = i5;
                                } else {
                                    byte b7 = bArr[i25 + 4];
                                    byte b8 = bArr[i21 + 4];
                                    if (b7 != b8) {
                                        i8 = i11;
                                        i6 = i15;
                                        i5 = i17;
                                        i7 = i19;
                                        if ((b7 & 255) <= (b8 & 255)) {
                                            break;
                                        }
                                        i23 = i24;
                                        i11 = i8;
                                        i19 = i7;
                                        i15 = i6;
                                        i17 = i5;
                                    } else {
                                        byte b9 = bArr[i25 + 5];
                                        byte b10 = bArr[i21 + 5];
                                        if (b9 != b10) {
                                            i8 = i11;
                                            i6 = i15;
                                            i5 = i17;
                                            i7 = i19;
                                            if ((b9 & 255) <= (b10 & 255)) {
                                                break;
                                            }
                                            i23 = i24;
                                            i11 = i8;
                                            i19 = i7;
                                            i15 = i6;
                                            i17 = i5;
                                        } else {
                                            int i26 = i25 + 6;
                                            byte b11 = bArr[i26];
                                            int i27 = i21 + 6;
                                            i8 = i11;
                                            byte b12 = bArr[i27];
                                            if (b11 != b12) {
                                                i6 = i15;
                                                i5 = i17;
                                                i7 = i19;
                                                if ((b11 & 255) <= (b12 & 255)) {
                                                    break;
                                                }
                                                i23 = i24;
                                                i11 = i8;
                                                i19 = i7;
                                                i15 = i6;
                                                i17 = i5;
                                            } else {
                                                int i28 = i4;
                                                while (true) {
                                                    if (i28 <= 0) {
                                                        i6 = i15;
                                                        i5 = i17;
                                                        i7 = i19;
                                                        break;
                                                    }
                                                    int i29 = i28 - 4;
                                                    int i30 = i26 + 1;
                                                    byte b13 = bArr[i30];
                                                    int i31 = i27 + 1;
                                                    i6 = i15;
                                                    byte b14 = bArr[i31];
                                                    if (b13 != b14) {
                                                        i5 = i17;
                                                        i7 = i19;
                                                        if ((b13 & 255) <= (b14 & 255)) {
                                                            break;
                                                        }
                                                    } else {
                                                        char c = cArr[i26];
                                                        char c2 = cArr[i27];
                                                        if (c != c2) {
                                                            i5 = i17;
                                                            i7 = i19;
                                                            if (c <= c2) {
                                                                break;
                                                            }
                                                        } else {
                                                            int i32 = i26 + 2;
                                                            byte b15 = bArr[i32];
                                                            int i33 = i27 + 2;
                                                            i5 = i17;
                                                            byte b16 = bArr[i33];
                                                            if (b15 != b16) {
                                                                i7 = i19;
                                                                if ((b15 & 255) <= (b16 & 255)) {
                                                                    break;
                                                                }
                                                            } else {
                                                                char c3 = cArr[i30];
                                                                char c4 = cArr[i31];
                                                                if (c3 != c4) {
                                                                    i7 = i19;
                                                                    if (c3 <= c4) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    int i34 = i26 + 3;
                                                                    byte b17 = bArr[i34];
                                                                    int i35 = i27 + 3;
                                                                    i7 = i19;
                                                                    byte b18 = bArr[i35];
                                                                    if (b17 != b18) {
                                                                        if ((b17 & 255) <= (b18 & 255)) {
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        char c5 = cArr[i32];
                                                                        char c6 = cArr[i33];
                                                                        if (c5 != c6) {
                                                                            if (c5 <= c6) {
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            int i36 = i26 + 4;
                                                                            byte b19 = bArr[i36];
                                                                            i27 += 4;
                                                                            byte b20 = bArr[i27];
                                                                            if (b19 != b20) {
                                                                                if ((b19 & 255) <= (b20 & 255)) {
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                char c7 = cArr[i34];
                                                                                char c8 = cArr[i35];
                                                                                if (c7 != c8) {
                                                                                    if (c7 <= c8) {
                                                                                        break;
                                                                                    }
                                                                                } else {
                                                                                    if (i36 >= i12) {
                                                                                        i36 -= i12;
                                                                                    }
                                                                                    i26 = i36;
                                                                                    if (i27 >= i12) {
                                                                                        i27 -= i12;
                                                                                    }
                                                                                    i14++;
                                                                                    i28 = i29;
                                                                                    i19 = i7;
                                                                                    i15 = i6;
                                                                                    i17 = i5;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                i23 = i24;
                                                i11 = i8;
                                                i19 = i7;
                                                i15 = i6;
                                                i17 = i5;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i9 = i22;
                    iArr[i9] = i20;
                    i16++;
                    i11 = i8;
                    i18 = i7;
                    i15 = i6;
                    i17 = i5;
                }
                int i37 = i11;
                int i38 = i15;
                int i39 = i17;
                if (z && i16 <= i2 && i14 > i13) {
                    break loop1;
                }
                i11 = i37;
                i15 = i38;
                i17 = i39;
            }
        }
        this.f106082a = i14;
        return z && i14 > i13;
    }

    /* renamed from: m */
    public final void m66671m(BZip2CompressorOutputStream.C18879a c18879a, int i) {
        int i2;
        int[] iArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr2 = this.f106088g;
        int[] iArr3 = this.f106089h;
        boolean[] zArr = this.f106090i;
        int[] iArr4 = this.f106091j;
        byte[] bArr = c18879a.f106066q;
        int[] iArr5 = c18879a.f106067r;
        char[] cArr = this.f106092k;
        int i7 = this.f106083b;
        boolean z = this.f106084c;
        int i8 = 0;
        Arrays.fill(iArr4, 0);
        for (int i9 = 0; i9 < 20; i9++) {
            bArr[i + i9 + 2] = bArr[(i9 % (i + 1)) + 1];
        }
        int i10 = i + 20 + 1;
        while (true) {
            i10--;
            if (i10 < 0) {
                break;
            } else {
                cArr[i10] = 0;
            }
        }
        int i11 = i + 1;
        byte b = bArr[i11];
        bArr[0] = b;
        int i12 = 255;
        int i13 = b & 255;
        while (i8 <= i) {
            i8++;
            int i14 = bArr[i8] & 255;
            int i15 = (i13 << 8) + i14;
            iArr4[i15] = iArr4[i15] + 1;
            i13 = i14;
        }
        for (int i16 = 1; i16 <= 65536; i16++) {
            iArr4[i16] = iArr4[i16] + iArr4[i16 - 1];
        }
        boolean z2 = true;
        int i17 = bArr[1] & 255;
        int i18 = 0;
        while (i18 < i) {
            int i19 = bArr[i18 + 2] & 255;
            int i20 = (i17 << 8) + i19;
            int i21 = iArr4[i20] - 1;
            iArr4[i20] = i21;
            iArr5[i21] = i18;
            i18++;
            i17 = i19;
            z2 = true;
        }
        int i22 = ((bArr[i11] & 255) << 8) + (bArr[z2 ? 1 : 0] & 255);
        int i23 = iArr4[i22] - 1;
        iArr4[i22] = i23;
        iArr5[i23] = i;
        int i24 = 256;
        while (true) {
            i24--;
            if (i24 < 0) {
                break;
            }
            zArr[i24] = false;
            iArr2[i24] = i24;
        }
        int i25 = 364;
        while (i25 != 1) {
            i25 /= 3;
            int i26 = i25;
            while (i26 <= i12) {
                int i27 = iArr2[i26];
                int i28 = iArr4[(i27 + 1) << 8] - iArr4[i27 << 8];
                int i29 = i25 - 1;
                int i30 = iArr2[i26 - i25];
                int i31 = i26;
                while (true) {
                    i6 = i7;
                    if (iArr4[(i30 + 1) << 8] - iArr4[i30 << 8] <= i28) {
                        break;
                    }
                    iArr2[i31] = i30;
                    int i32 = i31 - i25;
                    if (i32 <= i29) {
                        i31 = i32;
                        break;
                    } else {
                        i30 = iArr2[i32 - i25];
                        i31 = i32;
                        i7 = i6;
                    }
                }
                iArr2[i31] = i27;
                i26++;
                i7 = i6;
                i12 = 255;
            }
        }
        int i33 = i7;
        int i34 = 0;
        while (i34 <= i12) {
            int i35 = iArr2[i34];
            int i36 = 0;
            while (i36 <= i12) {
                int i37 = (i35 << 8) + i36;
                int i38 = iArr4[i37];
                if ((i38 & 2097152) != 2097152) {
                    int i39 = i38 & f106081w;
                    int i40 = (iArr4[i37 + 1] & f106081w) - 1;
                    if (i40 > i39) {
                        i5 = 2097152;
                        i2 = i36;
                        iArr = iArr2;
                        i3 = i33;
                        i4 = i34;
                        m66669k(c18879a, i39, i40, 2, i);
                        if (z && this.f106082a > i3) {
                            return;
                        }
                    } else {
                        i5 = 2097152;
                        i2 = i36;
                        iArr = iArr2;
                        i3 = i33;
                        i4 = i34;
                    }
                    iArr4[i37] = i38 | i5;
                } else {
                    i2 = i36;
                    iArr = iArr2;
                    i3 = i33;
                    i4 = i34;
                }
                i36 = i2 + 1;
                i33 = i3;
                i34 = i4;
                iArr2 = iArr;
                i12 = 255;
            }
            int[] iArr6 = iArr2;
            int i41 = i33;
            int i42 = i34;
            int i43 = 0;
            for (int i44 = i12; i43 <= i44; i44 = 255) {
                iArr3[i43] = iArr4[(i43 << 8) + i35] & f106081w;
                i43++;
            }
            int i45 = i35 << 8;
            int i46 = iArr4[i45] & f106081w;
            int i47 = (i35 + 1) << 8;
            int i48 = iArr4[i47] & f106081w;
            while (i46 < i48) {
                int i49 = iArr5[i46];
                int i50 = i48;
                int i51 = bArr[i49] & 255;
                if (!zArr[i51]) {
                    iArr5[iArr3[i51]] = i49 == 0 ? i : i49 - 1;
                    iArr3[i51] = iArr3[i51] + 1;
                }
                i46++;
                i48 = i50;
            }
            int i52 = 256;
            while (true) {
                i52--;
                if (i52 < 0) {
                    break;
                }
                int i53 = (i52 << 8) + i35;
                iArr4[i53] = iArr4[i53] | 2097152;
            }
            zArr[i35] = true;
            if (i42 < 255) {
                int i54 = iArr4[i45] & f106081w;
                int i55 = ((-2097153) & iArr4[i47]) - i54;
                int i56 = 0;
                while ((i55 >> i56) > 65534) {
                    i56++;
                }
                int i57 = 0;
                while (i57 < i55) {
                    int i58 = iArr5[i54 + i57];
                    char c = (char) (i57 >> i56);
                    cArr[i58] = c;
                    int i59 = i54;
                    if (i58 < 20) {
                        cArr[i58 + i + 1] = c;
                    }
                    i57++;
                    i54 = i59;
                }
            }
            i34 = i42 + 1;
            i33 = i41;
            iArr2 = iArr6;
            i12 = 255;
        }
    }
}
