package org.apache.xerces.impl.p115dv.util;

/* loaded from: classes13.dex */
public final class HexBin {

    /* renamed from: a */
    public static final int f112292a = 128;

    /* renamed from: b */
    public static final int f112293b = 16;

    /* renamed from: c */
    public static final byte[] f112294c = new byte[128];

    /* renamed from: d */
    public static final char[] f112295d = new char[16];

    static {
        for (int i = 0; i < 128; i++) {
            f112294c[i] = -1;
        }
        for (int i2 = 57; i2 >= 48; i2--) {
            f112294c[i2] = (byte) (i2 - 48);
        }
        for (int i3 = 70; i3 >= 65; i3--) {
            f112294c[i3] = (byte) ((i3 - 65) + 10);
        }
        for (int i4 = 102; i4 >= 97; i4--) {
            f112294c[i4] = (byte) ((i4 - 97) + 10);
        }
        for (int i5 = 0; i5 < 10; i5++) {
            f112295d[i5] = (char) (i5 + 48);
        }
        for (int i6 = 10; i6 <= 15; i6++) {
            f112295d[i6] = (char) ((i6 + 65) - 10);
        }
    }

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 2 != 0) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int i = length / 2;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            char c = charArray[i3];
            byte b = c < 128 ? f112294c[c] : (byte) -1;
            if (b == -1) {
                return null;
            }
            char c2 = charArray[i3 + 1];
            byte b2 = c2 < 128 ? f112294c[c2] : (byte) -1;
            if (b2 == -1) {
                return null;
            }
            bArr[i2] = (byte) (b2 | (b << 4));
        }
        return bArr;
    }

    public static String encode(byte[] bArr) {
        if (bArr == 0) {
            return null;
        }
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            int i2 = bArr[i];
            if (i2 < 0) {
                i2 += 256;
            }
            int i3 = i * 2;
            char[] cArr2 = f112295d;
            cArr[i3] = cArr2[i2 >> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }
}
