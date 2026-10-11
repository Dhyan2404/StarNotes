package com.google.zxing.client.result;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes4.dex */
public final class CalendarParsedResult extends ParsedResult {

    /* renamed from: m */
    public static final Pattern f38281m = Pattern.compile("P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?");

    /* renamed from: n */
    public static final long[] f38282n = {604800000, 86400000, 3600000, 60000, 1000};

    /* renamed from: o */
    public static final Pattern f38283o = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");

    /* renamed from: b */
    public final String f38284b;

    /* renamed from: c */
    public final Date f38285c;

    /* renamed from: d */
    public final boolean f38286d;

    /* renamed from: e */
    public final Date f38287e;

    /* renamed from: f */
    public final boolean f38288f;

    /* renamed from: g */
    public final String f38289g;

    /* renamed from: h */
    public final String f38290h;

    /* renamed from: i */
    public final String[] f38291i;

    /* renamed from: j */
    public final String f38292j;

    /* renamed from: k */
    public final double f38293k;

    /* renamed from: l */
    public final double f38294l;

    public CalendarParsedResult(String str, String str2, String str3, String str4, String str5, String str6, String[] strArr, String str7, double d, double d2) {
        super(ParsedResultType.CALENDAR);
        this.f38284b = str;
        try {
            Date m30472d = m30472d(str2);
            this.f38285c = m30472d;
            if (str3 == null) {
                long m30473e = m30473e(str4);
                this.f38287e = m30473e < 0 ? null : new Date(m30472d.getTime() + m30473e);
            } else {
                try {
                    this.f38287e = m30472d(str3);
                } catch (ParseException e) {
                    throw new IllegalArgumentException(e.toString());
                }
            }
            this.f38286d = str2.length() == 8;
            this.f38288f = str3 != null && str3.length() == 8;
            this.f38289g = str5;
            this.f38290h = str6;
            this.f38291i = strArr;
            this.f38292j = str7;
            this.f38293k = d;
            this.f38294l = d2;
        } catch (ParseException e2) {
            throw new IllegalArgumentException(e2.toString());
        }
    }

    /* renamed from: a */
    public static DateFormat m30469a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone(TimeZones.GMT_ID));
        return simpleDateFormat;
    }

    /* renamed from: b */
    public static DateFormat m30470b() {
        return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH);
    }

    /* renamed from: c */
    public static String m30471c(boolean z, Date date) {
        if (date == null) {
            return null;
        }
        return (z ? DateFormat.getDateInstance(2) : DateFormat.getDateTimeInstance(2, 2)).format(date);
    }

    /* renamed from: d */
    public static Date m30472d(String str) throws ParseException {
        if (!f38283o.matcher(str).matches()) {
            throw new ParseException(str, 0);
        }
        if (str.length() == 8) {
            return m30469a().parse(str);
        }
        if (str.length() != 16 || str.charAt(15) != 'Z') {
            return m30470b().parse(str);
        }
        Date parse = m30470b().parse(str.substring(0, 15));
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        long time = parse.getTime() + gregorianCalendar.get(15);
        gregorianCalendar.setTime(new Date(time));
        return new Date(time + gregorianCalendar.get(16));
    }

    /* renamed from: e */
    public static long m30473e(CharSequence charSequence) {
        if (charSequence == null) {
            return -1L;
        }
        Matcher matcher = f38281m.matcher(charSequence);
        if (!matcher.matches()) {
            return -1L;
        }
        long j = 0;
        int i = 0;
        while (true) {
            long[] jArr = f38282n;
            if (i >= jArr.length) {
                return j;
            }
            int i2 = i + 1;
            if (matcher.group(i2) != null) {
                j += jArr[i] * Integer.parseInt(r5);
            }
            i = i2;
        }
    }

    public String[] getAttendees() {
        return this.f38291i;
    }

    public String getDescription() {
        return this.f38292j;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        ParsedResult.maybeAppend(this.f38284b, sb);
        ParsedResult.maybeAppend(m30471c(this.f38286d, this.f38285c), sb);
        ParsedResult.maybeAppend(m30471c(this.f38288f, this.f38287e), sb);
        ParsedResult.maybeAppend(this.f38289g, sb);
        ParsedResult.maybeAppend(this.f38290h, sb);
        ParsedResult.maybeAppend(this.f38291i, sb);
        ParsedResult.maybeAppend(this.f38292j, sb);
        return sb.toString();
    }

    public Date getEnd() {
        return this.f38287e;
    }

    public double getLatitude() {
        return this.f38293k;
    }

    public String getLocation() {
        return this.f38289g;
    }

    public double getLongitude() {
        return this.f38294l;
    }

    public String getOrganizer() {
        return this.f38290h;
    }

    public Date getStart() {
        return this.f38285c;
    }

    public String getSummary() {
        return this.f38284b;
    }

    public boolean isEndAllDay() {
        return this.f38288f;
    }

    public boolean isStartAllDay() {
        return this.f38286d;
    }
}
