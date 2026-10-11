package com.sunia.HTREnginev2;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.LittleEndianByteArray;

@wnf
/* loaded from: classes6.dex */
public final class lmg extends AbstractC13512b4 {

    /* renamed from: e */
    public static final HashFunction f76607e = new lmg();

    /* renamed from: f */
    public static final long f76608f = -6505348102511208375L;

    /* renamed from: g */
    public static final long f76609g = -8261664234251669945L;

    /* renamed from: h */
    public static final long f76610h = -4288712594273399085L;

    /* renamed from: i */
    public static final long f76611i = -4132994306676758123L;

    @VisibleForTesting
    /* renamed from: a */
    public static long m55451a(byte[] bArr, int i, int i2) {
        long m55455e = i2 <= 32 ? m55455e(bArr, i, i2, -1397348546323613475L) : i2 <= 64 ? m55454d(bArr, i, i2) : m55452b(bArr, i, i2);
        long j = f76608f;
        long m27146b = i2 >= 8 ? LittleEndianByteArray.m27146b(bArr, i) : -6505348102511208375L;
        if (i2 >= 9) {
            j = LittleEndianByteArray.m27146b(bArr, (i + i2) - 8);
        }
        long m55453c = m55453c(m55455e + j, m27146b);
        return (m55453c == 0 || m55453c == 1) ? m55453c - 2 : m55453c;
    }

    /* renamed from: b */
    public static long m55452b(byte[] bArr, int i, int i2) {
        long m27146b = LittleEndianByteArray.m27146b(bArr, i);
        int i3 = i + i2;
        long m27146b2 = LittleEndianByteArray.m27146b(bArr, i3 - 16) ^ f76609g;
        long m27146b3 = LittleEndianByteArray.m27146b(bArr, i3 - 56) ^ f76608f;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long j = i2;
        m55457g(bArr, i3 - 64, j, m27146b2, jArr);
        m55457g(bArr, i3 - 32, j * f76609g, f76608f, jArr2);
        long m55456f = m27146b3 + (m55456f(jArr[1]) * f76609g);
        long rotateRight = Long.rotateRight(m55456f + m27146b, 39) * f76609g;
        long rotateRight2 = Long.rotateRight(m27146b2, 33) * f76609g;
        int i4 = i;
        int i5 = (i2 - 1) & (-64);
        while (true) {
            long rotateRight3 = Long.rotateRight(rotateRight + rotateRight2 + jArr[0] + LittleEndianByteArray.m27146b(bArr, i4 + 16), 37) * f76609g;
            long rotateRight4 = Long.rotateRight(rotateRight2 + jArr[1] + LittleEndianByteArray.m27146b(bArr, i4 + 48), 42) * f76609g;
            long j2 = rotateRight3 ^ jArr2[1];
            long j3 = rotateRight4 ^ jArr[0];
            long rotateRight5 = Long.rotateRight(m55456f ^ jArr2[0], 33);
            m55457g(bArr, i4, jArr[1] * f76609g, j2 + jArr2[0], jArr);
            m55457g(bArr, i4 + 32, jArr2[1] + rotateRight5, j3, jArr2);
            i4 += 64;
            i5 -= 64;
            if (i5 == 0) {
                return m55453c(m55453c(jArr[0], jArr2[0]) + (m55456f(j3) * f76609g) + j2, m55453c(jArr[1], jArr2[1]) + rotateRight5);
            }
            rotateRight = rotateRight5;
            m55456f = j2;
            rotateRight2 = j3;
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public static long m55453c(long j, long j2) {
        long j3 = (j2 ^ j) * (-4132994306676758123L);
        long j4 = (j ^ (j3 ^ (j3 >>> 47))) * (-4132994306676758123L);
        return (j4 ^ (j4 >>> 47)) * (-4132994306676758123L);
    }

    /* renamed from: d */
    public static long m55454d(byte[] bArr, int i, int i2) {
        long m27146b = LittleEndianByteArray.m27146b(bArr, i + 24);
        int i3 = i + i2;
        int i4 = i3 - 16;
        long m27146b2 = LittleEndianByteArray.m27146b(bArr, i) + ((i2 + LittleEndianByteArray.m27146b(bArr, i4)) * f76608f);
        long rotateRight = Long.rotateRight(m27146b2 + m27146b, 52);
        long rotateRight2 = Long.rotateRight(m27146b2, 37);
        long m27146b3 = m27146b2 + LittleEndianByteArray.m27146b(bArr, i + 8);
        long rotateRight3 = rotateRight2 + Long.rotateRight(m27146b3, 7);
        int i5 = i + 16;
        long m27146b4 = m27146b3 + LittleEndianByteArray.m27146b(bArr, i5);
        long j = m27146b + m27146b4;
        long rotateRight4 = rotateRight + Long.rotateRight(m27146b4, 31) + rotateRight3;
        long m27146b5 = LittleEndianByteArray.m27146b(bArr, i5) + LittleEndianByteArray.m27146b(bArr, i3 - 32);
        long m27146b6 = LittleEndianByteArray.m27146b(bArr, i3 - 8);
        long rotateRight5 = Long.rotateRight(m27146b5 + m27146b6, 52);
        long rotateRight6 = Long.rotateRight(m27146b5, 37);
        long m27146b7 = m27146b5 + LittleEndianByteArray.m27146b(bArr, i3 - 24);
        long rotateRight7 = rotateRight6 + Long.rotateRight(m27146b7, 7);
        long m27146b8 = m27146b7 + LittleEndianByteArray.m27146b(bArr, i4);
        return m55456f((m55456f(((j + rotateRight5 + Long.rotateRight(m27146b8, 31) + rotateRight7) * f76610h) + ((m27146b6 + m27146b8 + rotateRight4) * f76608f)) * f76608f) + rotateRight4) * f76610h;
    }

    @VisibleForTesting
    /* renamed from: e */
    public static long m55455e(byte[] bArr, int i, int i2, long j) {
        int i3 = i2 & (-8);
        int i4 = i2 & 7;
        long j2 = j ^ (i2 * (-4132994306676758123L));
        for (int i5 = 0; i5 < i3; i5 += 8) {
            j2 = (j2 ^ (m55456f(LittleEndianByteArray.m27146b(bArr, i + i5) * (-4132994306676758123L)) * (-4132994306676758123L))) * (-4132994306676758123L);
        }
        if (i4 != 0) {
            j2 = (LittleEndianByteArray.m27147c(bArr, i + i3, i4) ^ j2) * (-4132994306676758123L);
        }
        return m55456f(m55456f(j2) * (-4132994306676758123L));
    }

    /* renamed from: f */
    public static long m55456f(long j) {
        return j ^ (j >>> 47);
    }

    /* renamed from: g */
    public static void m55457g(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long m27146b = LittleEndianByteArray.m27146b(bArr, i);
        long m27146b2 = LittleEndianByteArray.m27146b(bArr, i + 8);
        long m27146b3 = LittleEndianByteArray.m27146b(bArr, i + 16);
        long m27146b4 = LittleEndianByteArray.m27146b(bArr, i + 24);
        long j3 = j + m27146b;
        long j4 = m27146b2 + j3 + m27146b3;
        long rotateRight = Long.rotateRight(j2 + j3 + m27146b4, 51) + Long.rotateRight(j4, 23);
        jArr[0] = j4 + m27146b4;
        jArr[1] = rotateRight + j3;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    @Override // com.sunia.HTREnginev2.AbstractC13512b4, com.sunia.HTREnginev2.AbstractC14378s3, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        return HashCode.fromLong(m55451a(bArr, i, i2));
    }

    public String toString() {
        return "Hashing.fingerprint2011()";
    }
}
