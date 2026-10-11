package org.apache.poi.ss.util;

import java.text.DateFormatSymbols;
import java.time.DateTimeException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.poi.ss.formula.eval.ErrorEval;
import org.apache.poi.ss.formula.eval.EvaluationException;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class DateParser {

    /* loaded from: classes13.dex */
    public enum Format {
        YMD_DASHES("^(\\d{4})-(\\w+)-(\\d{1,2})( .*)?$", "ymd"),
        DMY_DASHES("^(\\d{1,2})-(\\w+)-(\\d{4})( .*)?$", "dmy"),
        MD_DASHES("^(\\w+)-(\\d{1,2})( .*)?$", "md"),
        MDY_SLASHES("^(\\w+)/(\\d{1,2})/(\\d{4})( .*)?$", "mdy"),
        YMD_SLASHES("^(\\d{4})/(\\w+)/(\\d{1,2})( .*)?$", "ymd"),
        MD_SLASHES("^(\\w+)/(\\d{1,2})( .*)?$", "md");

        private int dayIndex;
        private boolean hasYear;
        private int monthIndex;
        private Pattern pattern;
        private int yearIndex;

        Format(String str, String str2) {
            this.pattern = Pattern.compile(str);
            boolean contains = str2.contains("y");
            this.hasYear = contains;
            if (contains) {
                this.yearIndex = str2.indexOf("y");
            }
            this.monthIndex = str2.indexOf("m");
            this.dayIndex = str2.indexOf("d");
        }
    }

    private static Calendar makeDate(int i, int i2, int i3) throws EvaluationException {
        if (i2 < 1 || i2 > 12) {
            throw new EvaluationException(ErrorEval.VALUE_INVALID);
        }
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar(i, i2 - 1, 1, 0, 0, 0);
        if (i3 < 1 || i3 > localeCalendar.getActualMaximum(5)) {
            throw new EvaluationException(ErrorEval.VALUE_INVALID);
        }
        localeCalendar.set(5, i3);
        return localeCalendar;
    }

    public static Calendar parseDate(String str) throws EvaluationException {
        LocalDate parseLocalDate = parseLocalDate(str);
        return makeDate(parseLocalDate.getYear(), parseLocalDate.getMonthValue(), parseLocalDate.getDayOfMonth());
    }

    public static LocalDate parseLocalDate(String str) throws EvaluationException {
        for (Format format : Format.values()) {
            Matcher matcher = format.pattern.matcher(str);
            if (matcher.find()) {
                MatchResult matchResult = matcher.toMatchResult();
                ArrayList arrayList = new ArrayList();
                for (int i = 1; i <= matchResult.groupCount(); i++) {
                    arrayList.add(matchResult.group(i));
                }
                try {
                    return LocalDate.of(format.hasYear ? Integer.parseInt((String) arrayList.get(format.yearIndex)) : LocalDate.now(LocaleUtil.getUserTimeZone().toZoneId()).getYear(), parseMonth((String) arrayList.get(format.monthIndex)), Integer.parseInt((String) arrayList.get(format.dayIndex)));
                } catch (DateTimeException unused) {
                    throw new DateTimeException("Failed to parse date-string " + str);
                }
            }
        }
        throw new EvaluationException(ErrorEval.VALUE_INVALID);
    }

    private static int parseMonth(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            String[] months = DateFormatSymbols.getInstance(LocaleUtil.getUserLocale()).getMonths();
            for (int i = 0; i < months.length; i++) {
                if (months[i].toLowerCase(LocaleUtil.getUserLocale()).startsWith(str.toLowerCase(LocaleUtil.getUserLocale()))) {
                    return i + 1;
                }
            }
            return -1;
        }
    }
}
