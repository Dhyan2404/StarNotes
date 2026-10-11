package com.sun.imageio.plugins.png;

/* loaded from: classes9.dex */
final class CRC {
    private static final int[] crcTable = new int[256];
    private int crc = -1;

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 & 1) == 1 ? (i2 >>> 1) ^ (-306674912) : i2 >>> 1;
                crcTable[i] = i2;
            }
        }
    }

    public int getValue() {
        return ~this.crc;
    }

    public void reset() {
        this.crc = -1;
    }

    public void update(byte[] bArr, int i, int i2) {
        int i3 = this.crc;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 >>> 8) ^ crcTable[(bArr[i + i4] ^ i3) & 255];
        }
        this.crc = i3;
    }

    public void update(int i) {
        int[] iArr = crcTable;
        int i2 = this.crc;
        this.crc = iArr[(i ^ i2) & 255] ^ (i2 >>> 8);
    }
}
