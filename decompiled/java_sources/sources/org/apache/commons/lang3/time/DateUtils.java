package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.Validate;

/* loaded from: classes12.dex */
public class DateUtils {
    public static final long MILLIS_PER_DAY = 86400000;
    public static final long MILLIS_PER_HOUR = 3600000;
    public static final long MILLIS_PER_MINUTE = 60000;
    public static final long MILLIS_PER_SECOND = 1000;
    public static final int RANGE_MONTH_MONDAY = 6;
    public static final int RANGE_MONTH_SUNDAY = 5;
    public static final int RANGE_WEEK_CENTER = 4;
    public static final int RANGE_WEEK_MONDAY = 2;
    public static final int RANGE_WEEK_RELATIVE = 3;
    public static final int RANGE_WEEK_SUNDAY = 1;
    public static final int SEMI_MONTH = 1001;

    /* renamed from: a */
    public static final int[][] f107623a = {new int[]{14}, new int[]{13}, new int[]{12}, new int[]{11, 10}, new int[]{5, 5, 9}, new int[]{2, 1001}, new int[]{1}, new int[]{0}};

    /* loaded from: classes12.dex */
    public enum ModifyType {
        TRUNCATE,
        ROUND,
        CEILING
    }

    /* renamed from: org.apache.commons.lang3.time.DateUtils$a */
    /* loaded from: classes12.dex */
    public static class C18972a implements Iterator<Calendar> {

        /* renamed from: e */
        public final Calendar f107624e;

        /* renamed from: f */
        public final Calendar f107625f;

        public C18972a(Calendar calendar, Calendar calendar2) {
            this.f107624e = calendar2;
            this.f107625f = calendar;
            calendar.add(5, -1);
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Calendar next() {
            if (this.f107625f.equals(this.f107624e)) {
                throw new NoSuchElementException();
            }
            this.f107625f.add(5, 1);
            return (Calendar) this.f107625f.clone();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f107625f.before(this.f107624e);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public static Date m67382a(Date date, int i, int i2) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(i, i2);
        return calendar.getTime();
    }

    public static Date addDays(Date date, int i) {
        return m67382a(date, 5, i);
    }

    public static Date addHours(Date date, int i) {
        return m67382a(date, 11, i);
    }

    public static Date addMilliseconds(Date date, int i) {
        return m67382a(date, 14, i);
    }

    public static Date addMinutes(Date date, int i) {
        return m67382a(date, 12, i);
    }

    public static Date addMonths(Date date, int i) {
        return m67382a(date, 2, i);
    }

    public static Date addSeconds(Date date, int i) {
        return m67382a(date, 13, i);
    }

    public static Date addWeeks(Date date, int i) {
        return m67382a(date, 3, i);
    }

    public static Date addYears(Date date, int i) {
        return m67382a(date, 1, i);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0032. Please report as an issue. */
    /* renamed from: b */
    public static long m67383b(Calendar calendar, int i, TimeUnit timeUnit) {
        long convert;
        if (calendar == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        TimeUnit timeUnit2 = TimeUnit.DAYS;
        int i2 = timeUnit == timeUnit2 ? 0 : 1;
        long j = 0;
        if (i != 1) {
            if (i == 2) {
                convert = timeUnit.convert(calendar.get(5) - i2, timeUnit2);
            }
            if (i != 1 || i == 2 || i == 5 || i == 6) {
                j += timeUnit.convert(calendar.get(11), TimeUnit.HOURS);
            } else {
                switch (i) {
                    case 11:
                        break;
                    case 12:
                        j += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
                    case 13:
                        return j + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
                    case 14:
                        return j;
                    default:
                        throw new IllegalArgumentException("The fragment " + i + " is not supported");
                }
            }
            j += timeUnit.convert(calendar.get(12), TimeUnit.MINUTES);
            j += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
            return j + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
        }
        convert = timeUnit.convert(calendar.get(6) - i2, timeUnit2);
        j = 0 + convert;
        if (i != 1) {
        }
        j += timeUnit.convert(calendar.get(11), TimeUnit.HOURS);
        j += timeUnit.convert(calendar.get(12), TimeUnit.MINUTES);
        j += timeUnit.convert(calendar.get(13), TimeUnit.SECONDS);
        return j + timeUnit.convert(calendar.get(14), TimeUnit.MILLISECONDS);
    }

    /* renamed from: c */
    public static long m67384c(Date date, int i, TimeUnit timeUnit) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return m67383b(calendar, i, timeUnit);
    }

    public static Date ceiling(Date date, int i) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        m67385d(calendar, i, ModifyType.CEILING);
        return calendar.getTime();
    }

    /* renamed from: d */
    public static void m67385d(Calendar calendar, int i, ModifyType modifyType) {
        char c;
        int i2;
        boolean z;
        char c2;
        if (calendar.get(1) > 280000000) {
            throw new ArithmeticException("Calendar value too large for accurate calculations");
        }
        if (i == 14) {
            return;
        }
        Date time = calendar.getTime();
        long time2 = time.getTime();
        int i3 = calendar.get(14);
        ModifyType modifyType2 = ModifyType.TRUNCATE;
        if (modifyType2 == modifyType || i3 < 500) {
            time2 -= i3;
        }
        boolean z2 = i == 13;
        int i4 = calendar.get(13);
        if (!z2 && (modifyType2 == modifyType || i4 < 30)) {
            time2 -= i4 * 1000;
        }
        if (i == 12) {
            z2 = true;
        }
        int i5 = calendar.get(12);
        if (!z2 && (modifyType2 == modifyType || i5 < 30)) {
            time2 -= i5 * 60000;
        }
        if (time.getTime() != time2) {
            time.setTime(time2);
            calendar.setTime(time);
        }
        boolean z3 = false;
        for (int[] iArr : f107623a) {
            for (int i6 : iArr) {
                if (i6 == i) {
                    if (modifyType == ModifyType.CEILING || (modifyType == ModifyType.ROUND && z3)) {
                        if (i == 1001) {
                            if (calendar.get(5) == 1) {
                                calendar.add(5, 15);
                                return;
                            } else {
                                calendar.add(5, -15);
                                calendar.add(2, 1);
                                return;
                            }
                        }
                        if (i != 9) {
                            calendar.add(iArr[0], 1);
                            return;
                        } else if (calendar.get(11) == 0) {
                            calendar.add(11, 12);
                            return;
                        } else {
                            calendar.add(11, -12);
                            calendar.add(5, 1);
                            return;
                        }
                    }
                    return;
                }
            }
            if (i != 9) {
                if (i == 1001 && iArr[0] == 5) {
                    int i7 = calendar.get(5) - 1;
                    if (i7 >= 15) {
                        i7 -= 15;
                    }
                    z3 = i7 > 7;
                    i2 = i7;
                    c = '\f';
                    z = true;
                }
                c = '\f';
                z = false;
                i2 = 0;
            } else {
                if (iArr[0] == 11) {
                    int i8 = calendar.get(11);
                    c = '\f';
                    if (i8 >= 12) {
                        i8 -= 12;
                    }
                    z3 = i8 >= 6;
                    i2 = i8;
                    z = true;
                }
                c = '\f';
                z = false;
                i2 = 0;
            }
            if (z) {
                c2 = 0;
            } else {
                c2 = 0;
                int actualMinimum = calendar.getActualMinimum(iArr[0]);
                int actualMaximum = calendar.getActualMaximum(iArr[0]);
                int i9 = calendar.get(iArr[0]) - actualMinimum;
                z3 = i9 > (actualMaximum - actualMinimum) / 2;
                i2 = i9;
            }
            if (i2 != 0) {
                int i10 = iArr[c2];
                calendar.set(i10, calendar.get(i10) - i2);
            }
        }
        throw new IllegalArgumentException("The field " + i + " is not supported");
    }

    /* renamed from: e */
    public static Date m67386e(String str, Locale locale, String[] strArr, boolean z) throws ParseException {
        if (str == null || strArr == null) {
            throw new IllegalArgumentException("Date and Patterns must not be null");
        }
        TimeZone timeZone = TimeZone.getDefault();
        if (locale == null) {
            locale = Locale.getDefault();
        }
        ParsePosition parsePosition = new ParsePosition(0);
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.setLenient(z);
        for (String str2 : strArr) {
            FastDateParser fastDateParser = new FastDateParser(str2, timeZone, locale);
            calendar.clear();
            try {
                if (fastDateParser.parse(str, parsePosition, calendar) && parsePosition.getIndex() == str.length()) {
                    return calendar.getTime();
                }
            } catch (IllegalArgumentException unused) {
            }
            parsePosition.setIndex(0);
        }
        throw new ParseException("Unable to parse the date: " + str, -1);
    }

    /* renamed from: f */
    public static Date m67387f(Date date, int i, int i2) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setLenient(false);
        calendar.setTime(date);
        calendar.set(i, i2);
        return calendar.getTime();
    }

    /* renamed from: g */
    public static void m67388g(Date date) {
        Validate.isTrue(date != null, "The date must not be null", new Object[0]);
    }

    public static long getFragmentInDays(Date date, int i) {
        return m67384c(date, i, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Date date, int i) {
        return m67384c(date, i, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Date date, int i) {
        return m67384c(date, i, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Date date, int i) {
        return m67384c(date, i, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Date date, int i) {
        return m67384c(date, i, TimeUnit.SECONDS);
    }

    public static boolean isSameDay(Date date, Date date2) {
        if (date != null && date2 != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(date2);
            return isSameDay(calendar, calendar2);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static boolean isSameInstant(Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return date.getTime() == date2.getTime();
    }

    public static boolean isSameLocalTime(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(14) == calendar2.get(14) && calendar.get(13) == calendar2.get(13) && calendar.get(12) == calendar2.get(12) && calendar.get(11) == calendar2.get(11) && calendar.get(6) == calendar2.get(6) && calendar.get(1) == calendar2.get(1) && calendar.get(0) == calendar2.get(0) && calendar.getClass() == calendar2.getClass();
    }

    public static Iterator<Calendar> iterator(Date date, int i) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return iterator(calendar, i);
    }

    public static Date parseDate(String str, String... strArr) throws ParseException {
        return parseDate(str, null, strArr);
    }

    public static Date parseDateStrictly(String str, String... strArr) throws ParseException {
        return parseDateStrictly(str, null, strArr);
    }

    public static Date round(Date date, int i) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        m67385d(calendar, i, ModifyType.ROUND);
        return calendar.getTime();
    }

    public static Date setDays(Date date, int i) {
        return m67387f(date, 5, i);
    }

    public static Date setHours(Date date, int i) {
        return m67387f(date, 11, i);
    }

    public static Date setMilliseconds(Date date, int i) {
        return m67387f(date, 14, i);
    }

    public static Date setMinutes(Date date, int i) {
        return m67387f(date, 12, i);
    }

    public static Date setMonths(Date date, int i) {
        return m67387f(date, 2, i);
    }

    public static Date setSeconds(Date date, int i) {
        return m67387f(date, 13, i);
    }

    public static Date setYears(Date date, int i) {
        return m67387f(date, 1, i);
    }

    public static Calendar toCalendar(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
    }

    public static Date truncate(Date date, int i) {
        m67388g(date);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        m67385d(calendar, i, ModifyType.TRUNCATE);
        return calendar.getTime();
    }

    public static int truncatedCompareTo(Calendar calendar, Calendar calendar2, int i) {
        return truncate(calendar, i).compareTo(truncate(calendar2, i));
    }

    public static boolean truncatedEquals(Calendar calendar, Calendar calendar2, int i) {
        return truncatedCompareTo(calendar, calendar2, i) == 0;
    }

    public static long getFragmentInDays(Calendar calendar, int i) {
        return m67383b(calendar, i, TimeUnit.DAYS);
    }

    public static long getFragmentInHours(Calendar calendar, int i) {
        return m67383b(calendar, i, TimeUnit.HOURS);
    }

    public static long getFragmentInMilliseconds(Calendar calendar, int i) {
        return m67383b(calendar, i, TimeUnit.MILLISECONDS);
    }

    public static long getFragmentInMinutes(Calendar calendar, int i) {
        return m67383b(calendar, i, TimeUnit.MINUTES);
    }

    public static long getFragmentInSeconds(Calendar calendar, int i) {
        return m67383b(calendar, i, TimeUnit.SECONDS);
    }

    public static Date parseDate(String str, Locale locale, String... strArr) throws ParseException {
        return m67386e(str, locale, strArr, true);
    }

    public static Date parseDateStrictly(String str, Locale locale, String... strArr) throws ParseException {
        return m67386e(str, locale, strArr, false);
    }

    public static boolean truncatedEquals(Date date, Date date2, int i) {
        return truncatedCompareTo(date, date2, i) == 0;
    }

    public static boolean isSameInstant(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.getTime().getTime() == calendar2.getTime().getTime();
    }

    public static Calendar toCalendar(Date date, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(date);
        return calendar;
    }

    public static int truncatedCompareTo(Date date, Date date2, int i) {
        return truncate(date, i).compareTo(truncate(date2, i));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0007. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007d A[LOOP:0: B:20:0x0077->B:22:0x007d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087 A[LOOP:1: B:24:0x0081->B:26:0x0087, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Iterator<java.util.Calendar> iterator(java.util.Calendar r8, int r9) {
        /*
            if (r8 == 0) goto L91
            r0 = -1
            r1 = 2
            r2 = 5
            r3 = 1
            r4 = 7
            switch(r9) {
                case 1: goto L41;
                case 2: goto L41;
                case 3: goto L41;
                case 4: goto L41;
                case 5: goto L26;
                case 6: goto L26;
                default: goto La;
            }
        La:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "The range style "
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = " is not valid."
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            r8.<init>(r9)
            throw r8
        L26:
            java.util.Calendar r8 = truncate(r8, r1)
            java.lang.Object r5 = r8.clone()
            java.util.Calendar r5 = (java.util.Calendar) r5
            r5.add(r1, r3)
            r5.add(r2, r0)
            r6 = 6
            if (r9 != r6) goto L3c
            r6 = r5
            r5 = r8
            goto L66
        L3c:
            r1 = r3
            r6 = r5
            r5 = r8
        L3f:
            r8 = r4
            goto L67
        L41:
            java.util.Calendar r5 = truncate(r8, r2)
            java.util.Calendar r6 = truncate(r8, r2)
            if (r9 == r1) goto L66
            r1 = 3
            if (r9 == r1) goto L5f
            r7 = 4
            if (r9 == r7) goto L53
            r1 = r3
            goto L3f
        L53:
            int r9 = r8.get(r4)
            int r9 = r9 - r1
            int r8 = r8.get(r4)
            int r8 = r8 + r1
            r1 = r9
            goto L67
        L5f:
            int r1 = r8.get(r4)
            int r8 = r1 + (-1)
            goto L67
        L66:
            r8 = r3
        L67:
            if (r1 >= r3) goto L6b
            int r1 = r1 + 7
        L6b:
            if (r1 <= r4) goto L6f
            int r1 = r1 + (-7)
        L6f:
            if (r8 >= r3) goto L73
            int r8 = r8 + 7
        L73:
            if (r8 <= r4) goto L77
            int r8 = r8 + (-7)
        L77:
            int r9 = r5.get(r4)
            if (r9 == r1) goto L81
            r5.add(r2, r0)
            goto L77
        L81:
            int r9 = r6.get(r4)
            if (r9 == r8) goto L8b
            r6.add(r2, r3)
            goto L81
        L8b:
            org.apache.commons.lang3.time.DateUtils$a r8 = new org.apache.commons.lang3.time.DateUtils$a
            r8.<init>(r5, r6)
            return r8
        L91:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "The date must not be null"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DateUtils.iterator(java.util.Calendar, int):java.util.Iterator");
    }

    public static Calendar ceiling(Calendar calendar, int i) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            m67385d(calendar2, i, ModifyType.CEILING);
            return calendar2;
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Calendar round(Calendar calendar, int i) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            m67385d(calendar2, i, ModifyType.ROUND);
            return calendar2;
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Calendar truncate(Calendar calendar, int i) {
        if (calendar != null) {
            Calendar calendar2 = (Calendar) calendar.clone();
            m67385d(calendar2, i, ModifyType.TRUNCATE);
            return calendar2;
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static boolean isSameDay(Calendar calendar, Calendar calendar2) {
        if (calendar == null || calendar2 == null) {
            throw new IllegalArgumentException("The date must not be null");
        }
        return calendar.get(0) == calendar2.get(0) && calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6);
    }

    public static Date ceiling(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return ceiling((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return ceiling((Calendar) obj, i).getTime();
            }
            throw new ClassCastException("Could not find ceiling of for type: " + obj.getClass());
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Date round(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return round((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return round((Calendar) obj, i).getTime();
            }
            throw new ClassCastException("Could not round " + obj);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Date truncate(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return truncate((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return truncate((Calendar) obj, i).getTime();
            }
            throw new ClassCastException("Could not truncate " + obj);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static Iterator<?> iterator(Object obj, int i) {
        if (obj != null) {
            if (obj instanceof Date) {
                return iterator((Date) obj, i);
            }
            if (obj instanceof Calendar) {
                return iterator((Calendar) obj, i);
            }
            throw new ClassCastException("Could not iterate based on " + obj);
        }
        throw new IllegalArgumentException("The date must not be null");
    }
}
