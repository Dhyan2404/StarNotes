package com.alibaba.sdk.android.oss.common.utils;

import java.lang.reflect.Array;
import java.util.zip.Checksum;

/* loaded from: classes3.dex */
public class CRC64 implements Checksum {

    /* renamed from: b */
    public static final long f12949b = -3932672073523589310L;

    /* renamed from: c */
    public static final long[][] f12950c = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 256);

    /* renamed from: d */
    public static final int f12951d = 64;

    /* renamed from: a */
    public long f12952a = 0;

    static {
        for (int i = 0; i < 256; i++) {
            long j = i;
            for (int i2 = 0; i2 < 8; i2++) {
                j = (j & 1) == 1 ? (j >>> 1) ^ f12949b : j >>> 1;
            }
            f12950c[0][i] = j;
        }
        for (int i3 = 0; i3 < 256; i3++) {
            long j2 = f12950c[0][i3];
            for (int i4 = 1; i4 < 8; i4++) {
                long[][] jArr = f12950c;
                j2 = (j2 >>> 8) ^ jArr[0][(int) (255 & j2)];
                jArr[i4][i3] = j2;
            }
        }
    }

    /* renamed from: a */
    public static void m7654a(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 64; i++) {
            jArr[i] = m7655b(jArr2, jArr2[i]);
        }
    }

    /* renamed from: b */
    public static long m7655b(long[] jArr, long j) {
        int i = 0;
        long j2 = 0;
        while (j != 0) {
            if ((j & 1) == 1) {
                j2 ^= jArr[i];
            }
            j >>>= 1;
            i++;
        }
        return j2;
    }

    public static long combine(long j, long j2, long j3) {
        if (j3 == 0) {
            return j;
        }
        long[] jArr = new long[64];
        long[] jArr2 = new long[64];
        jArr2[0] = -3932672073523589310L;
        long j4 = 1;
        for (int i = 1; i < 64; i++) {
            jArr2[i] = j4;
            j4 <<= 1;
        }
        m7654a(jArr, jArr2);
        m7654a(jArr2, jArr);
        long j5 = j;
        long j6 = j3;
        do {
            m7654a(jArr, jArr2);
            if ((j6 & 1) == 1) {
                j5 = m7655b(jArr, j5);
            }
            long j7 = j6 >>> 1;
            if (j7 == 0) {
                break;
            }
            m7654a(jArr2, jArr);
            if ((j7 & 1) == 1) {
                j5 = m7655b(jArr2, j5);
            }
            j6 = j7 >>> 1;
        } while (j6 != 0);
        return j5 ^ j2;
    }

    @Override // java.util.zip.Checksum
    public long getValue() {
        return this.f12952a;
    }

    @Override // java.util.zip.Checksum
    public void reset() {
        this.f12952a = 0L;
    }

    @Override // java.util.zip.Checksum
    public void update(int i) {
        update(new byte[]{(byte) (i & 255)}, 1);
    }

    public void update(byte[] bArr, int i) {
        update(bArr, 0, i);
    }

    @Override // java.util.zip.Checksum
    public void update(byte[] bArr, int i, int i2) {
        this.f12952a = ~this.f12952a;
        int i3 = i;
        int i4 = i2;
        while (i4 >= 8) {
            long[][] jArr = f12950c;
            long[] jArr2 = jArr[7];
            long j = this.f12952a;
            this.f12952a = ((((((jArr[6][(int) ((bArr[i3 + 1] & 255) ^ ((j >>> 8) & 255))] ^ jArr2[(int) ((j & 255) ^ (bArr[i3] & 255))]) ^ jArr[5][(int) (((j >>> 16) & 255) ^ (bArr[i3 + 2] & 255))]) ^ jArr[4][(int) (((j >>> 24) & 255) ^ (bArr[i3 + 3] & 255))]) ^ jArr[3][(int) (((j >>> 32) & 255) ^ (bArr[i3 + 4] & 255))]) ^ jArr[2][(int) (((j >>> 40) & 255) ^ (bArr[i3 + 5] & 255))]) ^ jArr[1][(int) ((255 & (j >>> 48)) ^ (bArr[i3 + 6] & 255))]) ^ jArr[0][(int) ((j >>> 56) ^ (bArr[i3 + 7] & 255))];
            i3 += 8;
            i4 -= 8;
        }
        while (i4 > 0) {
            long[] jArr3 = f12950c[0];
            long j2 = this.f12952a;
            this.f12952a = (j2 >>> 8) ^ jArr3[(int) ((bArr[i3] ^ j2) & 255)];
            i3++;
            i4--;
        }
        this.f12952a = ~this.f12952a;
    }
}
