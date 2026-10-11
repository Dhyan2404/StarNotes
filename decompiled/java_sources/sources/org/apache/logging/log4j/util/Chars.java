package org.apache.logging.log4j.util;

/* loaded from: classes12.dex */
public final class Chars {

    /* renamed from: CR */
    public static final char f111260CR = '\r';
    public static final char DQUOTE = '\"';

    /* renamed from: EQ */
    public static final char f111261EQ = '=';

    /* renamed from: LF */
    public static final char f111262LF = '\n';
    public static final char NUL = 0;
    public static final char QUOTE = '\'';
    public static final char SPACE = ' ';
    public static final char TAB = '\t';

    /* renamed from: a */
    public static char m68637a(final int digit) {
        return (char) ((digit + 97) - 10);
    }

    /* renamed from: b */
    public static char m68638b(final int digit) {
        return (char) (digit + 48);
    }

    /* renamed from: c */
    public static char m68639c(final int digit) {
        return (char) ((digit + 65) - 10);
    }

    public static char getLowerCaseHex(final int digit) {
        if (digit < 0 || digit >= 16) {
            return (char) 0;
        }
        return digit < 10 ? m68638b(digit) : m68637a(digit);
    }

    public static char getUpperCaseHex(final int digit) {
        if (digit < 0 || digit >= 16) {
            return (char) 0;
        }
        return digit < 10 ? m68638b(digit) : m68639c(digit);
    }
}
