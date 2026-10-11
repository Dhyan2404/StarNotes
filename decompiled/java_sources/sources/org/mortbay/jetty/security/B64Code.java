package org.mortbay.jetty.security;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.io.UnsupportedEncodingException;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class B64Code {

    /* renamed from: a */
    public static final char f114963a = '=';

    /* renamed from: b */
    public static final char[] f114964b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', PhoneNumberUtil.f36455s, '/'};

    /* renamed from: c */
    public static byte[] f114965c = new byte[256];

    static {
        for (int i = 0; i < 256; i++) {
            f114965c[i] = -1;
        }
        for (byte b = 0; b < 64; b = (byte) (b + 1)) {
            f114965c[(byte) f114964b[b]] = b;
        }
        f114965c[61] = 0;
    }

    public static String decode(String str) {
        try {
            return decode(str, StringUtil.__ISO_8859_1);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e.toString());
        }
    }

    public static String encode(String str) {
        try {
            return encode(str, null);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e.toString());
        }
    }

    public static String decode(String str, String str2) throws UnsupportedEncodingException {
        byte[] decode = decode(str.toCharArray());
        if (str2 == null) {
            return new String(decode);
        }
        return new String(decode, str2);
    }

    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        if (str2 == null) {
            bytes = str.getBytes(StringUtil.__ISO_8859_1);
        } else {
            bytes = str.getBytes(str2);
        }
        return new String(encode(bytes));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [int] */
    /* JADX WARN: Type inference failed for: r11v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8, types: [int] */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r9v0, types: [int] */
    public static byte[] decode(char[] cArr) {
        byte b;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        if (length % 4 == 0) {
            byte b2 = 1;
            int i = length - 1;
            while (i >= 0 && cArr[i] == '=') {
                i--;
            }
            int i2 = 0;
            if (i < 0) {
                return new byte[0];
            }
            int i3 = ((i + 1) * 3) / 4;
            byte[] bArr = new byte[i3];
            int i4 = (i3 / 3) * 3;
            byte b3 = 0;
            while (i2 < i4) {
                try {
                    byte[] bArr2 = f114965c;
                    ?? r8 = b3 + 1;
                    try {
                        byte b4 = bArr2[cArr[b3]];
                        ?? r9 = r8 + 1;
                        try {
                            byte b5 = bArr2[cArr[r8]];
                            ?? r10 = r9 + 1;
                            try {
                                byte b6 = bArr2[cArr[r9]];
                                ?? r11 = r10 + 1;
                                try {
                                    b = bArr2[cArr[r10]];
                                    if (b4 >= 0 && b5 >= 0 && b6 >= 0 && b >= 0) {
                                        int i5 = i2 + 1;
                                        bArr[i2] = (byte) ((b4 << 2) | (b5 >>> 4));
                                        int i6 = i5 + 1;
                                        bArr[i5] = (byte) ((b5 << 4) | (b6 >>> 2));
                                        bArr[i6] = (byte) ((b6 << 6) | b);
                                        i2 = i6 + 1;
                                        b3 = r11;
                                    } else {
                                        throw new IllegalArgumentException("Not B64 encoded");
                                    }
                                } catch (IndexOutOfBoundsException unused) {
                                    b3 = r11;
                                    StringBuffer stringBuffer = new StringBuffer();
                                    stringBuffer.append("char ");
                                    stringBuffer.append((int) b3);
                                    stringBuffer.append(" was not B64 encoded");
                                    throw new IllegalArgumentException(stringBuffer.toString());
                                }
                            } catch (IndexOutOfBoundsException unused2) {
                                b3 = r10;
                            }
                        } catch (IndexOutOfBoundsException unused3) {
                            b3 = r9;
                        }
                    } catch (IndexOutOfBoundsException unused4) {
                        b3 = r8;
                    }
                } catch (IndexOutOfBoundsException unused5) {
                }
            }
            if (i3 != i2) {
                int i7 = i3 % 3;
                try {
                    try {
                        if (i7 == 1) {
                            byte[] bArr3 = f114965c;
                            ?? r1 = b3 + 1;
                            byte b7 = bArr3[cArr[b3]];
                            int i8 = r1 + 1;
                            byte b8 = bArr3[cArr[r1]];
                            if (b7 >= 0 && b8 >= 0) {
                                bArr[i2] = (byte) ((b8 >>> 4) | (b7 << 2));
                                b2 = r1;
                            } else {
                                throw new IllegalArgumentException("Not B64 encoded");
                            }
                        } else if (i7 == 2) {
                            byte[] bArr4 = f114965c;
                            int i9 = b3 + 1;
                            byte b9 = bArr4[cArr[b3]];
                            int i10 = i9 + 1;
                            byte b10 = bArr4[cArr[i9]];
                            int i11 = i10 + 1;
                            byte b11 = bArr4[cArr[i10]];
                            if (b9 >= 0 && b10 >= 0 && b11 >= 0) {
                                bArr[i2] = (byte) ((b9 << 2) | (b10 >>> 4));
                                ?? r12 = b10 << 4;
                                bArr[i2 + 1] = (byte) ((b11 >>> 2) | r12);
                                b2 = r12;
                            } else {
                                throw new IllegalArgumentException("Not B64 encoded");
                            }
                        }
                    } catch (IndexOutOfBoundsException unused6) {
                        b3 = b2;
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("char ");
                        stringBuffer2.append((int) b3);
                        stringBuffer2.append(" was not B64 encoded");
                        throw new IllegalArgumentException(stringBuffer2.toString());
                    }
                } catch (IndexOutOfBoundsException unused7) {
                    b3 = b;
                    StringBuffer stringBuffer22 = new StringBuffer();
                    stringBuffer22.append("char ");
                    stringBuffer22.append((int) b3);
                    stringBuffer22.append(" was not B64 encoded");
                    throw new IllegalArgumentException(stringBuffer22.toString());
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException("Input block size is not 4");
    }

    public static char[] encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i = (length / 3) * 3;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = i2 + 1;
            byte b = bArr[i2];
            int i5 = i4 + 1;
            byte b2 = bArr[i4];
            int i6 = i5 + 1;
            byte b3 = bArr[i5];
            int i7 = i3 + 1;
            char[] cArr2 = f114964b;
            cArr[i3] = cArr2[(b >>> 2) & 63];
            int i8 = i7 + 1;
            cArr[i7] = cArr2[((b << 4) & 63) | ((b2 >>> 4) & 15)];
            int i9 = i8 + 1;
            cArr[i8] = cArr2[((b2 << 2) & 63) | ((b3 >>> 6) & 3)];
            i3 = i9 + 1;
            cArr[i9] = cArr2[b3 & 63];
            i2 = i6;
        }
        if (length != i2) {
            int i10 = length % 3;
            if (i10 == 1) {
                byte b4 = bArr[i2];
                int i11 = i3 + 1;
                char[] cArr3 = f114964b;
                cArr[i3] = cArr3[(b4 >>> 2) & 63];
                int i12 = i11 + 1;
                cArr[i11] = cArr3[(b4 << 4) & 63];
                cArr[i12] = '=';
                cArr[i12 + 1] = '=';
            } else if (i10 == 2) {
                int i13 = i2 + 1;
                byte b5 = bArr[i2];
                byte b6 = bArr[i13];
                int i14 = i3 + 1;
                char[] cArr4 = f114964b;
                cArr[i3] = cArr4[(b5 >>> 2) & 63];
                int i15 = i14 + 1;
                cArr[i14] = cArr4[((b5 << 4) & 63) | ((b6 >>> 4) & 15)];
                cArr[i15] = cArr4[(b6 << 2) & 63];
                cArr[i15 + 1] = '=';
            }
        }
        return cArr;
    }
}
