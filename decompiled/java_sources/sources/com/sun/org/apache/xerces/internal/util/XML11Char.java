package com.sun.org.apache.xerces.internal.util;

import com.alibaba.fastjson2.JSONB;
import com.onyx.galaxy.note.DataBinderMapperImpl;
import java.util.Arrays;

/* loaded from: classes10.dex */
public class XML11Char {
    public static final int MASK_XML11_CONTENT = 32;
    public static final int MASK_XML11_CONTENT_INTERNAL = 48;
    public static final int MASK_XML11_CONTROL = 16;
    public static final int MASK_XML11_NAME = 8;
    public static final int MASK_XML11_NAME_START = 4;
    public static final int MASK_XML11_NCNAME = 128;
    public static final int MASK_XML11_NCNAME_START = 64;
    public static final int MASK_XML11_SPACE = 2;
    public static final int MASK_XML11_VALID = 1;
    private static final byte[] XML11CHARS;

    static {
        byte[] bArr = new byte[65536];
        XML11CHARS = bArr;
        Arrays.fill(bArr, 1, 9, (byte) 17);
        bArr[9] = 35;
        bArr[10] = 3;
        Arrays.fill(bArr, 11, 13, (byte) 17);
        bArr[13] = 3;
        Arrays.fill(bArr, 14, 32, (byte) 17);
        bArr[32] = 35;
        Arrays.fill(bArr, 33, 38, (byte) 33);
        bArr[38] = 1;
        Arrays.fill(bArr, 39, 45, (byte) 33);
        Arrays.fill(bArr, 45, 47, JSONB.Constants.BC_LOCAL_DATE);
        bArr[47] = 33;
        Arrays.fill(bArr, 48, 58, JSONB.Constants.BC_LOCAL_DATE);
        bArr[58] = 45;
        bArr[59] = 33;
        bArr[60] = 1;
        Arrays.fill(bArr, 61, 65, (byte) 33);
        Arrays.fill(bArr, 65, 91, (byte) -19);
        Arrays.fill(bArr, 91, 93, (byte) 33);
        bArr[93] = 1;
        bArr[94] = 33;
        bArr[95] = -19;
        bArr[96] = 33;
        Arrays.fill(bArr, 97, 123, (byte) -19);
        Arrays.fill(bArr, 123, 127, (byte) 33);
        Arrays.fill(bArr, 127, 133, (byte) 17);
        bArr[133] = 35;
        Arrays.fill(bArr, 134, 160, (byte) 17);
        Arrays.fill(bArr, 160, 183, (byte) 33);
        bArr[183] = JSONB.Constants.BC_LOCAL_DATE;
        Arrays.fill(bArr, 184, 192, (byte) 33);
        Arrays.fill(bArr, 192, 215, (byte) -19);
        bArr[215] = 33;
        Arrays.fill(bArr, 216, DataBinderMapperImpl.f53073M3, (byte) -19);
        bArr[247] = 33;
        Arrays.fill(bArr, 248, 768, (byte) -19);
        Arrays.fill(bArr, 768, 880, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 880, 894, (byte) -19);
        bArr[894] = 33;
        Arrays.fill(bArr, 895, 8192, (byte) -19);
        Arrays.fill(bArr, 8192, 8204, (byte) 33);
        Arrays.fill(bArr, 8204, 8206, (byte) -19);
        Arrays.fill(bArr, 8206, 8232, (byte) 33);
        bArr[8232] = 35;
        Arrays.fill(bArr, 8233, 8255, (byte) 33);
        Arrays.fill(bArr, 8255, 8257, JSONB.Constants.BC_LOCAL_DATE);
        Arrays.fill(bArr, 8257, 8304, (byte) 33);
        Arrays.fill(bArr, 8304, 8592, (byte) -19);
        Arrays.fill(bArr, 8592, 11264, (byte) 33);
        Arrays.fill(bArr, 11264, 12272, (byte) -19);
        Arrays.fill(bArr, 12272, 12289, (byte) 33);
        Arrays.fill(bArr, 12289, 55296, (byte) -19);
        Arrays.fill(bArr, 57344, 63744, (byte) 33);
        Arrays.fill(bArr, 63744, 64976, (byte) -19);
        Arrays.fill(bArr, 64976, 65008, (byte) 33);
        Arrays.fill(bArr, 65008, 65534, (byte) -19);
    }

    public static boolean isXML11Content(int i) {
        return (i < 65536 && (XML11CHARS[i] & 32) != 0) || (65536 <= i && i <= 1114111);
    }

    public static boolean isXML11InternalEntityContent(int i) {
        return (i < 65536 && (XML11CHARS[i] & 48) != 0) || (65536 <= i && i <= 1114111);
    }

    public static boolean isXML11Invalid(int i) {
        return !isXML11Valid(i);
    }

    public static boolean isXML11NCName(int i) {
        return (i < 65536 && (XML11CHARS[i] & 128) != 0) || (65536 <= i && i < 983040);
    }

    public static boolean isXML11NCNameStart(int i) {
        return (i < 65536 && (XML11CHARS[i] & 64) != 0) || (65536 <= i && i < 983040);
    }

    public static boolean isXML11Name(int i) {
        return (i < 65536 && (XML11CHARS[i] & 8) != 0) || (i >= 65536 && i < 983040);
    }

    public static boolean isXML11NameHighSurrogate(int i) {
        return 55296 <= i && i <= 56191;
    }

    public static boolean isXML11NameStart(int i) {
        return (i < 65536 && (XML11CHARS[i] & 4) != 0) || (65536 <= i && i < 983040);
    }

    public static boolean isXML11Space(int i) {
        return i < 65536 && (XML11CHARS[i] & 2) != 0;
    }

    public static boolean isXML11Valid(int i) {
        if (i >= 65536 || (XML11CHARS[i] & 1) == 0) {
            return 65536 <= i && i <= 1114111;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if ((r1 & 16) == 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isXML11ValidLiteral(int r3) {
        /*
            r0 = 65536(0x10000, float:9.18355E-41)
            if (r3 >= r0) goto L10
            byte[] r1 = com.sun.org.apache.xerces.internal.util.XML11Char.XML11CHARS
            r1 = r1[r3]
            r2 = r1 & 1
            if (r2 == 0) goto L10
            r1 = r1 & 16
            if (r1 == 0) goto L17
        L10:
            if (r0 > r3) goto L19
            r0 = 1114111(0x10ffff, float:1.561202E-39)
            if (r3 > r0) goto L19
        L17:
            r3 = 1
            goto L1a
        L19:
            r3 = 0
        L1a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.util.XML11Char.isXML11ValidLiteral(int):boolean");
    }

    public static boolean isXML11ValidNCName(String str) {
        int i;
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char charAt = str.charAt(0);
        if (!isXML11NCNameStart(charAt)) {
            if (length > 1 && isXML11NameHighSurrogate(charAt)) {
                char charAt2 = str.charAt(1);
                if (XMLChar.isLowSurrogate(charAt2) && isXML11NCNameStart(XMLChar.supplemental(charAt, charAt2))) {
                    i = 2;
                }
            }
            return false;
        }
        i = 1;
        while (i < length) {
            char charAt3 = str.charAt(i);
            if (!isXML11NCName(charAt3)) {
                i++;
                if (i < length && isXML11NameHighSurrogate(charAt3)) {
                    char charAt4 = str.charAt(i);
                    if (XMLChar.isLowSurrogate(charAt4) && isXML11NCName(XMLChar.supplemental(charAt3, charAt4))) {
                    }
                }
                return false;
            }
            i++;
        }
        return true;
    }

    public static boolean isXML11ValidName(String str) {
        int i;
        int length = str.length();
        if (length == 0) {
            return false;
        }
        char charAt = str.charAt(0);
        if (!isXML11NameStart(charAt)) {
            if (length > 1 && isXML11NameHighSurrogate(charAt)) {
                char charAt2 = str.charAt(1);
                if (XMLChar.isLowSurrogate(charAt2) && isXML11NameStart(XMLChar.supplemental(charAt, charAt2))) {
                    i = 2;
                }
            }
            return false;
        }
        i = 1;
        while (i < length) {
            char charAt3 = str.charAt(i);
            if (!isXML11Name(charAt3)) {
                i++;
                if (i < length && isXML11NameHighSurrogate(charAt3)) {
                    char charAt4 = str.charAt(i);
                    if (XMLChar.isLowSurrogate(charAt4) && isXML11Name(XMLChar.supplemental(charAt3, charAt4))) {
                    }
                }
                return false;
            }
            i++;
        }
        return true;
    }

    public static boolean isXML11ValidNmtoken(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (!isXML11Name(charAt)) {
                i++;
                if (i < length && isXML11NameHighSurrogate(charAt)) {
                    char charAt2 = str.charAt(i);
                    if (XMLChar.isLowSurrogate(charAt2) && isXML11Name(XMLChar.supplemental(charAt, charAt2))) {
                    }
                }
                return false;
            }
            i++;
        }
        return true;
    }
}
