package com.tencent.cos.xml.model.tag.eventstreaming;

import java.nio.ByteBuffer;
import java.util.zip.CRC32;

/* loaded from: classes10.dex */
final class Prelude {
    static final int LENGTH = 8;
    static final int LENGTH_WITH_CRC = 12;
    private final long headersLength;
    private final int totalLength;

    private Prelude(int i, long j) {
        this.totalLength = i;
        this.headersLength = j;
    }

    private static long computePreludeCrc(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[8];
        byteBuffer.duplicate().get(bArr);
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, 0, 8);
        return crc32.getValue();
    }

    public static Prelude decode(ByteBuffer byteBuffer) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        long computePreludeCrc = computePreludeCrc(duplicate);
        long intToUnsignedLong = intToUnsignedLong(duplicate.getInt());
        long intToUnsignedLong2 = intToUnsignedLong(duplicate.getInt());
        long intToUnsignedLong3 = intToUnsignedLong(duplicate.getInt());
        if (computePreludeCrc != intToUnsignedLong3) {
            throw new IllegalArgumentException(String.format("Prelude checksum failure: expected 0x%x, computed 0x%x", Long.valueOf(intToUnsignedLong3), Long.valueOf(computePreludeCrc)));
        }
        if (intToUnsignedLong2 < 0 || intToUnsignedLong2 > 131072) {
            throw new IllegalArgumentException("Illegal headers_length value: " + intToUnsignedLong2);
        }
        long j = (intToUnsignedLong - intToUnsignedLong2) - 16;
        if (j >= 0 && j <= 16777216) {
            return new Prelude(toIntExact(intToUnsignedLong), intToUnsignedLong2);
        }
        throw new IllegalArgumentException("Illegal payload size: " + j);
    }

    private static long intToUnsignedLong(int i) {
        return i & 4294967295L;
    }

    private static int toIntExact(long j) {
        int i = (int) j;
        if (i == j) {
            return i;
        }
        throw new ArithmeticException("integer overflow");
    }

    public long getHeadersLength() {
        return this.headersLength;
    }

    public int getTotalLength() {
        return this.totalLength;
    }
}
