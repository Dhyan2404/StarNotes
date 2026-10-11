package com.sunia.HTREnginev2;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public final class wvm {
    /* renamed from: a */
    public static String m58137a(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (Character.isLetter(str.charAt(i2))) {
                cArr[i] = str.charAt(i2);
                i++;
            }
        }
        return i == length ? str.toUpperCase(Locale.ENGLISH) : new String(cArr, 0, i).toUpperCase(Locale.ENGLISH);
    }

    /* renamed from: b */
    public static int m58138b(StringEncoder stringEncoder, String str, String str2) throws EncoderException {
        return m58139c(stringEncoder.encode(str), stringEncoder.encode(str2));
    }

    /* renamed from: c */
    public static int m58139c(String str, String str2) {
        if (str == null || str2 == null) {
            return 0;
        }
        int min = Math.min(str.length(), str2.length());
        int i = 0;
        for (int i2 = 0; i2 < min; i2++) {
            if (str.charAt(i2) == str2.charAt(i2)) {
                i++;
            }
        }
        return i;
    }
}
