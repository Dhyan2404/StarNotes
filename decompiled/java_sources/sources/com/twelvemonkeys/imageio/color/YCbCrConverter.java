package com.twelvemonkeys.imageio.color;

/* loaded from: classes10.dex */
public final class YCbCrConverter {

    /* renamed from: a */
    public static final int f94026a = 16;

    /* renamed from: b */
    public static final int f94027b = 255;

    /* renamed from: c */
    public static final int f94028c = 128;

    /* renamed from: d */
    public static final int f94029d = 32768;

    /* renamed from: e */
    public static final int[] f94030e = new int[256];

    /* renamed from: f */
    public static final int[] f94031f = new int[256];

    /* renamed from: g */
    public static final int[] f94032g = new int[256];

    /* renamed from: h */
    public static final int[] f94033h = new int[256];

    static {
        m60446a();
    }

    /* renamed from: a */
    public static void m60446a() {
        if (ColorSpaces.f94013a) {
            System.err.println("Building YCC conversion table");
        }
        int i = 0;
        int i2 = -128;
        while (i <= 255) {
            double d = i2;
            f94030e[i] = ((int) ((91881.972d * d) + 32768.0d)) >> 16;
            f94031f[i] = ((int) ((d * 116130.292d) + 32768.0d)) >> 16;
            f94032g[i] = (-46802) * i2;
            f94033h[i] = (i2 * (-22554)) + 32768;
            i++;
            i2++;
        }
    }

    /* renamed from: b */
    public static byte m60447b(int i) {
        return (byte) Math.max(0, Math.min(255, i));
    }

    public static void convertYCbCr2RGB(byte[] bArr, byte[] bArr2, double[] dArr, double[] dArr2, int i) {
        double d;
        double d2;
        double d3;
        if (dArr2 == null) {
            d = bArr[i] & 255;
            d2 = (bArr[i + 1] & 255) - 128;
            d3 = (bArr[i + 2] & 255) - 128;
        } else {
            double d4 = bArr[i] & 255;
            double d5 = dArr2[0];
            d = ((d4 - d5) * 255.0d) / (dArr2[1] - d5);
            double d6 = bArr[i + 1] & 255;
            double d7 = dArr2[2];
            d2 = ((d6 - d7) * 127.0d) / (dArr2[3] - d7);
            double d8 = bArr[i + 2] & 255;
            double d9 = dArr2[4];
            d3 = ((d8 - d9) * 127.0d) / (dArr2[5] - d9);
        }
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        int round = (int) Math.round((d3 * (2.0d - (d10 * 2.0d))) + d);
        int round2 = (int) Math.round((d2 * (2.0d - (d12 * 2.0d))) + d);
        int round3 = (int) Math.round(((d - (d10 * round)) - (d12 * round2)) / d11);
        bArr2[i] = m60447b(round);
        bArr2[i + 2] = m60447b(round2);
        bArr2[i + 1] = m60447b(round3);
    }

    public static void convertYCbCr2RGB(byte[] bArr, byte[] bArr2, int i) {
        int i2 = bArr[i] & 255;
        int i3 = i + 2;
        int i4 = bArr[i3] & 255;
        int i5 = i + 1;
        int i6 = bArr[i5] & 255;
        bArr2[i] = m60447b(f94030e[i4] + i2);
        bArr2[i5] = m60447b(((f94033h[i6] + f94032g[i4]) >> 16) + i2);
        bArr2[i3] = m60447b(i2 + f94031f[i6]);
    }
}
