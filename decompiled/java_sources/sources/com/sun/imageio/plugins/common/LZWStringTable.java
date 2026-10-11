package com.sun.imageio.plugins.common;

import java.io.PrintStream;

/* loaded from: classes9.dex */
public class LZWStringTable {
    private static final short HASHSIZE = 9973;
    private static final short HASHSTEP = 2039;
    private static final short HASH_FREE = -1;
    private static final int MAXBITS = 12;
    private static final int MAXSTR = 4096;
    private static final short NEXT_FIRST = -1;
    private static final int RES_CODES = 2;
    short numStrings;
    byte[] strChr = new byte[4096];
    short[] strNxt = new short[4096];
    int[] strLen = new int[4096];
    short[] strHsh = new short[9973];

    public static int hash(short s, byte b) {
        return ((s ^ ((short) (b << 8))) & 65535) % 9973;
    }

    public int addCharString(short s, byte b) {
        short[] sArr;
        if (this.numStrings >= 4096) {
            return 65535;
        }
        int hash = hash(s, b);
        while (true) {
            sArr = this.strHsh;
            if (sArr[hash] == -1) {
                break;
            }
            hash = (hash + 2039) % 9973;
        }
        short s2 = this.numStrings;
        sArr[hash] = s2;
        this.strChr[s2] = b;
        if (s == -1) {
            this.strNxt[s2] = -1;
            this.strLen[s2] = 1;
        } else {
            this.strNxt[s2] = s;
            int[] iArr = this.strLen;
            iArr[s2] = iArr[s] + 1;
        }
        this.numStrings = (short) (s2 + 1);
        return s2;
    }

    public void clearTable(int i) {
        this.numStrings = (short) 0;
        for (int i2 = 0; i2 < 9973; i2++) {
            this.strHsh[i2] = -1;
        }
        int i3 = (1 << i) + 2;
        for (int i4 = 0; i4 < i3; i4++) {
            addCharString((short) -1, (byte) i4);
        }
    }

    public void dump(PrintStream printStream) {
        for (int i = 258; i < this.numStrings; i++) {
            printStream.println(" strNxt[" + i + "] = " + ((int) this.strNxt[i]) + " strChr " + Integer.toHexString(this.strChr[i] & 255) + " strLen " + Integer.toHexString(this.strLen[i]));
        }
    }

    public int expandCode(byte[] bArr, int i, short s, int i2) {
        int i3;
        if (i == -2 && i2 == 1) {
            i2 = 0;
        }
        if (s == -1 || i2 == (i3 = this.strLen[s])) {
            return 0;
        }
        int i4 = i3 - i2;
        int length = bArr.length - i;
        if (length > i4) {
            length = i4;
        }
        int i5 = i4 - length;
        int i6 = i + length;
        while (i6 > i && s != -1) {
            i5--;
            if (i5 < 0) {
                i6--;
                bArr[i6] = this.strChr[s];
            }
            s = this.strNxt[s];
        }
        return i4 > length ? -length : length;
    }

    public short findCharString(short s, byte b) {
        if (s == -1) {
            return (short) (b & 255);
        }
        int hash = hash(s, b);
        while (true) {
            short s2 = this.strHsh[hash];
            if (s2 == -1) {
                return (short) -1;
            }
            if (this.strNxt[s2] == s && this.strChr[s2] == b) {
                return s2;
            }
            hash = (hash + 2039) % 9973;
        }
    }
}
