package org.apache.poi.util;

import java.nio.charset.Charset;
import java.time.ZoneOffset;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes13.dex */
public final class LocaleUtil {
    public static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(ZoneOffset.UTC);
    public static final Charset CHARSET_1252 = Charset.forName("CP1252");
    private static final ThreadLocal<TimeZone> userTimeZone = new ThreadLocal<>();
    private static final ThreadLocal<Locale> userLocale = new ThreadLocal<>();

    private LocaleUtil() {
    }

    public static int getDefaultCodePageFromLCID(int i) {
        LocaleID lookupByLcid = LocaleID.lookupByLcid(i & 65535);
        if (lookupByLcid == null) {
            return 0;
        }
        return lookupByLcid.getDefaultCodepage();
    }

    public static Calendar getLocaleCalendar() {
        return getLocaleCalendar(getUserTimeZone());
    }

    public static String getLocaleFromLCID(int i) {
        LocaleID lookupByLcid = LocaleID.lookupByLcid(i & 65535);
        return lookupByLcid == null ? "invalid" : lookupByLcid.getLanguageTag();
    }

    @SuppressForbidden("implementation around default locales in POI")
    public static Locale getUserLocale() {
        Locale locale = userLocale.get();
        return locale != null ? locale : Locale.getDefault();
    }

    @SuppressForbidden("implementation around default locales in POI")
    public static TimeZone getUserTimeZone() {
        TimeZone timeZone = userTimeZone.get();
        return timeZone != null ? timeZone : TimeZone.getDefault();
    }

    public static void resetUserLocale() {
        userLocale.remove();
    }

    public static void resetUserTimeZone() {
        userTimeZone.remove();
    }

    public static void setUserLocale(Locale locale) {
        userLocale.set(locale);
    }

    public static void setUserTimeZone(TimeZone timeZone) {
        userTimeZone.set(timeZone);
    }

    public static Calendar getLocaleCalendar(int i, int i2, int i3) {
        return getLocaleCalendar(i, i2, i3, 0, 0, 0);
    }

    public static Calendar getLocaleCalendar(int i, int i2, int i3, int i4, int i5, int i6) {
        Calendar localeCalendar = getLocaleCalendar();
        localeCalendar.set(i, i2, i3, i4, i5, i6);
        localeCalendar.clear(14);
        return localeCalendar;
    }

    public static Calendar getLocaleCalendar(TimeZone timeZone) {
        return Calendar.getInstance(timeZone, getUserLocale());
    }
}
