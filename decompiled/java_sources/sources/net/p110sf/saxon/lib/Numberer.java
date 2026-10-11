package net.p110sf.saxon.lib;

import java.util.Locale;
import net.p110sf.saxon.expr.number.NumericGroupFormatter;
import net.p110sf.saxon.str.UnicodeString;

/* loaded from: classes11.dex */
public interface Numberer {
    String dayName(int i, int i2, int i3);

    Locale defaultedLocale();

    String format(long j, UnicodeString unicodeString, int i, String str, String str2, String str3);

    String format(long j, UnicodeString unicodeString, NumericGroupFormatter numericGroupFormatter, String str, String str2);

    String getCalendarName(String str);

    String getCountry();

    String getEraName(int i);

    String getOrdinalSuffixForDateTime(String str);

    String halfDayName(int i, int i2, int i3);

    String monthName(int i, int i2, int i3);

    void setCountry(String str);
}
