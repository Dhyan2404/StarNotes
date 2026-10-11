package org.apache.xerces.impl.xpath.regex;

import java.text.CharacterIterator;

/* loaded from: classes13.dex */
public final class REUtil {

    /* renamed from: a */
    public static final int f112569a = 20;

    /* renamed from: b */
    public static final RegularExpression[] f112570b = new RegularExpression[20];

    /* renamed from: a */
    public static final int m70004a(int i, int i2) {
        return ((((i - 55296) << 10) + 65536) + i2) - 56320;
    }

    /* renamed from: b */
    public static final String m70005b(int i) {
        StringBuffer stringBuffer = new StringBuffer(9);
        if ((i & 256) != 0) {
            stringBuffer.append('F');
        }
        if ((i & 128) != 0) {
            stringBuffer.append('H');
        }
        if ((i & 512) != 0) {
            stringBuffer.append('X');
        }
        if ((i & 2) != 0) {
            stringBuffer.append('i');
        }
        if ((i & 8) != 0) {
            stringBuffer.append('m');
        }
        if ((i & 4) != 0) {
            stringBuffer.append('s');
        }
        if ((i & 32) != 0) {
            stringBuffer.append('u');
        }
        if ((i & 64) != 0) {
            stringBuffer.append('w');
        }
        if ((i & 16) != 0) {
            stringBuffer.append('x');
        }
        if ((i & 1024) != 0) {
            stringBuffer.append(',');
        }
        return stringBuffer.toString().intern();
    }

    /* renamed from: c */
    public static final String m70006c(int i) {
        int i2 = i - 65536;
        return new String(new char[]{(char) ((i2 >> 10) + 55296), (char) ((i2 & 1023) + 56320)});
    }

    public static RegularExpression createRegex(String str, String str2) throws ParseException {
        RegularExpression regularExpression;
        int m70011h = m70011h(str2);
        synchronized (f112570b) {
            int i = 0;
            while (true) {
                regularExpression = null;
                if (i >= 20) {
                    break;
                }
                RegularExpression regularExpression2 = f112570b[i];
                if (regularExpression2 == null) {
                    i = -1;
                    break;
                }
                if (regularExpression2.equals(str, m70011h)) {
                    regularExpression = regularExpression2;
                    break;
                }
                i++;
            }
            if (regularExpression == null) {
                regularExpression = new RegularExpression(str, str2);
                RegularExpression[] regularExpressionArr = f112570b;
                System.arraycopy(regularExpressionArr, 0, regularExpressionArr, 1, 19);
                regularExpressionArr[0] = regularExpression;
            } else if (i != 0) {
                RegularExpression[] regularExpressionArr2 = f112570b;
                System.arraycopy(regularExpressionArr2, 0, regularExpressionArr2, 1, i);
                regularExpressionArr2[0] = regularExpression;
            }
        }
        return regularExpression;
    }

    /* renamed from: d */
    public static void m70007d(String str) {
        for (int i = 0; i < str.length(); i++) {
            System.out.print(Integer.toHexString(str.charAt(i)));
            System.out.print(" ");
        }
        System.out.println();
    }

    /* renamed from: e */
    public static final int m70008e(int i) {
        if (i == 44) {
            return 1024;
        }
        if (i == 70) {
            return 256;
        }
        if (i == 72) {
            return 128;
        }
        if (i == 88) {
            return 512;
        }
        if (i == 105) {
            return 2;
        }
        if (i == 109) {
            return 8;
        }
        if (i == 115) {
            return 4;
        }
        if (i == 117) {
            return 32;
        }
        if (i != 119) {
            return i != 120 ? 0 : 16;
        }
        return 64;
    }

    /* renamed from: f */
    public static final boolean m70009f(int i) {
        return (i & 64512) == 55296;
    }

    /* renamed from: g */
    public static final boolean m70010g(int i) {
        return (i & 64512) == 56320;
    }

    /* renamed from: h */
    public static final int m70011h(String str) throws ParseException {
        if (str == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            int m70008e = m70008e(str.charAt(i2));
            if (m70008e == 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unknown Option: ");
                stringBuffer.append(str.substring(i2));
                throw new ParseException(stringBuffer.toString(), -1);
            }
            i |= m70008e;
        }
        return i;
    }

    /* renamed from: i */
    public static String m70012i(String str) {
        char charAt;
        char charAt2;
        int i;
        char charAt3;
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            char charAt4 = str.charAt(i2);
            if (charAt4 == '\t' || charAt4 == '\n' || charAt4 == '\f' || charAt4 == '\r' || charAt4 == ' ') {
                i2 = i4;
            } else if (charAt4 == '#') {
                do {
                    i2 = i4;
                    if (i2 < length) {
                        i4 = i2 + 1;
                        charAt = str.charAt(i2);
                        if (charAt == '\r') {
                            break;
                        }
                    } else {
                        break;
                    }
                } while (charAt != '\n');
                i2 = i4;
            } else {
                if (charAt4 == '\\' && i4 < length) {
                    charAt2 = str.charAt(i4);
                    if (charAt2 != '#' && charAt2 != '\t' && charAt2 != '\n' && charAt2 != '\f' && charAt2 != '\r' && charAt2 != ' ') {
                        stringBuffer.append('\\');
                    }
                } else if (charAt4 == '[') {
                    i3++;
                    stringBuffer.append(charAt4);
                    if (i4 < length) {
                        charAt2 = str.charAt(i4);
                        if (charAt2 != '[' && charAt2 != ']') {
                            if (charAt2 == '^' && (i = i4 + 1) < length && ((charAt3 = str.charAt(i)) == '[' || charAt3 == ']')) {
                                stringBuffer.append('^');
                                stringBuffer.append(charAt3);
                                i2 = i4 + 2;
                            }
                        }
                    }
                    i2 = i4;
                } else {
                    if (i3 > 0 && charAt4 == ']') {
                        i3--;
                    }
                    stringBuffer.append(charAt4);
                    i2 = i4;
                }
                stringBuffer.append(charAt2);
                i2 = i4 + 1;
            }
        }
        return stringBuffer.toString();
    }

    /* renamed from: j */
    public static final String m70013j(CharacterIterator characterIterator, int i, int i2) {
        int i3 = i2 - i;
        char[] cArr = new char[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            cArr[i4] = characterIterator.setIndex(i4 + i);
        }
        return new String(cArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x017a, code lost:
    
        r3 = r10[r6];
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Throwable, org.apache.xerces.impl.xpath.regex.ParseException] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r10) {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.xpath.regex.REUtil.main(java.lang.String[]):void");
    }

    public static boolean matches(String str, String str2) throws ParseException {
        return createRegex(str, null).matches(str2);
    }

    public static String quoteMeta(String str) {
        int length = str.length();
        StringBuffer stringBuffer = null;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (".*+?{[()|\\^$".indexOf(charAt) >= 0) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer(((length - i) * 2) + i);
                    if (i > 0) {
                        stringBuffer.append(str.substring(0, i));
                    }
                }
                stringBuffer.append('\\');
            } else if (stringBuffer == null) {
            }
            stringBuffer.append(charAt);
        }
        return stringBuffer != null ? stringBuffer.toString() : str;
    }

    public static boolean matches(String str, String str2, String str3) throws ParseException {
        return createRegex(str, str2).matches(str3);
    }
}
