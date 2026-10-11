package com.sunia.HTREnginev2;

import java.io.File;
import java.io.UnsupportedEncodingException;

/* loaded from: classes5.dex */
public class dhg {

    /* renamed from: a */
    public static boolean[] f67872a = new boolean[128];

    /* renamed from: b */
    public static char[] f67873b = new char[128];

    /* renamed from: c */
    public static char[] f67874c = new char[128];

    /* renamed from: d */
    public static char[] f67875d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static {
        for (int i = 0; i <= 31; i++) {
            f67872a[i] = true;
            char[] cArr = f67873b;
            char[] cArr2 = f67875d;
            cArr[i] = cArr2[i >> 4];
            f67874c[i] = cArr2[i & 15];
        }
        f67872a[127] = true;
        f67873b[127] = '7';
        f67874c[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '#', '%', '\"', '{', '}', '|', '\\', '^', '~', '[', ']', '`'};
        for (int i2 = 0; i2 < 15; i2++) {
            char c = cArr3[i2];
            f67872a[c] = true;
            char[] cArr4 = f67873b;
            char[] cArr5 = f67875d;
            cArr4[c] = cArr5[c >> 4];
            f67874c[c] = cArr5[c & 15];
        }
    }

    /* renamed from: a */
    public static String m53660a(String str) {
        char c;
        char charAt;
        char c2;
        char upperCase;
        if (str == null) {
            return null;
        }
        String replace = str.replace(File.separatorChar, '/');
        int length = replace.length();
        StringBuffer stringBuffer = new StringBuffer(length * 3);
        stringBuffer.append("file://");
        if (length >= 2 && replace.charAt(1) == ':' && (upperCase = Character.toUpperCase(replace.charAt(0))) >= 'A' && upperCase <= 'Z') {
            stringBuffer.append('/');
        }
        int i = 0;
        while (i < length && (charAt = replace.charAt(i)) < 128) {
            if (f67872a[charAt]) {
                stringBuffer.append('%');
                stringBuffer.append(f67873b[charAt]);
                c2 = f67874c[charAt];
            } else {
                c2 = charAt;
            }
            stringBuffer.append(c2);
            i++;
        }
        if (i < length) {
            try {
                for (byte b : replace.substring(i).getBytes("UTF-8")) {
                    if (b < 0) {
                        int i2 = b + 256;
                        stringBuffer.append('%');
                        stringBuffer.append(f67875d[i2 >> 4]);
                        c = f67875d[i2 & 15];
                    } else if (f67872a[b]) {
                        stringBuffer.append('%');
                        stringBuffer.append(f67873b[b]);
                        c = f67874c[b];
                    } else {
                        c = (char) b;
                    }
                    stringBuffer.append(c);
                }
            } catch (UnsupportedEncodingException unused) {
                return replace;
            }
        }
        return stringBuffer.toString();
    }
}
