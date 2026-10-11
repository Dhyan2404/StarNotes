package net.p110sf.saxon.functions;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.Optional;
import java.util.TimeZone;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.number.Alphanumeric;
import net.p110sf.saxon.expr.number.NamedTimeZone;
import net.p110sf.saxon.expr.number.Numberer_en;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.Numberer;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.regex.ARegexIterator;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.CalendarValue;
import net.p110sf.saxon.value.DateTimeValue;
import net.p110sf.saxon.value.DateValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.TimeValue;
import net.p110sf.saxon.value.Whitespace;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes11.dex */
public class FormatDate extends SystemFunction implements Callable {

    /* renamed from: Z */
    public static final /* synthetic */ boolean f100204Z = false;

    /* renamed from: h */
    public static final String[] f100205h = {"AD", "AH", "AME", "AM", "AP", "AS", "BE", "CB", "CE", "CL", "CS", "EE", "FE", ExifInterface.TAG_RW2_ISO, "JE", "KE", "KY", "ME", "MS", "NS", "OS", "RS", "SE", "SH", "SS", "TE", "VE", "VS"};

    /* renamed from: i */
    public static final UnicodeString f100206i = BMPString.m63877of("0");

    /* renamed from: j */
    public static final UnicodeString f100207j = BMPString.m63877of("01");

    /* renamed from: k */
    public static final UnicodeString f100208k = BMPString.m63877of("1");

    /* renamed from: l */
    public static final UnicodeString f100209l = BMPString.m63877of(C6997f.f39671c);

    /* renamed from: m */
    public static final UnicodeString f100210m = BMPString.m63877of("F");

    /* renamed from: n */
    public static final UnicodeString f100211n = BMPString.m63877of("i");

    /* renamed from: o */
    public static final UnicodeString f100212o = BMPString.m63877of("I");

    /* renamed from: p */
    public static final UnicodeString f100213p = BMPString.m63877of("J");

    /* renamed from: q */
    public static final UnicodeString f100214q = BMPString.m63877of("M");

    /* renamed from: r */
    public static final UnicodeString f100215r = BMPString.m63877of("N");

    /* renamed from: s */
    public static final UnicodeString f100216s = BMPString.m63877of("Nn");

    /* renamed from: t */
    public static final UnicodeString f100217t = BMPString.m63877of(GoogleApiAvailabilityLight.f29016b);

    /* renamed from: u */
    public static final UnicodeString f100218u = BMPString.m63877of("P");

    /* renamed from: v */
    public static final UnicodeString f100219v = BMPString.m63877of("s");

    /* renamed from: w */
    public static final UnicodeString f100220w = BMPString.m63877of("Y");

    /* renamed from: x */
    public static final UnicodeString f100221x = BMPString.m63877of(Constants.HASIDCALL_INDEX_SIG);

    /* renamed from: y */
    public static final ARegularExpression f100222y = ARegularExpression.compile("([YMDdWwFHhmsfZzPCE])\\s*(.*)", "");

    /* renamed from: z */
    public static final ARegularExpression f100223z = ARegularExpression.compile(",(\\*|[0-9]+)(\\-(\\*|[0-9]+))?", "");

    /* renamed from: J */
    public static final ARegularExpression f100201J = ARegularExpression.compile("\\p{Nd}+", "");

    /* renamed from: O */
    public static final ARegularExpression f100202O = ARegularExpression.compile("[#\\p{Nd}]+", "");

    /* renamed from: Q */
    public static final ARegularExpression f100203Q = ARegularExpression.compile("\\p{Nd}+#*", "");

    /* renamed from: c */
    public static UnicodeString m62985c(CalendarValue calendarValue, String str, Numberer numberer, String str2, XPathContext xPathContext) throws XPathException {
        DateTimeValue dateTime;
        boolean z = calendarValue instanceof TimeValue;
        boolean z2 = calendarValue instanceof DateValue;
        DateTimeValue dateTime2 = calendarValue.toDateTime();
        UnicodeString tidy = StringView.m63901of(str).tidy();
        ARegexIterator aRegexIterator = (ARegexIterator) f100222y.analyze(tidy);
        StringValue next = aRegexIterator.next();
        if (next == null || next.getUnicodeStringValue().length32() != tidy.length32() || !aRegexIterator.isMatching()) {
            XPathException xPathException = new XPathException("Unrecognized date/time component [" + str + ']');
            xPathException.setErrorCode("FOFD1340");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        }
        boolean z3 = true;
        UnicodeString regexGroup = aRegexIterator.getRegexGroup(1);
        UnicodeString regexGroup2 = aRegexIterator.getRegexGroup(2);
        if (regexGroup2.isEmpty() || regexGroup2.codePointAt(0L) == 44) {
            int codePointAt = regexGroup.codePointAt(0L);
            if (codePointAt != 67) {
                if (codePointAt == 80) {
                    regexGroup2 = f100217t.concat(regexGroup2);
                } else if (codePointAt != 90) {
                    if (codePointAt == 109 || codePointAt == 115) {
                        regexGroup2 = f100207j.concat(regexGroup2);
                    } else if (codePointAt != 122) {
                        if (codePointAt != 69) {
                            regexGroup2 = codePointAt != 70 ? f100208k.concat(regexGroup2) : f100216s.concat(regexGroup2);
                        }
                    }
                }
            }
            regexGroup2 = f100215r.concat(regexGroup2);
        } else {
            z3 = false;
        }
        switch (regexGroup.codePointAt(0L)) {
            case 67:
                return StringView.m63901of(numberer.getCalendarName("AD")).tidy();
            case 68:
                if (!z) {
                    return m62987e(regexGroup, dateTime2.getDay(), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException2 = new XPathException("In format-time(): an xs:time value does not contain a day component");
                xPathException2.setErrorCode("FOFD1350");
                xPathException2.setXPathContext(xPathContext);
                throw xPathException2;
            case 69:
                if (!z) {
                    return StringView.m63901of(numberer.getEraName(dateTime2.getYear())).tidy();
                }
                XPathException xPathException3 = new XPathException("In format-time(): an xs:time value does not contain an AD/BC component");
                xPathException3.setErrorCode("FOFD1350");
                xPathException3.setXPathContext(xPathContext);
                throw xPathException3;
            case 70:
                if (!z) {
                    return m62987e(regexGroup, DateValue.getDayOfWeek(dateTime2.getYear(), dateTime2.getMonth(), dateTime2.getDay()), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException4 = new XPathException("In format-time(): an xs:time value does not contain day-of-week component");
                xPathException4.setErrorCode("FOFD1350");
                xPathException4.setXPathContext(xPathContext);
                throw xPathException4;
            case 72:
                if (!z2) {
                    return m62987e(regexGroup, (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.HOURS)).longValue(), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException5 = new XPathException("In format-date(): an xs:date value does not contain an hour component");
                xPathException5.setErrorCode("FOFD1350");
                xPathException5.setXPathContext(xPathContext);
                throw xPathException5;
            case 77:
                if (!z) {
                    return m62987e(regexGroup, dateTime2.getMonth(), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException6 = new XPathException("In format-time(): an xs:time value does not contain a month component");
                xPathException6.setErrorCode("FOFD1350");
                xPathException6.setXPathContext(xPathContext);
                throw xPathException6;
            case 80:
                if (!z2) {
                    return m62987e(regexGroup, dateTime2.getMinute() + (dateTime2.getHour() * DeletedRef3DPtg.sid), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException7 = new XPathException("In format-date(): an xs:date value does not contain an am/pm component");
                xPathException7.setErrorCode("FOFD1350");
                xPathException7.setXPathContext(xPathContext);
                throw xPathException7;
            case 87:
                if (!z) {
                    return m62987e(regexGroup, DateValue.getWeekNumber(dateTime2.getYear(), dateTime2.getMonth(), dateTime2.getDay()), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException8 = new XPathException("In format-time(): cannot obtain the week number from an xs:time value");
                xPathException8.setErrorCode("FOFD1350");
                xPathException8.setXPathContext(xPathContext);
                throw xPathException8;
            case 89:
                if (z) {
                    XPathException xPathException9 = new XPathException("In format-time(): an xs:time value does not contain a year component");
                    xPathException9.setErrorCode("FOFD1350");
                    xPathException9.setXPathContext(xPathContext);
                    throw xPathException9;
                }
                int year = dateTime2.getYear();
                if (year < 0) {
                    year = -year;
                }
                return m62987e(regexGroup, year, regexGroup2, z3, numberer, xPathContext);
            case 90:
            case 122:
                if (calendarValue instanceof TimeValue) {
                    int year2 = DateTimeValue.getCurrentDateTime(xPathContext).getYear();
                    int timezoneInMinutes = calendarValue.getTimezoneInMinutes();
                    DateTimeValue dateTimeValue = new DateTimeValue(year2, (byte) 1, (byte) 1, (byte) 0, (byte) 0, (byte) 0, 0, timezoneInMinutes, false);
                    Optional<Boolean> inSummerTime = NamedTimeZone.inSummerTime(dateTimeValue, str2);
                    if (inSummerTime.isPresent() && inSummerTime.get().booleanValue()) {
                        dateTimeValue = new DateTimeValue(year2, (byte) 7, (byte) 1, (byte) 0, (byte) 0, (byte) 0, 0, timezoneInMinutes, false);
                    }
                    dateTime = DateTimeValue.makeDateTimeValue(dateTimeValue.toDateValue(), (TimeValue) calendarValue);
                } else {
                    dateTime = calendarValue.toDateTime();
                }
                return m62988f(dateTime, (char) regexGroup.codePointAt(0L), regexGroup2, str2);
            case 100:
                if (!z) {
                    return m62987e(regexGroup, DateValue.getDayWithinYear(dateTime2.getYear(), dateTime2.getMonth(), dateTime2.getDay()), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException10 = new XPathException("In format-time(): an xs:time value does not contain a day component");
                xPathException10.setErrorCode("FOFD1350");
                xPathException10.setXPathContext(xPathContext);
                throw xPathException10;
            case 102:
                if (!z2) {
                    return m62987e(regexGroup, (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MICROSECONDS)).longValue(), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException11 = new XPathException("In format-date(): an xs:date value does not contain a fractional seconds component");
                xPathException11.setErrorCode("FOFD1350");
                xPathException11.setXPathContext(xPathContext);
                throw xPathException11;
            case 104:
                if (z2) {
                    XPathException xPathException12 = new XPathException("In format-date(): an xs:date value does not contain an hour component");
                    xPathException12.setErrorCode("FOFD1350");
                    xPathException12.setXPathContext(xPathContext);
                    throw xPathException12;
                }
                int longValue = (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.HOURS)).longValue();
                if (longValue > 12) {
                    longValue -= 12;
                }
                return m62987e(regexGroup, longValue != 0 ? longValue : 12, regexGroup2, z3, numberer, xPathContext);
            case 109:
                if (!z2) {
                    return m62987e(regexGroup, (int) ((Int64Value) calendarValue.getComponent(AccessorFn.Component.MINUTES)).longValue(), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException13 = new XPathException("In format-date(): an xs:date value does not contain a minutes component");
                xPathException13.setErrorCode("FOFD1350");
                xPathException13.setXPathContext(xPathContext);
                throw xPathException13;
            case 115:
                if (!z2) {
                    return m62987e(regexGroup, (int) ((IntegerValue) calendarValue.getComponent(AccessorFn.Component.WHOLE_SECONDS)).longValue(), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException14 = new XPathException("In format-date(): an xs:date value does not contain a seconds component");
                xPathException14.setErrorCode("FOFD1350");
                xPathException14.setXPathContext(xPathContext);
                throw xPathException14;
            case 119:
                if (!z) {
                    return m62987e(regexGroup, DateValue.getWeekNumberWithinMonth(dateTime2.getYear(), dateTime2.getMonth(), dateTime2.getDay()), regexGroup2, z3, numberer, xPathContext);
                }
                XPathException xPathException15 = new XPathException("In format-time(): cannot obtain the week number from an xs:time value");
                xPathException15.setErrorCode("FOFD1350");
                xPathException15.setXPathContext(xPathContext);
                throw xPathException15;
            default:
                XPathException xPathException16 = new XPathException("Unknown format-date/time component specifier '" + regexGroup2.substring(0L, 1L) + Chars.QUOTE);
                xPathException16.setErrorCode("FOFD1340");
                xPathException16.setXPathContext(xPathContext);
                throw xPathException16;
        }
    }

    /* renamed from: d */
    public static String m62986d(CalendarValue calendarValue, String str, String str2, String str3, XPathContext xPathContext) throws XPathException {
        TimeZone timeZone;
        Configuration configuration = xPathContext.getConfiguration();
        int i = 0;
        boolean z = str2 == null;
        if (str2 == null) {
            str2 = configuration.getDefaultLanguage();
        }
        if (str3 == null) {
            str3 = configuration.getDefaultCountry();
        }
        if (calendarValue.hasTimezone() && str3.contains("/") && (timeZone = TimeZone.getTimeZone(str3)) != null) {
            calendarValue = calendarValue.adjustTimezone(timeZone.getOffset(calendarValue.toDateTime().secondsSinceEpoch().longValue() * 1000) / 60000);
        }
        Numberer makeNumberer = configuration.makeNumberer(str2, str3);
        StringBuilder sb = new StringBuilder(64);
        if (!z && makeNumberer.getClass() == Numberer_en.class && !str2.startsWith("en")) {
            sb.append("[Language: en]");
        }
        if (makeNumberer.defaultedLocale() != null) {
            sb.append("[Language: " + makeNumberer.defaultedLocale().getLanguage() + IteratorUtils.f104924b);
        }
        while (true) {
            if (i < str.length() && str.charAt(i) != '[') {
                sb.append(str.charAt(i));
                if (str.charAt(i) != ']' || ((i = i + 1) != str.length() && str.charAt(i) == ']')) {
                    i++;
                }
            } else {
                if (i == str.length()) {
                    return sb.toString();
                }
                int i2 = i + 1;
                if (i2 >= str.length() || str.charAt(i2) != '[') {
                    int indexOf = i2 < str.length() ? str.indexOf(IteratorUtils.f104924b, i2) : -1;
                    if (indexOf == -1) {
                        XPathException xPathException = new XPathException("Date format contains a '[' with no matching ']'");
                        xPathException.setErrorCode("FOFD1340");
                        xPathException.setXPathContext(xPathContext);
                        throw xPathException;
                    }
                    sb.append(m62985c(calendarValue, Whitespace.removeAllWhitespace(str.substring(i2, indexOf)), makeNumberer, str3, xPathContext));
                    i = indexOf + 1;
                } else {
                    sb.append('[');
                    i = i2 + 1;
                }
            }
        }
        XPathException xPathException2 = new XPathException("Closing ']' in date picture must be written as ']]'");
        xPathException2.setErrorCode("FOFD1340");
        xPathException2.setXPathContext(xPathContext);
        throw xPathException2;
    }

    /* JADX WARN: Removed duplicated region for block: B:159:0x037a A[LOOP:5: B:158:0x0378->B:159:0x037a, LOOP_END] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.p110sf.saxon.str.UnicodeString m62987e(net.p110sf.saxon.str.UnicodeString r20, int r21, net.p110sf.saxon.str.UnicodeString r22, boolean r23, net.p110sf.saxon.lib.Numberer r24, net.p110sf.saxon.expr.XPathContext r25) throws net.p110sf.saxon.trans.XPathException {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.FormatDate.m62987e(net.sf.saxon.str.UnicodeString, int, net.sf.saxon.str.UnicodeString, boolean, net.sf.saxon.lib.Numberer, net.sf.saxon.expr.XPathContext):net.sf.saxon.str.UnicodeString");
    }

    /* renamed from: f */
    public static UnicodeString m62988f(DateTimeValue dateTimeValue, char c, UnicodeString unicodeString, String str) throws XPathException {
        boolean z;
        int i;
        UnicodeString unicodeString2 = unicodeString;
        int lastIndexOf = (int) StringTool.lastIndexOf(unicodeString2, 44);
        UnicodeString emptyUnicodeString = EmptyUnicodeString.getInstance();
        if (lastIndexOf >= 0) {
            long j = lastIndexOf;
            UnicodeString substring = unicodeString2.substring(j);
            unicodeString2 = unicodeString2.prefix(j);
            emptyUnicodeString = substring;
        }
        if (!dateTimeValue.hasTimezone()) {
            return unicodeString2.equals(f100221x) ? f100213p : EmptyUnicodeString.getInstance();
        }
        boolean z2 = false;
        if (unicodeString2.isEmpty() && !emptyUnicodeString.isEmpty()) {
            int[] m62990h = m62990h(emptyUnicodeString);
            int i2 = m62990h[0];
            int i3 = m62990h[1];
            if (i2 <= 1) {
                unicodeString2 = BMPString.m63877of(i3 >= 4 ? "0:00" : "0");
            } else if (i2 <= 4) {
                unicodeString2 = BMPString.m63877of(i3 >= 5 ? "00:00" : "00");
            } else {
                unicodeString2 = BMPString.m63877of("00:00");
            }
        }
        if (unicodeString2.isEmpty()) {
            unicodeString2 = BMPString.m63877of("00:00");
        }
        int timezoneInMinutes = dateTimeValue.getTimezoneInMinutes();
        boolean z3 = StringTool.lastCodePoint(unicodeString2) == 116;
        if (z3 && timezoneInMinutes == 0) {
            return f100221x;
        }
        if (z3) {
            unicodeString2 = unicodeString2.prefix(unicodeString2.length() - 1);
        }
        int i4 = 58;
        int i5 = -1;
        int i6 = 0;
        int i7 = 0;
        for (int i8 : StringTool.expand(unicodeString2)) {
            if (Character.getType(i8) == 9) {
                i6++;
                if (i5 < 0) {
                    i5 = Alphanumeric.getDigitFamily(i8);
                }
            } else {
                i7++;
                i4 = i8;
            }
        }
        int[] iArr = new int[10];
        if (i6 <= 0) {
            if (!unicodeString2.equals(BMPString.m63877of(Constants.HASIDCALL_INDEX_SIG))) {
                return (unicodeString2.codePointAt(0L) == 78 || unicodeString2.codePointAt(0L) == 110) ? StringView.m63901of(m62989g(dateTimeValue, str, unicodeString2)).tidy() : m62988f(dateTimeValue, 'Z', BMPString.m63877of("00:00"), str);
            }
            int i9 = timezoneInMinutes / 60;
            int i10 = timezoneInMinutes % 60;
            if (i9 < -12 || i9 > 12 || i10 != 0) {
                return m62988f(dateTimeValue, 'Z', BMPString.m63877of("00:00"), str);
            }
            return BMPString.m63877of("" + "YXWVUTSRQPONZABCDEFGHIKLM".charAt(i9 + 12));
        }
        if (c == 'z') {
            iArr[0] = 71;
            z = true;
            iArr[1] = 77;
            iArr[2] = 84;
            i = 3;
        } else {
            z = true;
            i = 0;
        }
        boolean z4 = timezoneInMinutes < 0 ? z : false;
        int abs = Math.abs(timezoneInMinutes);
        int i11 = i + 1;
        iArr[i] = z4 ? 45 : 43;
        int i12 = abs / 60;
        int i13 = abs % 60;
        boolean z5 = (i13 != 0 || i6 >= 3 || i7 > 0) ? z : false;
        if ((i13 != 0 && i6 <= 2) || (i7 > 0 && (i13 != 0 || i6 >= 3))) {
            z2 = z;
        }
        if (i6 > 2) {
            i6 -= 2;
        }
        if (i12 > 9 || i6 >= 2) {
            iArr[i11] = (i12 / 10) + i5;
            i11++;
        }
        int i14 = i11 + 1;
        iArr[i11] = (i12 % 10) + i5;
        if (z2) {
            iArr[i14] = i4;
            i14++;
        }
        if (z5) {
            int i15 = i14 + 1;
            iArr[i14] = (i13 / 10) + i5;
            i14 = i15 + 1;
            iArr[i15] = (i13 % 10) + i5;
        }
        return StringTool.fromCodePoints(iArr, i14);
    }

    /* renamed from: g */
    public static String m62989g(DateTimeValue dateTimeValue, String str, UnicodeString unicodeString) throws XPathException {
        int indexOf = (int) unicodeString.indexOf(44);
        int i = indexOf > 0 ? m62990h(unicodeString.substring(indexOf))[0] : 1;
        if (unicodeString.codePointAt(0L) != 78 && unicodeString.codePointAt(0L) != 110) {
            UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
            dateTimeValue.appendTimezone(unicodeBuilder);
            return unicodeBuilder.toString();
        }
        if (i > 5) {
            return NamedTimeZone.getOlsonTimeZoneName(dateTimeValue, str);
        }
        String timeZoneNameForDate = NamedTimeZone.getTimeZoneNameForDate(dateTimeValue, str);
        return timeZoneNameForDate == null ? m62988f(dateTimeValue, 'Z', BMPString.m63877of("Z00:00t"), str).toString() : unicodeString.codePointAt(0L) == 110 ? timeZoneNameForDate.toLowerCase() : timeZoneNameForDate;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008b A[Catch: NumberFormatException -> 0x00c8, TryCatch #0 {NumberFormatException -> 0x00c8, blocks: (B:3:0x0002, B:5:0x0008, B:7:0x0015, B:9:0x0021, B:11:0x0027, B:13:0x002e, B:15:0x0034, B:18:0x003d, B:19:0x0047, B:21:0x004e, B:23:0x0054, B:26:0x005d, B:31:0x00c3, B:34:0x0070, B:35:0x008a, B:36:0x008b, B:37:0x00a5, B:40:0x00a6, B:41:0x00c0), top: B:2:0x0002 }] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m62990h(net.p110sf.saxon.str.UnicodeString r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            java.lang.String r0 = "FOFD1340"
            boolean r1 = r8.isEmpty()     // Catch: java.lang.NumberFormatException -> Lc8
            if (r1 != 0) goto Lc1
            net.sf.saxon.regex.ARegularExpression r1 = net.p110sf.saxon.functions.FormatDate.f100223z     // Catch: java.lang.NumberFormatException -> Lc8
            net.sf.saxon.regex.RegexIterator r1 = r1.analyze(r8)     // Catch: java.lang.NumberFormatException -> Lc8
            net.sf.saxon.value.StringValue r2 = r1.next()     // Catch: java.lang.NumberFormatException -> Lc8
            r3 = 4
            if (r2 == 0) goto La6
            long r4 = r2.length()     // Catch: java.lang.NumberFormatException -> Lc8
            long r6 = r8.length()     // Catch: java.lang.NumberFormatException -> Lc8
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 != 0) goto La6
            boolean r2 = r1.isMatching()     // Catch: java.lang.NumberFormatException -> Lc8
            if (r2 == 0) goto La6
            r2 = 1
            net.sf.saxon.str.UnicodeString r4 = r1.getRegexGroup(r2)     // Catch: java.lang.NumberFormatException -> Lc8
            if (r4 == 0) goto L46
            boolean r5 = r4.isEmpty()     // Catch: java.lang.NumberFormatException -> Lc8
            if (r5 != 0) goto L46
            net.sf.saxon.str.UnicodeString r5 = net.p110sf.saxon.str.StringConstants.ASTERISK     // Catch: java.lang.NumberFormatException -> Lc8
            boolean r5 = r5.equals(r4)     // Catch: java.lang.NumberFormatException -> Lc8
            if (r5 == 0) goto L3d
            goto L46
        L3d:
            java.lang.String r4 = r4.toString()     // Catch: java.lang.NumberFormatException -> Lc8
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.NumberFormatException -> Lc8
            goto L47
        L46:
            r4 = r2
        L47:
            r5 = 3
            net.sf.saxon.str.UnicodeString r1 = r1.getRegexGroup(r5)     // Catch: java.lang.NumberFormatException -> Lc8
            if (r1 == 0) goto L66
            boolean r5 = r1.isEmpty()     // Catch: java.lang.NumberFormatException -> Lc8
            if (r5 != 0) goto L66
            net.sf.saxon.str.UnicodeString r5 = net.p110sf.saxon.str.StringConstants.ASTERISK     // Catch: java.lang.NumberFormatException -> Lc8
            boolean r5 = r5.equals(r1)     // Catch: java.lang.NumberFormatException -> Lc8
            if (r5 == 0) goto L5d
            goto L66
        L5d:
            java.lang.String r1 = r1.toString()     // Catch: java.lang.NumberFormatException -> Lc8
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> Lc8
            goto L69
        L66:
            r1 = 2147483647(0x7fffffff, float:NaN)
        L69:
            if (r4 < r2) goto L8b
            if (r1 < r2) goto L70
            if (r1 < r4) goto L70
            goto Lc3
        L70:
            net.sf.saxon.trans.XPathException r1 = new net.sf.saxon.trans.XPathException     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> Lc8
            r2.<init>()     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r4 = "Invalid max value in format picture "
            r2.append(r4)     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r8 = net.p110sf.saxon.trans.Err.wrap(r8, r3)     // Catch: java.lang.NumberFormatException -> Lc8
            r2.append(r8)     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r8 = r2.toString()     // Catch: java.lang.NumberFormatException -> Lc8
            r1.<init>(r8, r0)     // Catch: java.lang.NumberFormatException -> Lc8
            throw r1     // Catch: java.lang.NumberFormatException -> Lc8
        L8b:
            net.sf.saxon.trans.XPathException r1 = new net.sf.saxon.trans.XPathException     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> Lc8
            r2.<init>()     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r4 = "Invalid min value in format picture "
            r2.append(r4)     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r8 = net.p110sf.saxon.trans.Err.wrap(r8, r3)     // Catch: java.lang.NumberFormatException -> Lc8
            r2.append(r8)     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r8 = r2.toString()     // Catch: java.lang.NumberFormatException -> Lc8
            r1.<init>(r8, r0)     // Catch: java.lang.NumberFormatException -> Lc8
            throw r1     // Catch: java.lang.NumberFormatException -> Lc8
        La6:
            net.sf.saxon.trans.XPathException r1 = new net.sf.saxon.trans.XPathException     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> Lc8
            r2.<init>()     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r4 = "Unrecognized width specifier in format picture "
            r2.append(r4)     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r8 = net.p110sf.saxon.trans.Err.wrap(r8, r3)     // Catch: java.lang.NumberFormatException -> Lc8
            r2.append(r8)     // Catch: java.lang.NumberFormatException -> Lc8
            java.lang.String r8 = r2.toString()     // Catch: java.lang.NumberFormatException -> Lc8
            r1.<init>(r8, r0)     // Catch: java.lang.NumberFormatException -> Lc8
            throw r1     // Catch: java.lang.NumberFormatException -> Lc8
        Lc1:
            r4 = -1
            r1 = r4
        Lc3:
            int[] r8 = new int[]{r4, r1}     // Catch: java.lang.NumberFormatException -> Lc8
            return r8
        Lc8:
            net.sf.saxon.trans.XPathException r8 = new net.sf.saxon.trans.XPathException
            java.lang.String r1 = "Invalid integer used as width in date/time picture"
            r8.<init>(r1)
            r8.setErrorCode(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.functions.FormatDate.m62990h(net.sf.saxon.str.UnicodeString):int[]");
    }

    /* renamed from: i */
    public static UnicodeString m62991i(UnicodeString unicodeString) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(unicodeString.length32());
        long length = unicodeString.length();
        while (true) {
            length--;
            if (length < 0) {
                return unicodeBuilder.toUnicodeString();
            }
            unicodeBuilder.append(unicodeString.codePointAt(length));
        }
    }

    /* renamed from: a */
    public final String m62992a(String str, String str2, XPathContext xPathContext) throws XPathException {
        try {
            StructuredQName fromLexicalQName = StructuredQName.fromLexicalQName(str, false, true, getRetainedStaticContext());
            if (!fromLexicalQName.hasURI("")) {
                return "[Calendar: AD]" + str2;
            }
            String localPart = fromLexicalQName.getLocalPart();
            if (localPart.equals("AD") || localPart.equals(ExifInterface.TAG_RW2_ISO)) {
                return str2;
            }
            if (Arrays.binarySearch(f100205h, localPart) >= 0) {
                return "[Calendar: AD]" + str2;
            }
            XPathException xPathException = new XPathException("Unknown no-namespace calendar: " + localPart);
            xPathException.setErrorCode("FOFD1340");
            xPathException.setXPathContext(xPathContext);
            throw xPathException;
        } catch (XPathException e) {
            XPathException xPathException2 = new XPathException("Invalid calendar name. " + e.getMessage());
            xPathException2.setErrorCode("FOFD1340");
            xPathException2.setXPathContext(xPathContext);
            throw xPathException2;
        }
    }

    /* renamed from: b */
    public final CalendarValue m62993b(CalendarValue calendarValue, String str) {
        ZoneId namedTimeZone;
        return (!str.contains("/") || !calendarValue.hasTimezone() || (calendarValue instanceof TimeValue) || (namedTimeZone = NamedTimeZone.getNamedTimeZone(str)) == null) ? calendarValue : calendarValue.adjustTimezone(namedTimeZone.getRules().getOffset(calendarValue.toDateTime().toJavaInstant()).getTotalSeconds() / 60);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue;
        StringValue stringValue2;
        StringValue stringValue3;
        CalendarValue calendarValue = (CalendarValue) sequenceArr[0].head();
        if (calendarValue == null) {
            return EmptySequence.getInstance();
        }
        String stringValue4 = sequenceArr[1].head().getStringValue();
        if (getArity() > 2) {
            stringValue2 = (StringValue) sequenceArr[2].head();
            stringValue3 = (StringValue) sequenceArr[3].head();
            stringValue = (StringValue) sequenceArr[4].head();
        } else {
            stringValue = null;
            stringValue2 = null;
            stringValue3 = null;
        }
        String stringValue5 = stringValue3 == null ? null : stringValue3.getStringValue();
        String stringValue6 = stringValue2 == null ? null : stringValue2.getStringValue();
        String stringValue7 = stringValue != null ? stringValue.getStringValue() : null;
        if (stringValue7 != null) {
            calendarValue = m62993b(calendarValue, stringValue7);
        }
        String m62986d = m62986d(calendarValue, stringValue4, stringValue6, stringValue7, xPathContext);
        if (stringValue3 != null) {
            m62986d = m62992a(stringValue5, m62986d, xPathContext);
        }
        return new StringValue(m62986d);
    }
}
