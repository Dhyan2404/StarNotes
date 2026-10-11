package com.google.gson.internal.bind.util;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes6.dex */
public class ISO8601Utils {

    /* renamed from: a */
    public static final String f36292a = "UTC";

    /* renamed from: b */
    public static final TimeZone f36293b = TimeZone.getTimeZone("UTC");

    /* renamed from: a */
    public static boolean m28357a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    /* renamed from: b */
    public static int m28358b(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* renamed from: c */
    public static void m28359c(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* renamed from: d */
    public static int m28360d(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = -digit;
        } else {
            i3 = 0;
            i4 = i;
        }
        while (i4 < i2) {
            int i5 = i4 + 1;
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = (i3 * 10) - digit2;
            i4 = i5;
        }
        return -i3;
    }

    public static String format(Date date) {
        return format(date, false, f36293b);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00d3 A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:18:0x0054, B:20:0x0064, B:21:0x0066, B:23:0x0072, B:24:0x0074, B:26:0x007a, B:30:0x0084, B:35:0x0094, B:37:0x009c, B:42:0x00cd, B:44:0x00d3, B:46:0x00da, B:47:0x0187, B:52:0x00e4, B:53:0x00ff, B:54:0x0100, B:57:0x011c, B:59:0x0129, B:62:0x0132, B:64:0x0151, B:67:0x0160, B:68:0x0182, B:70:0x0185, B:71:0x010b, B:72:0x01b8, B:73:0x01bf, B:74:0x00b4, B:75:0x00b7), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b8 A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, TryCatch #0 {IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:18:0x0054, B:20:0x0064, B:21:0x0066, B:23:0x0072, B:24:0x0074, B:26:0x007a, B:30:0x0084, B:35:0x0094, B:37:0x009c, B:42:0x00cd, B:44:0x00d3, B:46:0x00da, B:47:0x0187, B:52:0x00e4, B:53:0x00ff, B:54:0x0100, B:57:0x011c, B:59:0x0129, B:62:0x0132, B:64:0x0151, B:67:0x0160, B:68:0x0182, B:70:0x0185, B:71:0x010b, B:72:0x01b8, B:73:0x01bf, B:74:0x00b4, B:75:0x00b7), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r17, java.text.ParsePosition r18) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static String format(Date date, boolean z) {
        return format(date, z, f36293b);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        m28359c(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        m28359c(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        m28359c(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        m28359c(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        m28359c(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        m28359c(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append('.');
            m28359c(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            sb.append(offset >= 0 ? PhoneNumberUtil.f36455s : '-');
            m28359c(sb, abs, 2);
            sb.append(':');
            m28359c(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }
}
