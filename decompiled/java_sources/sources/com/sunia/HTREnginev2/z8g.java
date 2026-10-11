package com.sunia.HTREnginev2;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.LittleEndianByteArray;

@wnf
/* loaded from: classes6.dex */
public final class z8g extends AbstractC13512b4 {

    /* renamed from: e */
    public static final HashFunction f91521e = new z8g();

    /* renamed from: f */
    public static final long f91522f = -4348849565147123417L;

    /* renamed from: g */
    public static final long f91523g = -5435081209227447693L;

    /* renamed from: h */
    public static final long f91524h = -7286425919675154353L;

    @VisibleForTesting
    /* renamed from: a */
    public static long m58646a(byte[] bArr, int i, int i2) {
        return i2 <= 32 ? i2 <= 16 ? m58647b(bArr, i, i2) : m58649d(bArr, i, i2) : i2 <= 64 ? m58650e(bArr, i, i2) : m58651f(bArr, i, i2);
    }

    /* renamed from: b */
    public static long m58647b(byte[] bArr, int i, int i2) {
        if (i2 >= 8) {
            long j = (i2 * 2) + f91524h;
            long m27146b = LittleEndianByteArray.m27146b(bArr, i) + f91524h;
            long m27146b2 = LittleEndianByteArray.m27146b(bArr, (i + i2) - 8);
            return m58648c((Long.rotateRight(m27146b2, 37) * j) + m27146b, (Long.rotateRight(m27146b, 25) + m27146b2) * j, j);
        }
        if (i2 >= 4) {
            return m58648c(i2 + ((LittleEndianByteArray.m27145a(bArr, i) & 4294967295L) << 3), LittleEndianByteArray.m27145a(bArr, (i + i2) - 4) & 4294967295L, (i2 * 2) + f91524h);
        }
        if (i2 <= 0) {
            return f91524h;
        }
        return m58652g((((bArr[i] & 255) + ((bArr[(i2 >> 1) + i] & 255) << 8)) * f91524h) ^ ((i2 + ((bArr[i + (i2 - 1)] & 255) << 2)) * f91522f)) * f91524h;
    }

    /* renamed from: c */
    public static long m58648c(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    /* renamed from: d */
    public static long m58649d(byte[] bArr, int i, int i2) {
        long j = (i2 * 2) + f91524h;
        long m27146b = LittleEndianByteArray.m27146b(bArr, i) * f91523g;
        long m27146b2 = LittleEndianByteArray.m27146b(bArr, i + 8);
        int i3 = i + i2;
        long m27146b3 = LittleEndianByteArray.m27146b(bArr, i3 - 8) * j;
        return m58648c((LittleEndianByteArray.m27146b(bArr, i3 - 16) * f91524h) + Long.rotateRight(m27146b + m27146b2, 43) + Long.rotateRight(m27146b3, 30), m27146b + Long.rotateRight(m27146b2 + f91524h, 18) + m27146b3, j);
    }

    /* renamed from: e */
    public static long m58650e(byte[] bArr, int i, int i2) {
        long j = (i2 * 2) + f91524h;
        long m27146b = LittleEndianByteArray.m27146b(bArr, i) * f91524h;
        long m27146b2 = LittleEndianByteArray.m27146b(bArr, i + 8);
        int i3 = i + i2;
        long m27146b3 = LittleEndianByteArray.m27146b(bArr, i3 - 8) * j;
        long rotateRight = Long.rotateRight(m27146b + m27146b2, 43) + Long.rotateRight(m27146b3, 30) + (LittleEndianByteArray.m27146b(bArr, i3 - 16) * f91524h);
        long m58648c = m58648c(rotateRight, m27146b3 + Long.rotateRight(m27146b2 + f91524h, 18) + m27146b, j);
        long m27146b4 = LittleEndianByteArray.m27146b(bArr, i + 16) * j;
        long m27146b5 = LittleEndianByteArray.m27146b(bArr, i + 24);
        long m27146b6 = (rotateRight + LittleEndianByteArray.m27146b(bArr, i3 - 32)) * j;
        return m58648c(((m58648c + LittleEndianByteArray.m27146b(bArr, i3 - 24)) * j) + Long.rotateRight(m27146b4 + m27146b5, 43) + Long.rotateRight(m27146b6, 30), m27146b4 + Long.rotateRight(m27146b5 + m27146b, 18) + m27146b6, j);
    }

    /* renamed from: f */
    public static long m58651f(byte[] bArr, int i, int i2) {
        long j = 81;
        long j2 = (j * f91523g) + 113;
        long m58652g = m58652g((j2 * f91524h) + 113) * f91524h;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long m27146b = (j * f91524h) + LittleEndianByteArray.m27146b(bArr, i);
        int i3 = i2 - 1;
        int i4 = i + ((i3 / 64) * 64);
        int i5 = i3 & 63;
        int i6 = (i4 + i5) - 63;
        int i7 = i;
        while (true) {
            long rotateRight = Long.rotateRight(m27146b + j2 + jArr[0] + LittleEndianByteArray.m27146b(bArr, i7 + 8), 37) * f91523g;
            long rotateRight2 = Long.rotateRight(j2 + jArr[1] + LittleEndianByteArray.m27146b(bArr, i7 + 48), 42) * f91523g;
            long j3 = rotateRight ^ jArr2[1];
            long m27146b2 = rotateRight2 + jArr[0] + LittleEndianByteArray.m27146b(bArr, i7 + 40);
            long rotateRight3 = Long.rotateRight(m58652g + jArr2[0], 33) * f91523g;
            m58653h(bArr, i7, jArr[1] * f91523g, j3 + jArr2[0], jArr);
            m58653h(bArr, i7 + 32, rotateRight3 + jArr2[1], m27146b2 + LittleEndianByteArray.m27146b(bArr, i7 + 16), jArr2);
            int i8 = i7 + 64;
            if (i8 == i4) {
                long j4 = f91523g + ((j3 & 255) << 1);
                long j5 = jArr2[0] + i5;
                jArr2[0] = j5;
                long j6 = jArr[0] + j5;
                jArr[0] = j6;
                jArr2[0] = jArr2[0] + j6;
                long rotateRight4 = Long.rotateRight(rotateRight3 + m27146b2 + jArr[0] + LittleEndianByteArray.m27146b(bArr, i6 + 8), 37) * j4;
                long rotateRight5 = Long.rotateRight(m27146b2 + jArr[1] + LittleEndianByteArray.m27146b(bArr, i6 + 48), 42) * j4;
                long j7 = rotateRight4 ^ (jArr2[1] * 9);
                long m27146b3 = rotateRight5 + (jArr[0] * 9) + LittleEndianByteArray.m27146b(bArr, i6 + 40);
                long rotateRight6 = Long.rotateRight(j3 + jArr2[0], 33) * j4;
                m58653h(bArr, i6, jArr[1] * j4, j7 + jArr2[0], jArr);
                m58653h(bArr, i6 + 32, rotateRight6 + jArr2[1], m27146b3 + LittleEndianByteArray.m27146b(bArr, i6 + 16), jArr2);
                return m58648c(m58648c(jArr[0], jArr2[0], j4) + (m58652g(m27146b3) * f91522f) + j7, m58648c(jArr[1], jArr2[1], j4) + rotateRight6, j4);
            }
            i7 = i8;
            m58652g = j3;
            j2 = m27146b2;
            m27146b = rotateRight3;
        }
    }

    /* renamed from: g */
    public static long m58652g(long j) {
        return j ^ (j >>> 47);
    }

    /* renamed from: h */
    public static void m58653h(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long m27146b = LittleEndianByteArray.m27146b(bArr, i);
        long m27146b2 = LittleEndianByteArray.m27146b(bArr, i + 8);
        long m27146b3 = LittleEndianByteArray.m27146b(bArr, i + 16);
        long m27146b4 = LittleEndianByteArray.m27146b(bArr, i + 24);
        long j3 = j + m27146b;
        long j4 = m27146b2 + j3 + m27146b3;
        long rotateRight = Long.rotateRight(j2 + j3 + m27146b4, 21) + Long.rotateRight(j4, 44);
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
        return HashCode.fromLong(m58646a(bArr, i, i2));
    }

    public String toString() {
        return "Hashing.farmHashFingerprint64()";
    }
}
