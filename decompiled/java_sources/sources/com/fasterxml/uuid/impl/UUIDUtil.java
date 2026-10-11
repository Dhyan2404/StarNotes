package com.fasterxml.uuid.impl;

import com.fasterxml.uuid.UUIDType;
import com.google.android.material.motion.MotionUtils;
import java.util.UUID;

/* loaded from: classes4.dex */
public class UUIDUtil {
    public static final int BYTE_OFFSET_CLOCK_HI = 6;
    public static final int BYTE_OFFSET_CLOCK_LO = 0;
    public static final int BYTE_OFFSET_CLOCK_MID = 4;
    public static final int BYTE_OFFSET_CLOCK_SEQUENCE = 8;
    public static final int BYTE_OFFSET_TYPE = 6;
    public static final int BYTE_OFFSET_VARIATION = 8;

    /* renamed from: a */
    public static final UUID f21385a = new UUID(0, 0);

    /* renamed from: b */
    public static final UUID f21386b = new UUID(-1, -1);

    /* renamed from: a */
    public static final void m17322a(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >> 16);
        bArr[i4] = (byte) (i >> 8);
        bArr[i4 + 1] = (byte) i;
    }

    public static byte[] asByteArray(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        m17322a((int) (mostSignificantBits >> 32), bArr, 0);
        m17322a((int) mostSignificantBits, bArr, 4);
        m17322a((int) (leastSignificantBits >> 32), bArr, 8);
        m17322a((int) leastSignificantBits, bArr, 12);
        return bArr;
    }

    /* renamed from: b */
    public static final void m17323b(byte[] bArr, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("Invalid byte[] passed: can not be null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("Invalid offset (" + i + ") passed: can not be negative");
        }
        if (i + 16 <= bArr.length) {
            return;
        }
        throw new IllegalArgumentException("Invalid offset (" + i + ") passed: not enough room in byte array (need 16 bytes)");
    }

    /* renamed from: c */
    public static final int m17324c(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public static UUID constructUUID(UUIDType uUIDType, byte[] bArr) {
        bArr[6] = (byte) ((uUIDType.raw() << 4) | (bArr[6] & 15));
        bArr[8] = (byte) ((bArr[8] & 63) | 128);
        return uuid(bArr);
    }

    public static final long gatherLong(byte[] bArr, int i) {
        return ((m17324c(bArr, i + 4) << 32) >>> 32) | (m17324c(bArr, i) << 32);
    }

    public static long initUUIDFirstLong(long j, int i) {
        return (j & (-61441)) | (i << 12);
    }

    public static long initUUIDSecondLong(long j) {
        return ((j << 2) >>> 2) | Long.MIN_VALUE;
    }

    public static UUID maxUUID() {
        return f21386b;
    }

    public static UUID nilUUID() {
        return f21385a;
    }

    public static void toByteArray(UUID uuid, byte[] bArr) {
        toByteArray(uuid, bArr, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static UUIDType typeOf(UUID uuid) {
        if (uuid == null) {
            return null;
        }
        long mostSignificantBits = uuid.getMostSignificantBits();
        switch ((((int) mostSignificantBits) >> 12) & 15) {
            case 0:
                if (mostSignificantBits == 0 && uuid.getLeastSignificantBits() == mostSignificantBits) {
                    return UUIDType.UNKNOWN;
                }
                return null;
            case 1:
                return UUIDType.TIME_BASED;
            case 2:
                return UUIDType.DCE;
            case 3:
                return UUIDType.NAME_BASED_MD5;
            case 4:
                return UUIDType.RANDOM_BASED;
            case 5:
                return UUIDType.NAME_BASED_SHA1;
            case 6:
                return UUIDType.TIME_BASED_REORDERED;
            case 7:
                return UUIDType.TIME_BASED_EPOCH;
            case 8:
                return UUIDType.FREE_FORM;
            default:
                return null;
        }
    }

    public static UUID uuid(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        str.getClass();
        if (str.length() == 36) {
            int i5 = 0;
            long j = 0;
            int i6 = 0;
            long j2 = 0;
            for (int i7 = 36; i5 < i7; i7 = 36) {
                if (i5 == 8 || i5 == 13 || i5 == 18 || i5 == 23) {
                    if (str.charAt(i5) != '-') {
                        throw new NumberFormatException("UUID has to be represented by the standard 36-char representation");
                    }
                    i5++;
                }
                char charAt = str.charAt(i5);
                if (charAt < '0' || charAt > '9') {
                    if (charAt >= 'a' && charAt <= 'f') {
                        i = charAt - 'a';
                    } else {
                        if (charAt < 'A' || charAt > 'F') {
                            throw new NumberFormatException("Non-hex character at #" + i5 + ": '" + charAt + "' (value 0x" + Integer.toHexString(charAt) + MotionUtils.f31762d);
                        }
                        i = charAt - 'A';
                    }
                    i2 = i + 10;
                } else {
                    i2 = charAt - '0';
                }
                int i8 = i2 << 4;
                int i9 = i5 + 1;
                char charAt2 = str.charAt(i9);
                if (charAt2 < '0' || charAt2 > '9') {
                    if (charAt2 >= 'a' && charAt2 <= 'f') {
                        i3 = charAt2 - 'a';
                    } else {
                        if (charAt2 < 'A' || charAt2 > 'F') {
                            throw new NumberFormatException("Non-hex character at #" + i9 + ": '" + charAt2 + "' (value 0x" + Integer.toHexString(charAt2) + MotionUtils.f31762d);
                        }
                        i3 = charAt2 - 'A';
                    }
                    i4 = i3 + 10;
                } else {
                    i4 = charAt2 - '0';
                }
                int i10 = i8 | i4;
                if (i6 < 8) {
                    j2 = (j2 << 8) | i10;
                } else {
                    j = (j << 8) | i10;
                }
                i5 = i9 + 1;
                i6++;
            }
            return new UUID(j2, j);
        }
        throw new NumberFormatException("UUID has to be represented by the standard 36-char representation");
    }

    public static long initUUIDFirstLong(long j, UUIDType uUIDType) {
        return initUUIDFirstLong(j, uUIDType.raw());
    }

    public static void toByteArray(UUID uuid, byte[] bArr, int i) {
        m17323b(bArr, i);
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        m17322a((int) (mostSignificantBits >> 32), bArr, i);
        m17322a((int) mostSignificantBits, bArr, i + 4);
        m17322a((int) (leastSignificantBits >> 32), bArr, i + 8);
        m17322a((int) leastSignificantBits, bArr, i + 12);
    }

    public static UUID constructUUID(UUIDType uUIDType, long j, long j2) {
        return new UUID((j & (-61441)) | (uUIDType.raw() << 12), ((j2 << 2) >>> 2) | Long.MIN_VALUE);
    }

    public static UUID uuid(byte[] bArr) {
        m17323b(bArr, 0);
        return new UUID(gatherLong(bArr, 0), gatherLong(bArr, 8));
    }

    public static UUID uuid(byte[] bArr, int i) {
        m17323b(bArr, i);
        return new UUID(gatherLong(bArr, i), gatherLong(bArr, i + 8));
    }
}
