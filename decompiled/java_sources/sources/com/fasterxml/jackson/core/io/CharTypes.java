package com.fasterxml.jackson.core.io;

import java.util.Arrays;

/* loaded from: classes4.dex */
public final class CharTypes {

    /* renamed from: a */
    public static final char[] f21231a;

    /* renamed from: b */
    public static final byte[] f21232b;

    /* renamed from: c */
    public static final int[] f21233c;

    /* renamed from: d */
    public static final int[] f21234d;

    /* renamed from: e */
    public static final int[] f21235e;

    /* renamed from: f */
    public static final int[] f21236f;

    /* renamed from: g */
    public static final int[] f21237g;

    /* renamed from: h */
    public static final int[] f21238h;

    /* renamed from: i */
    public static final int[] f21239i;

    /* renamed from: j */
    public static final int[] f21240j;

    static {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        f21231a = charArray;
        int length = charArray.length;
        f21232b = new byte[length];
        for (int i = 0; i < length; i++) {
            f21232b[i] = (byte) f21231a[i];
        }
        int[] iArr = new int[256];
        for (int i2 = 0; i2 < 32; i2++) {
            iArr[i2] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        f21233c = iArr;
        int length2 = iArr.length;
        int[] iArr2 = new int[length2];
        System.arraycopy(iArr, 0, iArr2, 0, length2);
        for (int i3 = 128; i3 < 256; i3++) {
            iArr2[i3] = (i3 & 224) == 192 ? 2 : (i3 & 240) == 224 ? 3 : (i3 & 248) == 240 ? 4 : -1;
        }
        f21234d = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i4 = 33; i4 < 256; i4++) {
            if (Character.isJavaIdentifierPart((char) i4)) {
                iArr3[i4] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        f21235e = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(iArr3, 0, iArr4, 0, 256);
        Arrays.fill(iArr4, 128, 128, 0);
        f21236f = iArr4;
        int[] iArr5 = new int[256];
        int[] iArr6 = f21234d;
        System.arraycopy(iArr6, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        f21237g = iArr5;
        int[] iArr7 = new int[256];
        System.arraycopy(iArr6, 128, iArr7, 128, 128);
        Arrays.fill(iArr7, 0, 32, -1);
        iArr7[32] = 1;
        iArr7[9] = 1;
        iArr7[10] = 10;
        iArr7[13] = 13;
        iArr7[47] = 47;
        iArr7[35] = 35;
        f21238h = iArr7;
        int[] iArr8 = new int[128];
        for (int i5 = 0; i5 < 32; i5++) {
            iArr8[i5] = -1;
        }
        iArr8[34] = 34;
        iArr8[92] = 92;
        iArr8[8] = 98;
        iArr8[9] = 116;
        iArr8[12] = 102;
        iArr8[10] = 110;
        iArr8[13] = 114;
        f21239i = iArr8;
        int[] iArr9 = new int[128];
        f21240j = iArr9;
        Arrays.fill(iArr9, -1);
        for (int i6 = 0; i6 < 10; i6++) {
            f21240j[i6 + 48] = i6;
        }
        for (int i7 = 0; i7 < 6; i7++) {
            int[] iArr10 = f21240j;
            int i8 = i7 + 10;
            iArr10[i7 + 97] = i8;
            iArr10[i7 + 65] = i8;
        }
    }

    public static void appendQuoted(StringBuilder sb, String str) {
        int[] iArr = f21239i;
        int length = iArr.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            char charAt = str.charAt(i);
            if (charAt >= length || iArr[charAt] == 0) {
                sb.append(charAt);
            } else {
                sb.append('\\');
                int i2 = iArr[charAt];
                if (i2 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    char[] cArr = f21231a;
                    sb.append(cArr[charAt >> 4]);
                    sb.append(cArr[charAt & 15]);
                } else {
                    sb.append((char) i2);
                }
            }
        }
    }

    public static int charToHex(int i) {
        if (i > 127) {
            return -1;
        }
        return f21240j[i];
    }

    public static byte[] copyHexBytes() {
        return (byte[]) f21232b.clone();
    }

    public static char[] copyHexChars() {
        return (char[]) f21231a.clone();
    }

    public static int[] get7BitOutputEscapes() {
        return f21239i;
    }

    public static int[] getInputCodeComment() {
        return f21237g;
    }

    public static int[] getInputCodeLatin1() {
        return f21233c;
    }

    public static int[] getInputCodeLatin1JsNames() {
        return f21235e;
    }

    public static int[] getInputCodeUtf8() {
        return f21234d;
    }

    public static int[] getInputCodeUtf8JsNames() {
        return f21236f;
    }

    public static int[] getInputCodeWS() {
        return f21238h;
    }
}
