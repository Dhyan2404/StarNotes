package com.alibaba.sdk.android.oss.common.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.SimpleTimeZone;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes3.dex */
public class DateUtil {

    /* renamed from: a */
    public static final String f12953a = "EEE, dd MMM yyyy HH:mm:ss 'GMT'";

    /* renamed from: b */
    public static final String f12954b = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

    /* renamed from: c */
    public static final String f12955c = "yyyy-MM-dd'T'HH:mm:ss'Z'";

    /* renamed from: d */
    public static volatile long f12956d;

    /* renamed from: a */
    public static DateFormat m7656a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZones.GMT_ID));
        return simpleDateFormat;
    }

    /* renamed from: b */
    public static DateFormat m7657b() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZones.GMT_ID));
        return simpleDateFormat;
    }

    /* renamed from: c */
    public static DateFormat m7658c() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f12953a, Locale.US);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, TimeZones.GMT_ID));
        return simpleDateFormat;
    }

    public static synchronized String currentFixedSkewedTimeInRFC822Format() {
        String formatRfc822Date;
        synchronized (DateUtil.class) {
            formatRfc822Date = formatRfc822Date(new Date(getFixedSkewedTimeMillis()));
        }
        return formatRfc822Date;
    }

    public static String formatAlternativeIso8601Date(Date date) {
        return m7656a().format(date);
    }

    public static String formatIso8601Date(Date date) {
        return m7657b().format(date);
    }

    public static String formatRfc822Date(Date date) {
        return m7658c().format(date);
    }

    public static long getFixedSkewedTimeMillis() {
        return System.currentTimeMillis() + f12956d;
    }

    public static Date parseIso8601Date(String str) throws ParseException {
        try {
            return m7657b().parse(str);
        } catch (ParseException unused) {
            return m7656a().parse(str);
        }
    }

    public static Date parseRfc822Date(String str) throws ParseException {
        return m7658c().parse(str);
    }

    public static synchronized void setCurrentServerTime(long j) {
        synchronized (DateUtil.class) {
            f12956d = j - System.currentTimeMillis();
        }
    }
}
