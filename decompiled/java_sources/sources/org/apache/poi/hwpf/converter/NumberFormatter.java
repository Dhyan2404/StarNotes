package org.apache.poi.hwpf.converter;

import java.util.Locale;

/* loaded from: classes12.dex */
public final class NumberFormatter {
    private static final String[] ROMAN_LETTERS = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
    private static final int[] ROMAN_VALUES = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    private static final int T_ARABIC = 0;
    private static final int T_LOWER_LETTER = 4;
    private static final int T_LOWER_ROMAN = 2;
    private static final int T_ORDINAL = 5;
    private static final int T_UPPER_LETTER = 3;
    private static final int T_UPPER_ROMAN = 1;

    public static String getNumber(int i, int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? String.valueOf(i) : toLetters(i) : toLetters(i).toUpperCase(Locale.ROOT) : toRoman(i) : toRoman(i).toUpperCase(Locale.ROOT);
    }

    private static String toLetters(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Unsupported number: " + i);
        }
        int i2 = 33;
        char[] cArr = new char[33];
        while (i > 0) {
            int i3 = i - 1;
            int i4 = i3 % 26;
            i2--;
            cArr[i2] = (char) (i4 + 97);
            i = (i3 - i4) / 26;
        }
        return new String(cArr, i2, 33 - i2);
    }

    private static String toRoman(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Unsupported number: " + i);
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        while (true) {
            String[] strArr = ROMAN_LETTERS;
            if (i2 >= strArr.length) {
                return sb.toString();
            }
            String str = strArr[i2];
            int i3 = ROMAN_VALUES[i2];
            while (i >= i3) {
                i -= i3;
                sb.append(str);
            }
            i2++;
        }
    }
}
