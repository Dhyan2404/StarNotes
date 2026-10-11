package com.google.zxing.qrcode.decoder;

import com.google.zxing.qrcode.decoder.Version;

/* renamed from: com.google.zxing.qrcode.decoder.b */
/* loaded from: classes4.dex */
public final class C6913b {

    /* renamed from: a */
    public final int f38762a;

    /* renamed from: b */
    public final byte[] f38763b;

    public C6913b(int i, byte[] bArr) {
        this.f38762a = i;
        this.f38763b = bArr;
    }

    /* renamed from: b */
    public static C6913b[] m30763b(byte[] bArr, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length != version.getTotalCodewords()) {
            throw new IllegalArgumentException();
        }
        Version.ECBlocks eCBlocksForLevel = version.getECBlocksForLevel(errorCorrectionLevel);
        Version.ECB[] eCBlocks = eCBlocksForLevel.getECBlocks();
        int i = 0;
        for (Version.ECB ecb : eCBlocks) {
            i += ecb.getCount();
        }
        C6913b[] c6913bArr = new C6913b[i];
        int i2 = 0;
        for (Version.ECB ecb2 : eCBlocks) {
            int i3 = 0;
            while (i3 < ecb2.getCount()) {
                int dataCodewords = ecb2.getDataCodewords();
                c6913bArr[i2] = new C6913b(dataCodewords, new byte[eCBlocksForLevel.getECCodewordsPerBlock() + dataCodewords]);
                i3++;
                i2++;
            }
        }
        int length = c6913bArr[0].f38763b.length;
        int i4 = i - 1;
        while (i4 >= 0 && c6913bArr[i4].f38763b.length != length) {
            i4--;
        }
        int i5 = i4 + 1;
        int eCCodewordsPerBlock = length - eCBlocksForLevel.getECCodewordsPerBlock();
        int i6 = 0;
        for (int i7 = 0; i7 < eCCodewordsPerBlock; i7++) {
            int i8 = 0;
            while (i8 < i2) {
                c6913bArr[i8].f38763b[i7] = bArr[i6];
                i8++;
                i6++;
            }
        }
        int i9 = i5;
        while (i9 < i2) {
            c6913bArr[i9].f38763b[eCCodewordsPerBlock] = bArr[i6];
            i9++;
            i6++;
        }
        int length2 = c6913bArr[0].f38763b.length;
        while (eCCodewordsPerBlock < length2) {
            int i10 = 0;
            while (i10 < i2) {
                c6913bArr[i10].f38763b[i10 < i5 ? eCCodewordsPerBlock : eCCodewordsPerBlock + 1] = bArr[i6];
                i10++;
                i6++;
            }
            eCCodewordsPerBlock++;
        }
        return c6913bArr;
    }

    /* renamed from: a */
    public byte[] m30764a() {
        return this.f38763b;
    }

    /* renamed from: c */
    public int m30765c() {
        return this.f38762a;
    }
}
