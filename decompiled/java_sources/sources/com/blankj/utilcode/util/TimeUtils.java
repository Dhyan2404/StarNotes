package com.blankj.utilcode.util;

import android.annotation.SuppressLint;
import android.provider.Settings;
import androidx.annotation.NonNull;
import com.onyx.android.sdk.base.utils.DateTimeUtil;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public final class TimeUtils {

    /* renamed from: a */
    public static final ThreadLocal<Map<String, SimpleDateFormat>> f14153a = new C1876a();

    /* renamed from: b */
    public static final String[] f14154b = {"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};

    /* renamed from: c */
    public static final int[] f14155c = {20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};

    /* renamed from: d */
    public static final String[] f14156d = {"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座"};

    /* renamed from: com.blankj.utilcode.util.TimeUtils$a */
    /* loaded from: classes3.dex */
    public static class C1876a extends ThreadLocal<Map<String, SimpleDateFormat>> {
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map<String, SimpleDateFormat> initialValue() {
            return new HashMap();
        }
    }

    public TimeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static SimpleDateFormat m8353a() {
        return getSafeDateFormat(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS);
    }

    /* renamed from: b */
    public static long m8354b() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    /* renamed from: c */
    public static String m8355c(long j, int i) {
        if (i <= 0) {
            return null;
        }
        int min = Math.min(i, 5);
        String[] strArr = {"天", "小时", "分钟", "秒", "毫秒"};
        if (j == 0) {
            return 0 + strArr[min - 1];
        }
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append("-");
            j = -j;
        }
        int[] iArr = {86400000, 3600000, 60000, 1000, 1};
        for (int i2 = 0; i2 < min; i2++) {
            int i3 = iArr[i2];
            if (j >= i3) {
                long j2 = j / i3;
                j -= i3 * j2;
                sb.append(j2);
                sb.append(strArr[i2]);
            }
        }
        return sb.toString();
    }

    /* renamed from: d */
    public static long m8356d(long j, int i) {
        return j / i;
    }

    public static long date2Millis(Date date) {
        return date.getTime();
    }

    public static String date2String(Date date) {
        return date2String(date, m8353a());
    }

    /* renamed from: e */
    public static long m8357e(long j, int i) {
        return j * i;
    }

    public static String getChineseWeek(String str) {
        return getChineseWeek(string2Date(str, m8353a()));
    }

    public static String getChineseZodiac(String str) {
        return getChineseZodiac(string2Date(str, m8353a()));
    }

    public static Date getDate(long j, long j2, int i) {
        return millis2Date(j + m8357e(j2, i));
    }

    public static Date getDateByNow(long j, int i) {
        return getDate(getNowMills(), j, i);
    }

    public static String getFitTimeSpan(String str, String str2, int i) {
        return m8355c(string2Millis(str, m8353a()) - string2Millis(str2, m8353a()), i);
    }

    public static String getFitTimeSpanByNow(String str, int i) {
        return getFitTimeSpan(str, getNowString(), m8353a(), i);
    }

    public static String getFriendlyTimeSpanByNow(String str) {
        return getFriendlyTimeSpanByNow(str, m8353a());
    }

    public static long getMillis(long j, long j2, int i) {
        return j + m8357e(j2, i);
    }

    public static long getMillisByNow(long j, int i) {
        return getMillis(getNowMills(), j, i);
    }

    public static Date getNowDate() {
        return new Date();
    }

    public static long getNowMills() {
        return System.currentTimeMillis();
    }

    public static String getNowString() {
        return millis2String(System.currentTimeMillis(), m8353a());
    }

    @SuppressLint({"SimpleDateFormat"})
    public static SimpleDateFormat getSafeDateFormat(String str) {
        Map<String, SimpleDateFormat> map = f14153a.get();
        SimpleDateFormat simpleDateFormat = map.get(str);
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
        map.put(str, simpleDateFormat2);
        return simpleDateFormat2;
    }

    public static String getString(long j, long j2, int i) {
        return getString(j, m8353a(), j2, i);
    }

    public static String getStringByNow(long j, int i) {
        return getStringByNow(j, m8353a(), i);
    }

    public static long getTimeSpan(String str, String str2, int i) {
        return getTimeSpan(str, str2, m8353a(), i);
    }

    public static long getTimeSpanByNow(String str, int i) {
        return getTimeSpan(str, getNowString(), m8353a(), i);
    }

    public static String getUSWeek(String str) {
        return getUSWeek(string2Date(str, m8353a()));
    }

    public static int getValueByCalendarField(int i) {
        return Calendar.getInstance().get(i);
    }

    public static String getZodiac(String str) {
        return getZodiac(string2Date(str, m8353a()));
    }

    public static boolean isAm() {
        return Calendar.getInstance().get(9) == 0;
    }

    public static boolean isLeapYear(String str) {
        return isLeapYear(string2Date(str, m8353a()));
    }

    public static boolean isPm() {
        return !isAm();
    }

    public static boolean isToday(String str) {
        return isToday(string2Millis(str, m8353a()));
    }

    public static boolean isUsingNetworkProvidedTime() {
        return Settings.Global.getInt(Utils.getApp().getContentResolver(), "auto_time", 0) == 1;
    }

    public static Date millis2Date(long j) {
        return new Date(j);
    }

    public static String millis2String(long j) {
        return millis2String(j, m8353a());
    }

    public static Date string2Date(String str) {
        return string2Date(str, m8353a());
    }

    public static long string2Millis(String str) {
        return string2Millis(str, m8353a());
    }

    public static String date2String(Date date, @NonNull String str) {
        return getSafeDateFormat(str).format(date);
    }

    public static String getChineseWeek(String str, @NonNull DateFormat dateFormat) {
        return getChineseWeek(string2Date(str, dateFormat));
    }

    public static String getChineseZodiac(String str, @NonNull DateFormat dateFormat) {
        return getChineseZodiac(string2Date(str, dateFormat));
    }

    public static Date getDate(String str, long j, int i) {
        return getDate(str, m8353a(), j, i);
    }

    public static String getFitTimeSpanByNow(String str, @NonNull DateFormat dateFormat, int i) {
        return getFitTimeSpan(str, getNowString(dateFormat), dateFormat, i);
    }

    public static String getFriendlyTimeSpanByNow(String str, @NonNull DateFormat dateFormat) {
        return getFriendlyTimeSpanByNow(string2Millis(str, dateFormat));
    }

    public static long getMillis(String str, long j, int i) {
        return getMillis(str, m8353a(), j, i);
    }

    public static String getNowString(@NonNull DateFormat dateFormat) {
        return millis2String(System.currentTimeMillis(), dateFormat);
    }

    public static String getString(long j, @NonNull DateFormat dateFormat, long j2, int i) {
        return millis2String(j + m8357e(j2, i), dateFormat);
    }

    public static String getStringByNow(long j, @NonNull DateFormat dateFormat, int i) {
        return getString(getNowMills(), dateFormat, j, i);
    }

    public static long getTimeSpan(String str, String str2, @NonNull DateFormat dateFormat, int i) {
        return m8356d(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i);
    }

    public static long getTimeSpanByNow(String str, @NonNull DateFormat dateFormat, int i) {
        return getTimeSpan(str, getNowString(dateFormat), dateFormat, i);
    }

    public static String getUSWeek(String str, @NonNull DateFormat dateFormat) {
        return getUSWeek(string2Date(str, dateFormat));
    }

    public static String getZodiac(String str, @NonNull DateFormat dateFormat) {
        return getZodiac(string2Date(str, dateFormat));
    }

    public static boolean isLeapYear(String str, @NonNull DateFormat dateFormat) {
        return isLeapYear(string2Date(str, dateFormat));
    }

    public static boolean isPm(String str) {
        return !isAm(str);
    }

    public static boolean isToday(String str, @NonNull DateFormat dateFormat) {
        return isToday(string2Millis(str, dateFormat));
    }

    public static String millis2String(long j, @NonNull String str) {
        return millis2String(j, getSafeDateFormat(str));
    }

    public static Date string2Date(String str, @NonNull String str2) {
        return string2Date(str, getSafeDateFormat(str2));
    }

    public static long string2Millis(String str, @NonNull String str2) {
        return string2Millis(str, getSafeDateFormat(str2));
    }

    public static String date2String(Date date, @NonNull DateFormat dateFormat) {
        return dateFormat.format(date);
    }

    public static String getChineseWeek(Date date) {
        return new SimpleDateFormat("E", Locale.CHINA).format(date);
    }

    public static String getChineseZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return f14154b[calendar.get(1) % 12];
    }

    public static Date getDate(String str, @NonNull DateFormat dateFormat, long j, int i) {
        return millis2Date(string2Millis(str, dateFormat) + m8357e(j, i));
    }

    public static String getFitTimeSpan(String str, String str2, @NonNull DateFormat dateFormat, int i) {
        return m8355c(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i);
    }

    public static String getFitTimeSpanByNow(Date date, int i) {
        return getFitTimeSpan(date, getNowDate(), i);
    }

    public static String getFriendlyTimeSpanByNow(Date date) {
        return getFriendlyTimeSpanByNow(date.getTime());
    }

    public static long getMillis(String str, @NonNull DateFormat dateFormat, long j, int i) {
        return string2Millis(str, dateFormat) + m8357e(j, i);
    }

    public static String getString(String str, long j, int i) {
        return getString(str, m8353a(), j, i);
    }

    public static long getTimeSpan(Date date, Date date2, int i) {
        return m8356d(date2Millis(date) - date2Millis(date2), i);
    }

    public static long getTimeSpanByNow(Date date, int i) {
        return getTimeSpan(date, new Date(), i);
    }

    public static String getUSWeek(Date date) {
        return new SimpleDateFormat("EEEE", Locale.US).format(date);
    }

    public static int getValueByCalendarField(String str, int i) {
        return getValueByCalendarField(string2Date(str, m8353a()), i);
    }

    public static String getZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return getZodiac(calendar.get(2) + 1, calendar.get(5));
    }

    public static boolean isAm(String str) {
        return getValueByCalendarField(str, m8353a(), 9) == 0;
    }

    public static boolean isLeapYear(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return isLeapYear(calendar.get(1));
    }

    public static boolean isPm(String str, @NonNull DateFormat dateFormat) {
        return !isAm(str, dateFormat);
    }

    public static boolean isToday(Date date) {
        return isToday(date.getTime());
    }

    public static String millis2String(long j, @NonNull DateFormat dateFormat) {
        return dateFormat.format(new Date(j));
    }

    public static Date string2Date(String str, @NonNull DateFormat dateFormat) {
        try {
            return dateFormat.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static long string2Millis(String str, @NonNull DateFormat dateFormat) {
        try {
            return dateFormat.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static String getChineseWeek(long j) {
        return getChineseWeek(new Date(j));
    }

    public static Date getDate(Date date, long j, int i) {
        return millis2Date(date2Millis(date) + m8357e(j, i));
    }

    public static String getFitTimeSpanByNow(long j, int i) {
        return getFitTimeSpan(j, System.currentTimeMillis(), i);
    }

    public static String getFriendlyTimeSpanByNow(long j) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (currentTimeMillis < 0) {
            return String.format("%tc", Long.valueOf(j));
        }
        if (currentTimeMillis < 1000) {
            return "刚刚";
        }
        if (currentTimeMillis < 60000) {
            return String.format(Locale.getDefault(), "%d秒前", Long.valueOf(currentTimeMillis / 1000));
        }
        if (currentTimeMillis < 3600000) {
            return String.format(Locale.getDefault(), "%d分钟前", Long.valueOf(currentTimeMillis / 60000));
        }
        long m8354b = m8354b();
        if (j >= m8354b) {
            return String.format("今天%tR", Long.valueOf(j));
        }
        if (j >= m8354b - 86400000) {
            return String.format("昨天%tR", Long.valueOf(j));
        }
        return String.format("%tF", Long.valueOf(j));
    }

    public static long getMillis(Date date, long j, int i) {
        return date2Millis(date) + m8357e(j, i);
    }

    public static String getString(String str, @NonNull DateFormat dateFormat, long j, int i) {
        return millis2String(string2Millis(str, dateFormat) + m8357e(j, i), dateFormat);
    }

    public static long getTimeSpan(long j, long j2, int i) {
        return m8356d(j - j2, i);
    }

    public static long getTimeSpanByNow(long j, int i) {
        return getTimeSpan(j, System.currentTimeMillis(), i);
    }

    public static String getUSWeek(long j) {
        return getUSWeek(new Date(j));
    }

    public static int getValueByCalendarField(String str, @NonNull DateFormat dateFormat, int i) {
        return getValueByCalendarField(string2Date(str, dateFormat), i);
    }

    public static boolean isAm(String str, @NonNull DateFormat dateFormat) {
        return getValueByCalendarField(str, dateFormat, 9) == 0;
    }

    public static boolean isPm(Date date) {
        return !isAm(date);
    }

    public static boolean isToday(long j) {
        long m8354b = m8354b();
        return j >= m8354b && j < m8354b + 86400000;
    }

    public static String getFitTimeSpan(Date date, Date date2, int i) {
        return m8355c(date2Millis(date) - date2Millis(date2), i);
    }

    public static String getString(Date date, long j, int i) {
        return getString(date, m8353a(), j, i);
    }

    public static int getValueByCalendarField(Date date, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(i);
    }

    public static boolean isAm(Date date) {
        return getValueByCalendarField(date, 9) == 0;
    }

    public static boolean isPm(long j) {
        return !isAm(j);
    }

    public static String getChineseZodiac(long j) {
        return getChineseZodiac(millis2Date(j));
    }

    public static String getFitTimeSpan(long j, long j2, int i) {
        return m8355c(j - j2, i);
    }

    public static String getString(Date date, @NonNull DateFormat dateFormat, long j, int i) {
        return millis2String(date2Millis(date) + m8357e(j, i), dateFormat);
    }

    public static boolean isAm(long j) {
        return getValueByCalendarField(j, 9) == 0;
    }

    public static String getChineseZodiac(int i) {
        return f14154b[i % 12];
    }

    public static boolean isLeapYear(long j) {
        return isLeapYear(millis2Date(j));
    }

    public static int getValueByCalendarField(long j, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return calendar.get(i);
    }

    public static String getZodiac(long j) {
        return getZodiac(millis2Date(j));
    }

    public static boolean isLeapYear(int i) {
        return (i % 4 == 0 && i % 100 != 0) || i % 400 == 0;
    }

    public static String getZodiac(int i, int i2) {
        String[] strArr = f14156d;
        int i3 = i - 1;
        if (i2 < f14155c[i3]) {
            i3 = (i + 10) % 12;
        }
        return strArr[i3];
    }
}
