package com.dropbox.core.util;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

/* loaded from: classes4.dex */
public class StringUtil {
    public static final String Base64Digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    public static final String UrlSafeBase64Digits = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";

    /* renamed from: b */
    public static final /* synthetic */ boolean f16639b = false;
    public static final Charset UTF8 = Charset.forName("UTF-8");

    /* renamed from: a */
    public static final char[] f16638a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String base64Encode(byte[] bArr) {
        return base64EncodeGeneric("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", bArr);
    }

    public static String base64EncodeGeneric(String str, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("'data' can't be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("'digits' can't be null");
        }
        if (str.length() != 64) {
            throw new IllegalArgumentException("'digits' must be 64 characters long: " + m10140jq(str));
        }
        StringBuilder sb = new StringBuilder(((bArr.length + 2) / 3) * 4);
        int i = 0;
        while (i + 3 <= bArr.length) {
            int i2 = i + 1;
            int i3 = bArr[i] & 255;
            int i4 = i2 + 1;
            int i5 = bArr[i2] & 255;
            int i6 = i4 + 1;
            int i7 = bArr[i4] & 255;
            int i8 = i3 >>> 2;
            sb.append(str.charAt(i8));
            sb.append(str.charAt(((i3 & 3) << 4) | (i5 >>> 4)));
            sb.append(str.charAt(((i5 & 15) << 2) | (i7 >>> 6)));
            sb.append(str.charAt(i7 & 63));
            i = i6;
        }
        int length = bArr.length - i;
        if (length != 0) {
            if (length == 1) {
                int i9 = bArr[i] & 255;
                sb.append(str.charAt(i9 >>> 2));
                sb.append(str.charAt((i9 & 3) << 4));
                sb.append("==");
            } else {
                if (length != 2) {
                    throw new AssertionError("data.length: " + bArr.length + ", i: " + i);
                }
                int i10 = i + 1;
                int i11 = bArr[i] & 255;
                int i12 = bArr[i10] & 255;
                sb.append(str.charAt(i11 >>> 2));
                sb.append(str.charAt(((i11 & 3) << 4) | (i12 >>> 4)));
                sb.append(str.charAt((i12 & 15) << 2));
                sb.append('=');
            }
        }
        return sb.toString();
    }

    public static String binaryToHex(byte[] bArr) {
        return binaryToHex(bArr, 0, bArr.length);
    }

    public static char hexDigit(int i) {
        return f16638a[i];
    }

    public static String javaQuotedLiteral(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 2);
        sb.append('\"');
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == 0) {
                sb.append("\\000");
            } else if (charAt == '\r') {
                sb.append("\\t");
            } else if (charAt == '\"') {
                sb.append("\\\"");
            } else if (charAt == '\\') {
                sb.append("\\\\");
            } else if (charAt == '\t') {
                sb.append("\\r");
            } else if (charAt == '\n') {
                sb.append("\\n");
            } else if (charAt < ' ' || charAt > '~') {
                sb.append("\\u");
                sb.append(hexDigit((charAt >> '\f') & 15));
                sb.append(hexDigit((charAt >> '\b') & 15));
                sb.append(hexDigit((charAt >> 4) & 15));
                sb.append(hexDigit(charAt & 15));
            } else {
                sb.append(charAt);
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    public static String javaQuotedLiterals(String[] strArr) {
        return javaQuotedLiterals(Arrays.asList(strArr));
    }

    public static String join(Collection<String> collection, String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String str2 : collection) {
            if (i > 0) {
                sb.append(str);
            }
            sb.append(str2);
            i++;
        }
        return sb.toString();
    }

    /* renamed from: jq */
    public static String m10140jq(String str) {
        return javaQuotedLiteral(str);
    }

    public static boolean secureStringEquals(String str, String str2) {
        if (str.length() != str2.length()) {
            return false;
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i |= str.charAt(i2) ^ str2.charAt(i2);
        }
        return i == 0;
    }

    public static byte[] stringToUtf8(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw LangUtil.mkAssert("UTF-8 should always be supported", e);
        }
    }

    public static String urlSafeBase64Encode(byte[] bArr) {
        return base64EncodeGeneric(UrlSafeBase64Digits, bArr);
    }

    public static String utf8ToString(byte[] bArr) throws CharacterCodingException {
        return utf8ToString(bArr, 0, bArr.length);
    }

    public static String binaryToHex(byte[] bArr, int i, int i2) {
        int i3 = i + i2;
        char[] cArr = new char[i2 * 2];
        int i4 = 0;
        while (i < i3) {
            byte b = bArr[i];
            int i5 = i4 + 1;
            cArr[i4] = hexDigit((b >>> 4) & 15);
            i4 = i5 + 1;
            cArr[i5] = hexDigit(b & 15);
            i++;
        }
        return new String(cArr);
    }

    public static String javaQuotedLiterals(Iterable<String> iterable) {
        StringBuilder sb = new StringBuilder();
        String str = "";
        for (String str2 : iterable) {
            sb.append(str);
            sb.append(javaQuotedLiteral(str2));
            str = ", ";
        }
        return sb.toString();
    }

    /* renamed from: jq */
    public static String m10141jq(String[] strArr) {
        return javaQuotedLiterals(strArr);
    }

    public static String utf8ToString(byte[] bArr, int i, int i2) throws CharacterCodingException {
        return UTF8.newDecoder().decode(ByteBuffer.wrap(bArr, i, i2)).toString();
    }

    /* renamed from: jq */
    public static String m10139jq(Iterable<String> iterable) {
        return javaQuotedLiterals(iterable);
    }
}
