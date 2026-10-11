package org.apache.http.client.utils;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.lang.ref.SoftReference;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public final class DateUtils {
    public static final TimeZone GMT;
    public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
    public static final String PATTERN_RFC1036 = "EEE, dd-MMM-yy HH:mm:ss zzz";
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";

    /* renamed from: a */
    public static final String[] f110199a = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy"};

    /* renamed from: b */
    public static final Date f110200b;

    /* renamed from: org.apache.http.client.utils.DateUtils$a */
    /* loaded from: classes12.dex */
    public static final class C19342a {

        /* renamed from: a */
        public static final ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> f110201a = new ThreadLocal<>();

        /* renamed from: a */
        public static void m68301a() {
            f110201a.remove();
        }

        /* renamed from: b */
        public static SimpleDateFormat m68302b(String str) {
            ThreadLocal<SoftReference<Map<String, SimpleDateFormat>>> threadLocal = f110201a;
            SoftReference<Map<String, SimpleDateFormat>> softReference = threadLocal.get();
            Map<String, SimpleDateFormat> map = softReference == null ? null : softReference.get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(new SoftReference<>(map));
            }
            SimpleDateFormat simpleDateFormat = map.get(str);
            if (simpleDateFormat != null) {
                return simpleDateFormat;
            }
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str, Locale.US);
            simpleDateFormat2.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
            map.put(str, simpleDateFormat2);
            return simpleDateFormat2;
        }
    }

    static {
        TimeZone timeZone = TimeZone.getTimeZone(TimeZones.GMT_ID);
        GMT = timeZone;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(timeZone);
        calendar.set(2000, 0, 1, 0, 0, 0);
        calendar.set(14, 0);
        f110200b = calendar.getTime();
    }

    public static void clearThreadLocal() {
        C19342a.m68301a();
    }

    public static String formatDate(Date date) {
        return formatDate(date, "EEE, dd MMM yyyy HH:mm:ss zzz");
    }

    public static Date parseDate(String str) {
        return parseDate(str, null, null);
    }

    public static String formatDate(Date date, String str) {
        Args.notNull(date, "Date");
        Args.notNull(str, "Pattern");
        return C19342a.m68302b(str).format(date);
    }

    public static Date parseDate(String str, String[] strArr) {
        return parseDate(str, strArr, null);
    }

    public static Date parseDate(String str, String[] strArr, Date date) {
        Args.notNull(str, "Date value");
        if (strArr == null) {
            strArr = f110199a;
        }
        if (date == null) {
            date = f110200b;
        }
        if (str.length() > 1 && str.startsWith(CloudStorageConstants.SINGLE_QUOTES) && str.endsWith(CloudStorageConstants.SINGLE_QUOTES)) {
            str = str.substring(1, str.length() - 1);
        }
        for (String str2 : strArr) {
            SimpleDateFormat m68302b = C19342a.m68302b(str2);
            m68302b.set2DigitYearStart(date);
            ParsePosition parsePosition = new ParsePosition(0);
            Date parse = m68302b.parse(str, parsePosition);
            if (parsePosition.getIndex() != 0) {
                return parse;
            }
        }
        return null;
    }
}
