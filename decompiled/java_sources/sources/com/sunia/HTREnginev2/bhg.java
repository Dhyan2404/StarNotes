package com.sunia.HTREnginev2;

import java.io.File;
import java.io.UnsupportedEncodingException;

/* loaded from: classes5.dex */
public class bhg {

    /* renamed from: a */
    public static boolean[] f65772a = new boolean[128];

    /* renamed from: b */
    public static char[] f65773b = new char[128];

    /* renamed from: c */
    public static char[] f65774c = new char[128];

    /* renamed from: d */
    public static char[] f65775d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static {
        for (int i = 0; i <= 31; i++) {
            f65772a[i] = true;
            char[] cArr = f65773b;
            char[] cArr2 = f65775d;
            cArr[i] = cArr2[i >> 4];
            f65774c[i] = cArr2[i & 15];
        }
        f65772a[127] = true;
        f65773b[127] = '7';
        f65774c[127] = 'F';
        char[] cArr3 = {' ', '<', '>', '#', '%', '\"', '{', '}', '|', '\\', '^', '~', '[', ']', '`'};
        for (int i2 = 0; i2 < 15; i2++) {
            char c = cArr3[i2];
            f65772a[c] = true;
            char[] cArr4 = f65773b;
            char[] cArr5 = f65775d;
            cArr4[c] = cArr5[c >> 4];
            f65774c[c] = cArr5[c & 15];
        }
    }

    /* renamed from: a */
    public static String m53270a(String str) {
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
            if (f65772a[charAt]) {
                stringBuffer.append('%');
                stringBuffer.append(f65773b[charAt]);
                c2 = f65774c[charAt];
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
                        stringBuffer.append(f65775d[i2 >> 4]);
                        c = f65775d[i2 & 15];
                    } else if (f65772a[b]) {
                        stringBuffer.append('%');
                        stringBuffer.append(f65773b[b]);
                        c = f65774c[b];
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
