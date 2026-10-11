package com.twelvemonkeys.net;

import com.twelvemonkeys.lang.DateUtil;
import com.twelvemonkeys.lang.StringUtil;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes10.dex */
public class HTTPUtil {

    /* renamed from: a */
    public static final SimpleDateFormat f94332a;

    /* renamed from: b */
    public static final SimpleDateFormat f94333b;

    /* renamed from: c */
    public static final SimpleDateFormat f94334c;

    /* renamed from: d */
    public static long f94335d;

    static {
        Locale locale = Locale.US;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", locale);
        f94332a = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("EEE, dd-MMM-yy HH:mm:ss z", locale);
        f94333b = simpleDateFormat2;
        SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("EEE MMM d HH:mm:ss yy", locale);
        f94334c = simpleDateFormat3;
        f94335d = DateUtil.currentTimeDay();
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        simpleDateFormat3.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        m60742b();
    }

    /* renamed from: a */
    public static Date m60741a(String str) throws NumberFormatException {
        SimpleDateFormat simpleDateFormat;
        Date parse;
        if (str == null) {
            throw new IllegalArgumentException("date == null");
        }
        if (StringUtil.isEmpty(str)) {
            throw new NumberFormatException("Invalid HTTP date: \"" + str + "\"");
        }
        if (str.indexOf(45) >= 0) {
            simpleDateFormat = f94333b;
            m60742b();
        } else if (str.indexOf(44) < 0) {
            simpleDateFormat = f94334c;
            m60742b();
        } else {
            simpleDateFormat = f94332a;
        }
        try {
            synchronized (simpleDateFormat) {
                parse = simpleDateFormat.parse(str);
            }
            if (parse != null) {
                return parse;
            }
            throw new NumberFormatException("Invalid HTTP date: \"" + str + "\"");
        } catch (ParseException e) {
            NumberFormatException numberFormatException = new NumberFormatException("Invalid HTTP date: \"" + str + "\"");
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    /* renamed from: b */
    public static void m60742b() {
        long j = f94335d;
        if (j < System.currentTimeMillis()) {
            long j2 = j + 86400000;
            f94335d = j2;
            Date date = new Date(j2 - 1577847600000L);
            SimpleDateFormat simpleDateFormat = f94333b;
            synchronized (simpleDateFormat) {
                simpleDateFormat.set2DigitYearStart(date);
            }
            SimpleDateFormat simpleDateFormat2 = f94334c;
            synchronized (simpleDateFormat2) {
                simpleDateFormat2.set2DigitYearStart(date);
            }
        }
    }

    public static String formatHTTPDate(long j) {
        return formatHTTPDate(new Date(j));
    }

    public static long parseHTTPDate(String str) throws NumberFormatException {
        return m60741a(str).getTime();
    }

    public static String formatHTTPDate(Date date) {
        String format;
        SimpleDateFormat simpleDateFormat = f94332a;
        synchronized (simpleDateFormat) {
            format = simpleDateFormat.format(date);
        }
        return format;
    }
}
