package org.apache.poi.ss.usermodel;

import com.fasterxml.jackson.core.JsonParser;
import com.google.android.material.motion.MotionUtils;
import com.google.gson.internal.bind.TypeAdapters;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalQueries;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.apache.poi.ss.formula.ConditionalFormattingEvaluator;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class DateUtil {
    private static final int BAD_DATE = -1;
    public static final long DAY_MILLISECONDS = 86400000;
    public static final int HOURS_PER_DAY = 24;
    public static final int MINUTES_PER_HOUR = 60;
    public static final int SECONDS_PER_DAY = 86400;
    public static final int SECONDS_PER_MINUTE = 60;
    private static final BigDecimal BD_NANOSEC_DAY = BigDecimal.valueOf(8.64E13d);
    private static final BigDecimal BD_MILISEC_RND = BigDecimal.valueOf(500000.0d);
    private static final BigDecimal BD_SECOND_RND = BigDecimal.valueOf(5.0E8d);
    private static final Pattern TIME_SEPARATOR_PATTERN = Pattern.compile(":");
    private static final Pattern date_ptrn1 = Pattern.compile("^\\[\\$-.*?]");
    private static final Pattern date_ptrn2 = Pattern.compile("^\\[[a-zA-Z]+]");
    private static final Pattern date_ptrn3a = Pattern.compile("[yYmMdDhHsS]");
    private static final Pattern date_ptrn3b = Pattern.compile("^[\\[\\]yYmMdDhHsS\\-T/年月日,. :\"\\\\]+0*[ampAMP/]*$");
    private static final Pattern date_ptrn4 = Pattern.compile("^\\[([hH]+|[mM]+|[sS]+)]");
    private static final Pattern date_ptrn5 = Pattern.compile("^\\[DBNum([123])]");
    private static final DateTimeFormatter dateTimeFormats = new DateTimeFormatterBuilder().appendPattern("[dd MMM[ yyyy]][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]").appendPattern("[[yyyy ]dd-MMM[-yyyy]][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]").appendPattern("[M/dd[/yyyy]][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]").appendPattern("[[yyyy/]M/dd][[ ]h:m[:s][.SSS] a][[ ]H:m[:s][.SSS]]").parseDefaulting(ChronoField.YEAR_OF_ERA, LocaleUtil.getLocaleCalendar().get(1)).toFormatter(LocaleUtil.getUserLocale());
    private static final ThreadLocal<Integer> lastFormatIndex = new ThreadLocal<Integer>() { // from class: org.apache.poi.ss.usermodel.DateUtil.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public Integer initialValue() {
            return -1;
        }
    };
    private static final ThreadLocal<String> lastFormatString = new ThreadLocal<>();
    private static final ThreadLocal<Boolean> lastCachedResult = new ThreadLocal<>();

    /* loaded from: classes13.dex */
    public static final class FormatException extends Exception {
        public FormatException(String str) {
            super(str);
        }
    }

    private DateUtil() {
    }

    public static int absoluteDay(Calendar calendar, boolean z) {
        return absoluteDay(calendar.get(1), calendar.get(6), z);
    }

    private static void cache(String str, int i, boolean z) {
        if (str == null || "".equals(str)) {
            lastFormatString.remove();
        } else {
            lastFormatString.set(str);
        }
        if (i == -1) {
            lastFormatIndex.remove();
        } else {
            lastFormatIndex.set(Integer.valueOf(i));
        }
        lastCachedResult.set(Boolean.valueOf(z));
    }

    public static double convertTime(String str) {
        try {
            return convertTimeInternal(str);
        } catch (FormatException e) {
            throw new IllegalArgumentException("Bad time format '" + str + "' expected 'HH:MM' or 'HH:MM:SS' - " + e.getMessage());
        }
    }

    private static double convertTimeInternal(String str) throws FormatException {
        String str2;
        int length = str.length();
        if (length < 4 || length > 8) {
            throw new FormatException("Bad length");
        }
        String[] split = TIME_SEPARATOR_PATTERN.split(str);
        int length2 = split.length;
        if (length2 == 2) {
            str2 = "00";
        } else {
            if (length2 != 3) {
                throw new FormatException("Expected 2 or 3 fields but got (" + split.length + MotionUtils.f31762d);
            }
            str2 = split[2];
        }
        String str3 = split[0];
        String str4 = split[1];
        return (parseInt(str2, TypeAdapters.C6590r.f36278f, 60) + ((parseInt(str4, TypeAdapters.C6590r.f36277e, 60) + (parseInt(str3, "hour", 24) * 60.0d)) * 60.0d)) / 86400.0d;
    }

    private static Calendar dayStart(Calendar calendar) {
        calendar.get(11);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.get(11);
        return calendar;
    }

    public static int daysInPriorYears(int i, boolean z) {
        if ((!z && i < 1900) || (z && i < 1904)) {
            throw new IllegalArgumentException("'year' must be 1900 or greater");
        }
        int i2 = i - 1;
        return ((i - (z ? 1904 : 1900)) * 365) + ((((i2 / 4) - (i2 / 100)) + (i2 / 400)) - 460);
    }

    public static double getExcelDate(LocalDate localDate) {
        return getExcelDate(localDate, false);
    }

    public static Calendar getJavaCalendar(double d) {
        return getJavaCalendar(d, false, null, false);
    }

    public static Calendar getJavaCalendarUTC(double d, boolean z) {
        return getJavaCalendar(d, z, LocaleUtil.TIMEZONE_UTC, false);
    }

    public static Date getJavaDate(double d, TimeZone timeZone) {
        return getJavaDate(d, false, timeZone, false);
    }

    public static LocalDateTime getLocalDateTime(double d) {
        return getLocalDateTime(d, false, false);
    }

    private static double internalGetExcelDate(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        if (!z && i < 1900) {
            return -1.0d;
        }
        if (z && i < 1904) {
            return -1.0d;
        }
        double absoluteDay = (((((((i3 * 60.0d) + i4) * 60.0d) + i5) * 1000.0d) + i6) / 8.64E7d) + absoluteDay(i, i2, z);
        return (z || absoluteDay < 60.0d) ? z ? absoluteDay - 1.0d : absoluteDay : absoluteDay + 1.0d;
    }

    public static boolean isADateFormat(ExcelNumberFormat excelNumberFormat) {
        if (excelNumberFormat == null) {
            return false;
        }
        return isADateFormat(excelNumberFormat.getIdx(), excelNumberFormat.getFormat());
    }

    private static boolean isCached(String str, int i) {
        return i == lastFormatIndex.get().intValue() && str.equals(lastFormatString.get());
    }

    public static boolean isCellDateFormatted(Cell cell) {
        return isCellDateFormatted(cell, null);
    }

    public static boolean isCellInternalDateFormatted(Cell cell) {
        if (cell != null && isValidExcelDate(cell.getNumericCellValue())) {
            return isInternalDateFormat(cell.getCellStyle().getDataFormat());
        }
        return false;
    }

    public static boolean isInternalDateFormat(int i) {
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                return true;
            default:
                switch (i) {
                    case 45:
                    case 46:
                    case 47:
                        return true;
                    default:
                        return false;
                }
        }
    }

    public static boolean isValidExcelDate(double d) {
        return d > -4.9E-324d;
    }

    public static Double parseDateTime(String str) {
        TemporalAccessor parse = dateTimeFormats.parse(str.replaceAll("\\s+", " "));
        LocalTime localTime = (LocalTime) parse.query(TemporalQueries.localTime());
        LocalDate localDate = (LocalDate) parse.query(TemporalQueries.localDate());
        if (localTime == null && localDate == null) {
            return null;
        }
        double excelDate = localDate != null ? getExcelDate(Date.from(localDate.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant())) : 0.0d;
        if (localTime != null) {
            excelDate += (localTime.toSecondOfDay() * 1.0d) / 86400.0d;
        }
        return Double.valueOf(excelDate);
    }

    private static int parseInt(String str, String str2, int i) throws FormatException {
        return parseInt(str, str2, 0, i - 1);
    }

    public static Date parseYYYYMMDDDate(String str) {
        try {
            return parseYYYYMMDDDateInternal(str);
        } catch (FormatException e) {
            throw new IllegalArgumentException("Bad time format " + str + " expected 'YYYY/MM/DD' - " + e.getMessage());
        }
    }

    private static Date parseYYYYMMDDDateInternal(String str) throws FormatException {
        if (str.length() != 10) {
            throw new FormatException("Bad length");
        }
        String substring = str.substring(0, 4);
        String substring2 = str.substring(5, 7);
        String substring3 = str.substring(8, 10);
        return LocaleUtil.getLocaleCalendar(parseInt(substring, TypeAdapters.C6590r.f36273a, JsonParser.f21215g, 32767), parseInt(substring2, TypeAdapters.C6590r.f36274b, 1, 12) - 1, parseInt(substring3, "day", 1, 31)).getTime();
    }

    public static void setCalendar(Calendar calendar, int i, int i2, boolean z, boolean z2) {
        int i3;
        int i4;
        if (z) {
            i4 = 1;
            i3 = 1904;
        } else {
            i3 = 1900;
            i4 = i < 61 ? 0 : -1;
        }
        calendar.set(i3, 0, i + i4, 0, 0, 0);
        calendar.set(14, i2);
        if (calendar.get(14) == 0) {
            calendar.clear(14);
        }
        if (z2) {
            calendar.add(14, 500);
            calendar.clear(14);
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.time.LocalDateTime] */
    public static LocalDateTime toLocalDateTime(Date date) {
        return date.toInstant().atZone(LocaleUtil.TIMEZONE_UTC.toZoneId()).toLocalDateTime();
    }

    public static int absoluteDay(LocalDateTime localDateTime, boolean z) {
        return absoluteDay(localDateTime.getYear(), localDateTime.getDayOfYear(), z);
    }

    public static double getExcelDate(LocalDate localDate, boolean z) {
        return internalGetExcelDate(localDate.getYear(), localDate.getDayOfYear(), 0, 0, 0, 0, z);
    }

    public static Calendar getJavaCalendar(double d, boolean z) {
        return getJavaCalendar(d, z, null, false);
    }

    public static Date getJavaDate(double d) {
        return getJavaDate(d, false, null, false);
    }

    public static LocalDateTime getLocalDateTime(double d, boolean z) {
        return getLocalDateTime(d, z, false);
    }

    public static boolean isADateFormat(int i, String str) {
        if (isInternalDateFormat(i)) {
            cache(str, i, true);
            return true;
        }
        if (str == null || str.length() == 0) {
            return false;
        }
        if (isCached(str, i)) {
            return lastCachedResult.get().booleanValue();
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (i2 < length - 1) {
                int i3 = i2 + 1;
                char charAt2 = str.charAt(i3);
                if (charAt == '\\') {
                    if (charAt2 != ' ' && charAt2 != '\\') {
                        switch (charAt2) {
                        }
                    }
                } else if (charAt == ';' && charAt2 == '@') {
                    i2 = i3;
                }
                i2++;
            }
            sb.append(charAt);
            i2++;
        }
        String sb2 = sb.toString();
        if (date_ptrn4.matcher(sb2).matches()) {
            cache(str, i, true);
            return true;
        }
        String replaceAll = date_ptrn2.matcher(date_ptrn1.matcher(date_ptrn5.matcher(sb2).replaceAll("")).replaceAll("")).replaceAll("");
        int indexOf = replaceAll.indexOf(59);
        if (indexOf > 0 && indexOf < replaceAll.length() - 1) {
            replaceAll = replaceAll.substring(0, indexOf);
        }
        if (!date_ptrn3a.matcher(replaceAll).find()) {
            return false;
        }
        boolean matches = date_ptrn3b.matcher(replaceAll).matches();
        cache(str, i, matches);
        return matches;
    }

    public static boolean isCellDateFormatted(Cell cell, ConditionalFormattingEvaluator conditionalFormattingEvaluator) {
        ExcelNumberFormat from;
        if (cell == null || !isValidExcelDate(cell.getNumericCellValue()) || (from = ExcelNumberFormat.from(cell, conditionalFormattingEvaluator)) == null) {
            return false;
        }
        return isADateFormat(from);
    }

    private static int parseInt(String str, String str2, int i, int i2) throws FormatException {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt >= i && parseInt <= i2) {
                return parseInt;
            }
            throw new FormatException(str2 + " value (" + parseInt + ") is outside the allowable range(0.." + i2 + MotionUtils.f31762d);
        } catch (NumberFormatException unused) {
            throw new FormatException("Bad int format '" + str + "' for " + str2 + " field");
        }
    }

    private static int absoluteDay(int i, int i2, boolean z) {
        return i2 + daysInPriorYears(i, z);
    }

    public static Calendar getJavaCalendar(double d, boolean z, TimeZone timeZone) {
        return getJavaCalendar(d, z, timeZone, false);
    }

    public static Date getJavaDate(double d, boolean z, TimeZone timeZone) {
        return getJavaDate(d, z, timeZone, false);
    }

    public static LocalDateTime getLocalDateTime(double d, boolean z, boolean z2) {
        int i;
        int i2;
        if (!isValidExcelDate(d)) {
            return null;
        }
        BigDecimal valueOf = BigDecimal.valueOf(d);
        int intValue = valueOf.intValue();
        if (z) {
            i2 = 1904;
            i = 1;
        } else if (intValue < 61) {
            i2 = 1900;
            i = 0;
        } else {
            i = -1;
            i2 = 1900;
        }
        return LocalDateTime.of(i2, 1, 1, 0, 0).plusDays((i + intValue) - 1).plusNanos(valueOf.subtract(BigDecimal.valueOf(intValue)).multiply(BD_NANOSEC_DAY).add(z2 ? BD_SECOND_RND : BD_MILISEC_RND).longValue()).truncatedTo(z2 ? ChronoUnit.SECONDS : ChronoUnit.MILLIS);
    }

    public static Calendar getJavaCalendar(double d, boolean z, TimeZone timeZone, boolean z2) {
        Calendar localeCalendar;
        if (!isValidExcelDate(d)) {
            return null;
        }
        int floor = (int) Math.floor(d);
        int i = (int) (((d - floor) * 8.64E7d) + 0.5d);
        if (timeZone != null) {
            localeCalendar = LocaleUtil.getLocaleCalendar(timeZone);
        } else {
            localeCalendar = LocaleUtil.getLocaleCalendar();
        }
        setCalendar(localeCalendar, floor, i, z, z2);
        return localeCalendar;
    }

    public static Date getJavaDate(double d, boolean z, TimeZone timeZone, boolean z2) {
        Calendar javaCalendar = getJavaCalendar(d, z, timeZone, z2);
        if (javaCalendar == null) {
            return null;
        }
        return javaCalendar.getTime();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.time.LocalDateTime] */
    public static LocalDateTime toLocalDateTime(Calendar calendar) {
        return calendar.toInstant().atZone(LocaleUtil.TIMEZONE_UTC.toZoneId()).toLocalDateTime();
    }

    public static double getExcelDate(LocalDateTime localDateTime) {
        return getExcelDate(localDateTime, false);
    }

    public static double getExcelDate(LocalDateTime localDateTime, boolean z) {
        return internalGetExcelDate(localDateTime.getYear(), localDateTime.getDayOfYear(), localDateTime.getHour(), localDateTime.getMinute(), localDateTime.getSecond(), localDateTime.getNano() / 1000000, z);
    }

    public static Date getJavaDate(double d, boolean z) {
        return getJavaDate(d, z, null, false);
    }

    public static double getExcelDate(Date date) {
        return getExcelDate(date, false);
    }

    public static double getExcelDate(Date date, boolean z) {
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        localeCalendar.setTime(date);
        return internalGetExcelDate(localeCalendar.get(1), localeCalendar.get(6), localeCalendar.get(11), localeCalendar.get(12), localeCalendar.get(13), localeCalendar.get(14), z);
    }

    public static double getExcelDate(Calendar calendar, boolean z) {
        return internalGetExcelDate(calendar.get(1), calendar.get(6), calendar.get(11), calendar.get(12), calendar.get(13), calendar.get(14), z);
    }
}
