package com.sunia.HTREnginev2;

import java.io.File;
import java.io.UnsupportedEncodingException;

/* loaded from: classes13.dex */
public final class chg {

    /* renamed from: a */
    public static boolean[] f66832a = new boolean[128];

    /* renamed from: b */
    public static char[] f66833b = new char[128];

    /* renamed from: c */
    public static char[] f66834c = new char[128];

    /* renamed from: d */
    public static char[] f66835d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static {
        for (int i = 0; i <= 31; i++) {
            f66832a[i] = true;
            char[] cArr = f66833b;
            char[] cArr2 = f66835d;
            cArr[i] = cArr2[i >> 4];
            f66834c[i] = cArr2[i & 15];
        }
        f66832a[127] = true;
        f66833b[127] = '7';
        f66834c[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '#', '%', '\"', '{', '}', '|', '\\', '^', '~', '[', ']', '`'};
        for (int i2 = 0; i2 < 15; i2++) {
            char c = cArr3[i2];
            f66832a[c] = true;
            char[] cArr4 = f66833b;
            char[] cArr5 = f66835d;
            cArr4[c] = cArr5[c >> 4];
            f66834c[c] = cArr5[c & 15];
        }
    }

    /* renamed from: a */
    public static String m53457a(String str) {
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
            if (f66832a[charAt]) {
                stringBuffer.append('%');
                stringBuffer.append(f66833b[charAt]);
                c2 = f66834c[charAt];
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
                        stringBuffer.append(f66835d[i2 >> 4]);
                        c = f66835d[i2 & 15];
                    } else if (f66832a[b]) {
                        stringBuffer.append('%');
                        stringBuffer.append(f66833b[b]);
                        c = f66834c[b];
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
