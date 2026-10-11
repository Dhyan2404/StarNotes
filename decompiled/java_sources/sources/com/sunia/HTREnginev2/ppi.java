package com.sunia.HTREnginev2;

/* loaded from: classes10.dex */
public class ppi {

    /* renamed from: g */
    public static final int f81083g = 5;

    /* renamed from: h */
    public static final int f81084h = 3;

    /* renamed from: i */
    public static final int f81085i = 31;

    /* renamed from: j */
    public static final int f81086j = 992;

    /* renamed from: k */
    public static final int f81087k = 31744;

    /* renamed from: l */
    public static final int f81088l = 32;

    /* renamed from: a */
    public byte[] f81089a;

    /* renamed from: b */
    public int[] f81090b;

    /* renamed from: c */
    public int f81091c;

    /* renamed from: d */
    public int f81092d;

    /* renamed from: e */
    public byte[] f81093e;

    /* renamed from: f */
    public int f81094f;

    public ppi(byte[] bArr) {
        this(bArr, -1);
    }

    /* renamed from: a */
    public final int m56355a(int i) {
        return this.f81093e[((i >> 9) & 31744) + ((i >> 6) & 992) + ((i >> 3) & 31)] & 255;
    }

    /* renamed from: b */
    public final int m56356b(int i, int i2, int i3) {
        return this.f81093e[((i << 7) & 31744) + ((i2 << 2) & 992) + ((i3 >> 3) & 31)] & 255;
    }

    /* renamed from: c */
    public void m56357c(int[] iArr) {
        int i;
        int i2;
        int i3;
        for (int i4 = 0; i4 < this.f81091c; i4++) {
            if (i4 != this.f81094f) {
                byte[] bArr = this.f81089a;
                if (bArr != null) {
                    int i5 = i4 * 4;
                    i2 = bArr[i5] & 255;
                    i3 = bArr[i5 + 1] & 255;
                    i = bArr[i5 + 2];
                } else {
                    int[] iArr2 = this.f81090b;
                    if (iArr2 == null) {
                        throw new IllegalStateException("colormap == null");
                    }
                    i = iArr2[i4];
                    i2 = (i >> 16) & 255;
                    i3 = (i >> 8) & 255;
                }
                int i6 = i & 255;
                int i7 = i2 - 4;
                int i8 = i3 - 4;
                int i9 = i6 - 4;
                int i10 = (i7 * i7) + (i8 * i8) + (i9 * i9);
                int i11 = (64 - (i2 << 3)) * 2;
                int i12 = (64 - (i3 << 3)) * 2;
                int i13 = (64 - (i6 << 3)) * 2;
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    int i16 = 32;
                    if (i14 < 32) {
                        int i17 = i10;
                        int i18 = i12;
                        int i19 = 0;
                        while (i19 < i16) {
                            int i20 = i13;
                            int i21 = i17;
                            int i22 = 0;
                            while (i22 < i16) {
                                if (i4 == 0 || iArr[i15] > i21) {
                                    iArr[i15] = i21;
                                    this.f81093e[i15] = (byte) i4;
                                }
                                i21 += i20;
                                i22++;
                                i15++;
                                i20 += 128;
                                i16 = 32;
                            }
                            i17 += i18;
                            i19++;
                            i18 += 128;
                            i16 = 32;
                        }
                        i10 += i11;
                        i14++;
                        i11 += 128;
                    }
                }
            }
        }
    }

    public ppi(int[] iArr) {
        this(iArr, -1);
    }

    public ppi(byte[] bArr, int i) {
        this.f81094f = -1;
        this.f81089a = bArr;
        this.f81091c = bArr.length / 4;
        this.f81094f = i;
        this.f81093e = new byte[32768];
        m56357c(new int[32768]);
    }

    public ppi(int[] iArr, int i) {
        this.f81094f = -1;
        this.f81090b = iArr;
        this.f81091c = iArr.length;
        this.f81094f = i;
        this.f81093e = new byte[32768];
        m56357c(new int[32768]);
    }
}
