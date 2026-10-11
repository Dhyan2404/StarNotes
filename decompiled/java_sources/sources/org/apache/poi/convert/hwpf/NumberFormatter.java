package org.apache.poi.convert.hwpf;

import java.util.Locale;
import org.apache.poi.util.ChineseNumber;

/* loaded from: classes12.dex */
public final class NumberFormatter {
    private static final String[] ROMAN_LETTERS = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
    private static final int[] ROMAN_VALUES = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    private static final int T_ARABIC = 0;
    private static final int T_CHINESE_COUNTING = 11;
    private static final int T_CHINESE_COUNTING2 = 37;
    private static final int T_CHINESE_DIZHI = 31;
    private static final int T_CHINESE_LEGAL = 38;
    private static final int T_CHINESE_TIANGAN = 30;
    private static final int T_CIRCLE = 28;
    private static final int T_LOWER_LETTER = 4;
    private static final int T_LOWER_ROMAN = 2;
    private static final int T_ORDINAL = 5;
    private static final int T_UPPER_LETTER = 3;
    private static final int T_UPPER_ROMAN = 1;

    public static String getNumber(int i, int i2) {
        if (i2 == 1) {
            return toRoman(i).toUpperCase(Locale.ROOT);
        }
        if (i2 == 2) {
            return toRoman(i);
        }
        if (i2 == 3) {
            return toLetters(i).toUpperCase(Locale.ROOT);
        }
        if (i2 == 4) {
            return toLetters(i);
        }
        if (i2 != 11) {
            if (i2 == 28) {
                return String.valueOf((char) ((i + 9312) - 1));
            }
            if (i2 == 30) {
                return ChineseNumber.toTianGan(i);
            }
            if (i2 == 31) {
                return ChineseNumber.toDiZhi(i);
            }
            if (i2 != 37) {
                return i2 != 38 ? String.valueOf(i) : ChineseNumber.toChineseLegal(i);
            }
        }
        return ChineseNumber.toChinese(i);
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
