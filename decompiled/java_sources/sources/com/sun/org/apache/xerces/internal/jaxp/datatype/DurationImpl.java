package com.sun.org.apache.xerces.internal.jaxp.datatype;

import com.fasterxml.jackson.core.base.ParserBase;
import com.sun.org.apache.xerces.internal.util.DatatypeMessageFormatter;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.commons.lang3.time.TimeZones;

/* loaded from: classes10.dex */
class DurationImpl extends Duration implements Serializable {
    private static final BigDecimal[] FACTORS;
    private static final DatatypeConstants.Field[] FIELDS;
    private static final int[] FIELD_IDS;
    private static final int FIELD_NUM = 6;
    private static final TimeZone GMT;
    private static final XMLGregorianCalendar[] TEST_POINTS;
    private static final BigDecimal ZERO;
    private static final long serialVersionUID = 1;
    private final BigInteger days;
    private final BigInteger hours;
    private final BigInteger minutes;
    private final BigInteger months;
    private final BigDecimal seconds;
    private final int signum;
    private final BigInteger years;

    /* loaded from: classes10.dex */
    public static class DurationStream implements Serializable {
        private static final long serialVersionUID = 1;
        private final String lexical;

        private Object readResolve() throws ObjectStreamException {
            return new DurationImpl(this.lexical);
        }

        private DurationStream(String str) {
            this.lexical = str;
        }
    }

    static {
        DatatypeConstants.Field field = DatatypeConstants.YEARS;
        DatatypeConstants.Field field2 = DatatypeConstants.MONTHS;
        DatatypeConstants.Field field3 = DatatypeConstants.DAYS;
        DatatypeConstants.Field field4 = DatatypeConstants.HOURS;
        DatatypeConstants.Field field5 = DatatypeConstants.MINUTES;
        DatatypeConstants.Field field6 = DatatypeConstants.SECONDS;
        FIELDS = new DatatypeConstants.Field[]{field, field2, field3, field4, field5, field6};
        FIELD_IDS = new int[]{field.getId(), field2.getId(), field3.getId(), field4.getId(), field5.getId(), field6.getId()};
        GMT = TimeZone.getTimeZone(TimeZones.GMT_ID);
        ZERO = BigDecimal.valueOf(0L);
        TEST_POINTS = new XMLGregorianCalendar[]{XMLGregorianCalendarImpl.parse("1696-09-01T00:00:00Z"), XMLGregorianCalendarImpl.parse("1697-02-01T00:00:00Z"), XMLGregorianCalendarImpl.parse("1903-03-01T00:00:00Z"), XMLGregorianCalendarImpl.parse("1903-07-01T00:00:00Z")};
        FACTORS = new BigDecimal[]{BigDecimal.valueOf(12L), null, BigDecimal.valueOf(24L), BigDecimal.valueOf(60L), BigDecimal.valueOf(60L)};
    }

    public DurationImpl(boolean z, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigDecimal bigDecimal) {
        this.years = bigInteger;
        this.months = bigInteger2;
        this.days = bigInteger3;
        this.hours = bigInteger4;
        this.minutes = bigInteger5;
        this.seconds = bigDecimal;
        this.signum = calcSignum(z);
        if (bigInteger == null && bigInteger2 == null && bigInteger3 == null && bigInteger4 == null && bigInteger5 == null && bigDecimal == null) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "AllFieldsNull", null));
        }
        testNonNegative(bigInteger, DatatypeConstants.YEARS);
        testNonNegative(bigInteger2, DatatypeConstants.MONTHS);
        testNonNegative(bigInteger3, DatatypeConstants.DAYS);
        testNonNegative(bigInteger4, DatatypeConstants.HOURS);
        testNonNegative(bigInteger5, DatatypeConstants.MINUTES);
        testNonNegative(bigDecimal, DatatypeConstants.SECONDS);
    }

    private static void alignSigns(BigDecimal[] bigDecimalArr, int i, int i2) {
        boolean z;
        do {
            z = false;
            int i3 = 0;
            for (int i4 = i; i4 < i2; i4++) {
                if (bigDecimalArr[i4].signum() * i3 < 0) {
                    BigDecimal abs = bigDecimalArr[i4].abs();
                    BigDecimal[] bigDecimalArr2 = FACTORS;
                    int i5 = i4 - 1;
                    BigDecimal divide = abs.divide(bigDecimalArr2[i5], 0);
                    if (bigDecimalArr[i4].signum() > 0) {
                        divide = divide.negate();
                    }
                    bigDecimalArr[i5] = bigDecimalArr[i5].subtract(divide);
                    bigDecimalArr[i4] = bigDecimalArr[i4].add(divide.multiply(bigDecimalArr2[i5]));
                    z = true;
                }
                if (bigDecimalArr[i4].signum() != 0) {
                    i3 = bigDecimalArr[i4].signum();
                }
            }
        } while (z);
    }

    private int calcSignum(boolean z) {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4;
        BigDecimal bigDecimal;
        BigInteger bigInteger5 = this.years;
        if ((bigInteger5 == null || bigInteger5.signum() == 0) && (((bigInteger = this.months) == null || bigInteger.signum() == 0) && (((bigInteger2 = this.days) == null || bigInteger2.signum() == 0) && (((bigInteger3 = this.hours) == null || bigInteger3.signum() == 0) && (((bigInteger4 = this.minutes) == null || bigInteger4.signum() == 0) && ((bigDecimal = this.seconds) == null || bigDecimal.signum() == 0)))))) {
            return 0;
        }
        return z ? 1 : -1;
    }

    private int compareDates(Duration duration, Duration duration2) {
        XMLGregorianCalendar[] xMLGregorianCalendarArr = TEST_POINTS;
        XMLGregorianCalendar xMLGregorianCalendar = (XMLGregorianCalendar) xMLGregorianCalendarArr[0].clone();
        XMLGregorianCalendar xMLGregorianCalendar2 = (XMLGregorianCalendar) xMLGregorianCalendarArr[0].clone();
        xMLGregorianCalendar.add(duration);
        xMLGregorianCalendar2.add(duration2);
        int compare = xMLGregorianCalendar.compare(xMLGregorianCalendar2);
        if (compare == 2) {
            return 2;
        }
        XMLGregorianCalendar xMLGregorianCalendar3 = (XMLGregorianCalendar) xMLGregorianCalendarArr[1].clone();
        XMLGregorianCalendar xMLGregorianCalendar4 = (XMLGregorianCalendar) xMLGregorianCalendarArr[1].clone();
        xMLGregorianCalendar3.add(duration);
        xMLGregorianCalendar4.add(duration2);
        int compareResults = compareResults(compare, xMLGregorianCalendar3.compare(xMLGregorianCalendar4));
        if (compareResults == 2) {
            return 2;
        }
        XMLGregorianCalendar xMLGregorianCalendar5 = (XMLGregorianCalendar) xMLGregorianCalendarArr[2].clone();
        XMLGregorianCalendar xMLGregorianCalendar6 = (XMLGregorianCalendar) xMLGregorianCalendarArr[2].clone();
        xMLGregorianCalendar5.add(duration);
        xMLGregorianCalendar6.add(duration2);
        int compareResults2 = compareResults(compareResults, xMLGregorianCalendar5.compare(xMLGregorianCalendar6));
        if (compareResults2 == 2) {
            return 2;
        }
        XMLGregorianCalendar xMLGregorianCalendar7 = (XMLGregorianCalendar) xMLGregorianCalendarArr[3].clone();
        XMLGregorianCalendar xMLGregorianCalendar8 = (XMLGregorianCalendar) xMLGregorianCalendarArr[3].clone();
        xMLGregorianCalendar7.add(duration);
        xMLGregorianCalendar8.add(duration2);
        return compareResults(compareResults2, xMLGregorianCalendar7.compare(xMLGregorianCalendar8));
    }

    private int compareResults(int i, int i2) {
        if (i2 != 2 && i == i2) {
            return i;
        }
        return 2;
    }

    private static long getCalendarTimeInMillis(Calendar calendar) {
        return calendar.getTime().getTime();
    }

    private BigDecimal getFieldAsBigDecimal(DatatypeConstants.Field field) {
        if (field == DatatypeConstants.SECONDS) {
            BigDecimal bigDecimal = this.seconds;
            return bigDecimal != null ? bigDecimal : ZERO;
        }
        BigInteger bigInteger = (BigInteger) getField(field);
        return bigInteger == null ? ZERO : new BigDecimal(bigInteger);
    }

    private int getInt(DatatypeConstants.Field field) {
        Number field2 = getField(field);
        if (field2 == null) {
            return 0;
        }
        return field2.intValue();
    }

    private static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static boolean isDigitOrPeriod(char c) {
        return isDigit(c) || c == '.';
    }

    private static void organizeParts(String str, String[] strArr, int[] iArr, int i, String str2) throws IllegalArgumentException {
        int length = str2.length();
        int i2 = i - 1;
        while (i2 >= 0) {
            int lastIndexOf = str2.lastIndexOf(strArr[i2].charAt(r3.length() - 1), length - 1);
            if (lastIndexOf == -1) {
                throw new IllegalArgumentException(str);
            }
            for (int i3 = lastIndexOf + 1; i3 < length; i3++) {
                strArr[i3] = null;
            }
            strArr[lastIndexOf] = strArr[i2];
            iArr[lastIndexOf] = iArr[i2];
            i2--;
            length = lastIndexOf;
        }
        for (int i4 = length - 1; i4 >= 0; i4--) {
            strArr[i4] = null;
        }
    }

    private static BigDecimal parseBigDecimal(String str, String str2, int i) throws IllegalArgumentException {
        if (str2 == null) {
            return null;
        }
        return new BigDecimal(str2.substring(0, str2.length() - 1));
    }

    private static BigInteger parseBigInteger(String str, String str2, int i) throws IllegalArgumentException {
        if (str2 == null) {
            return null;
        }
        return new BigInteger(str2.substring(0, str2.length() - 1));
    }

    private static String parsePiece(String str, int[] iArr) throws IllegalArgumentException {
        int i = iArr[0];
        while (iArr[0] < str.length() && isDigitOrPeriod(str.charAt(iArr[0]))) {
            iArr[0] = iArr[0] + 1;
        }
        if (iArr[0] == str.length()) {
            throw new IllegalArgumentException(str);
        }
        int i2 = iArr[0] + 1;
        iArr[0] = i2;
        return str.substring(i, i2);
    }

    private static BigDecimal sanitize(BigInteger bigInteger, int i) {
        if (i == 0 || bigInteger == null) {
            return ZERO;
        }
        if (i > 0) {
            return new BigDecimal(bigInteger);
        }
        return new BigDecimal(bigInteger.negate());
    }

    private static void testNonNegative(BigInteger bigInteger, DatatypeConstants.Field field) {
        if (bigInteger != null && bigInteger.signum() < 0) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "NegativeField", new Object[]{field.toString()}));
        }
    }

    private static BigInteger toBigInteger(BigDecimal bigDecimal, boolean z) {
        if (z && bigDecimal.signum() == 0) {
            return null;
        }
        return bigDecimal.unscaledValue();
    }

    private static BigInteger wrap(int i) {
        if (i == Integer.MIN_VALUE) {
            return null;
        }
        return new BigInteger(String.valueOf(i));
    }

    private Object writeReplace() throws IOException {
        return new DurationStream(toString());
    }

    @Override // javax.xml.datatype.Duration
    public Duration add(Duration duration) {
        BigDecimal sanitize;
        DatatypeConstants.Field field = DatatypeConstants.YEARS;
        BigDecimal add = sanitize((BigInteger) getField(field), getSign()).add(sanitize((BigInteger) duration.getField(field), duration.getSign()));
        boolean z = false;
        DatatypeConstants.Field field2 = DatatypeConstants.MONTHS;
        DatatypeConstants.Field field3 = DatatypeConstants.DAYS;
        DatatypeConstants.Field field4 = DatatypeConstants.HOURS;
        DatatypeConstants.Field field5 = DatatypeConstants.MINUTES;
        DatatypeConstants.Field field6 = DatatypeConstants.SECONDS;
        BigDecimal[] bigDecimalArr = {add, sanitize((BigInteger) getField(field2), getSign()).add(sanitize((BigInteger) duration.getField(field2), duration.getSign())), sanitize((BigInteger) getField(field3), getSign()).add(sanitize((BigInteger) duration.getField(field3), duration.getSign())), sanitize((BigInteger) getField(field4), getSign()).add(sanitize((BigInteger) duration.getField(field4), duration.getSign())), sanitize((BigInteger) getField(field5), getSign()).add(sanitize((BigInteger) duration.getField(field5), duration.getSign())), sanitize((BigDecimal) getField(field6), getSign()).add(sanitize((BigDecimal) duration.getField(field6), duration.getSign()))};
        alignSigns(bigDecimalArr, 0, 2);
        alignSigns(bigDecimalArr, 2, 6);
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            if (bigDecimalArr[i2].signum() * i < 0) {
                throw new IllegalStateException();
            }
            if (i == 0) {
                i = bigDecimalArr[i2].signum();
            }
        }
        boolean z2 = i >= 0;
        BigDecimal sanitize2 = sanitize(bigDecimalArr[0], i);
        DatatypeConstants.Field field7 = DatatypeConstants.YEARS;
        BigInteger bigInteger = toBigInteger(sanitize2, getField(field7) == null && duration.getField(field7) == null);
        BigDecimal sanitize3 = sanitize(bigDecimalArr[1], i);
        DatatypeConstants.Field field8 = DatatypeConstants.MONTHS;
        BigInteger bigInteger2 = toBigInteger(sanitize3, getField(field8) == null && duration.getField(field8) == null);
        BigDecimal sanitize4 = sanitize(bigDecimalArr[2], i);
        DatatypeConstants.Field field9 = DatatypeConstants.DAYS;
        BigInteger bigInteger3 = toBigInteger(sanitize4, getField(field9) == null && duration.getField(field9) == null);
        BigDecimal sanitize5 = sanitize(bigDecimalArr[3], i);
        DatatypeConstants.Field field10 = DatatypeConstants.HOURS;
        BigInteger bigInteger4 = toBigInteger(sanitize5, getField(field10) == null && duration.getField(field10) == null);
        BigDecimal sanitize6 = sanitize(bigDecimalArr[4], i);
        DatatypeConstants.Field field11 = DatatypeConstants.MINUTES;
        if (getField(field11) == null && duration.getField(field11) == null) {
            z = true;
        }
        BigInteger bigInteger5 = toBigInteger(sanitize6, z);
        if (bigDecimalArr[5].signum() == 0) {
            DatatypeConstants.Field field12 = DatatypeConstants.SECONDS;
            if (getField(field12) == null && duration.getField(field12) == null) {
                sanitize = null;
                return new DurationImpl(z2, bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, sanitize);
            }
        }
        sanitize = sanitize(bigDecimalArr[5], i);
        return new DurationImpl(z2, bigInteger, bigInteger2, bigInteger3, bigInteger4, bigInteger5, sanitize);
    }

    @Override // javax.xml.datatype.Duration
    public void addTo(Calendar calendar) {
        calendar.add(1, getYears() * this.signum);
        calendar.add(2, getMonths() * this.signum);
        calendar.add(5, getDays() * this.signum);
        calendar.add(10, getHours() * this.signum);
        calendar.add(12, getMinutes() * this.signum);
        calendar.add(13, getSeconds() * this.signum);
        BigDecimal bigDecimal = this.seconds;
        if (bigDecimal != null) {
            calendar.add(14, bigDecimal.subtract(bigDecimal.setScale(0, 1)).movePointRight(3).intValue() * this.signum);
        }
    }

    @Override // javax.xml.datatype.Duration
    public int compare(Duration duration) {
        BigInteger valueOf = BigInteger.valueOf(2147483647L);
        BigInteger.valueOf(ParserBase.f21225q);
        BigInteger bigInteger = this.years;
        if (bigInteger != null && bigInteger.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + DatatypeConstants.YEARS.toString(), this.years.toString()}));
        }
        BigInteger bigInteger2 = this.months;
        if (bigInteger2 != null && bigInteger2.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + DatatypeConstants.MONTHS.toString(), this.months.toString()}));
        }
        BigInteger bigInteger3 = this.days;
        if (bigInteger3 != null && bigInteger3.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + DatatypeConstants.DAYS.toString(), this.days.toString()}));
        }
        BigInteger bigInteger4 = this.hours;
        if (bigInteger4 != null && bigInteger4.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + DatatypeConstants.HOURS.toString(), this.hours.toString()}));
        }
        BigInteger bigInteger5 = this.minutes;
        if (bigInteger5 != null && bigInteger5.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + DatatypeConstants.MINUTES.toString(), this.minutes.toString()}));
        }
        BigDecimal bigDecimal = this.seconds;
        if (bigDecimal != null && bigDecimal.toBigInteger().compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + DatatypeConstants.SECONDS.toString(), this.seconds.toString()}));
        }
        DatatypeConstants.Field field = DatatypeConstants.YEARS;
        BigInteger bigInteger6 = (BigInteger) duration.getField(field);
        if (bigInteger6 != null && bigInteger6.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + field.toString(), bigInteger6.toString()}));
        }
        DatatypeConstants.Field field2 = DatatypeConstants.MONTHS;
        BigInteger bigInteger7 = (BigInteger) duration.getField(field2);
        if (bigInteger7 != null && bigInteger7.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + field2.toString(), bigInteger7.toString()}));
        }
        DatatypeConstants.Field field3 = DatatypeConstants.DAYS;
        BigInteger bigInteger8 = (BigInteger) duration.getField(field3);
        if (bigInteger8 != null && bigInteger8.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + field3.toString(), bigInteger8.toString()}));
        }
        DatatypeConstants.Field field4 = DatatypeConstants.HOURS;
        BigInteger bigInteger9 = (BigInteger) duration.getField(field4);
        if (bigInteger9 != null && bigInteger9.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + field4.toString(), bigInteger9.toString()}));
        }
        DatatypeConstants.Field field5 = DatatypeConstants.MINUTES;
        BigInteger bigInteger10 = (BigInteger) duration.getField(field5);
        if (bigInteger10 != null && bigInteger10.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + field5.toString(), bigInteger10.toString()}));
        }
        DatatypeConstants.Field field6 = DatatypeConstants.SECONDS;
        BigDecimal bigDecimal2 = (BigDecimal) duration.getField(field6);
        BigInteger bigInteger11 = bigDecimal2 != null ? bigDecimal2.toBigInteger() : null;
        if (bigInteger11 != null && bigInteger11.compareTo(valueOf) == 1) {
            throw new UnsupportedOperationException(DatatypeMessageFormatter.formatMessage(null, "TooLarge", new Object[]{getClass().getName() + "#compare(Duration duration)" + field6.toString(), bigInteger11.toString()}));
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(1970, 1, 1, 0, 0, 0);
        gregorianCalendar.add(1, getYears() * getSign());
        gregorianCalendar.add(2, getMonths() * getSign());
        gregorianCalendar.add(6, getDays() * getSign());
        gregorianCalendar.add(11, getHours() * getSign());
        gregorianCalendar.add(12, getMinutes() * getSign());
        gregorianCalendar.add(13, getSeconds() * getSign());
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar(1970, 1, 1, 0, 0, 0);
        gregorianCalendar2.add(1, duration.getYears() * duration.getSign());
        gregorianCalendar2.add(2, duration.getMonths() * duration.getSign());
        gregorianCalendar2.add(6, duration.getDays() * duration.getSign());
        gregorianCalendar2.add(11, duration.getHours() * duration.getSign());
        gregorianCalendar2.add(12, duration.getMinutes() * duration.getSign());
        gregorianCalendar2.add(13, duration.getSeconds() * duration.getSign());
        if (gregorianCalendar.equals(gregorianCalendar2)) {
            return 0;
        }
        return compareDates(this, duration);
    }

    @Override // javax.xml.datatype.Duration
    public int getDays() {
        return getInt(DatatypeConstants.DAYS);
    }

    @Override // javax.xml.datatype.Duration
    public Number getField(DatatypeConstants.Field field) {
        if (field == null) {
            throw new NullPointerException(DatatypeMessageFormatter.formatMessage(null, "FieldCannotBeNull", new Object[]{"javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "}));
        }
        if (field == DatatypeConstants.YEARS) {
            return this.years;
        }
        if (field == DatatypeConstants.MONTHS) {
            return this.months;
        }
        if (field == DatatypeConstants.DAYS) {
            return this.days;
        }
        if (field == DatatypeConstants.HOURS) {
            return this.hours;
        }
        if (field == DatatypeConstants.MINUTES) {
            return this.minutes;
        }
        if (field == DatatypeConstants.SECONDS) {
            return this.seconds;
        }
        throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "UnknownField", new Object[]{"javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)", field.toString()}));
    }

    @Override // javax.xml.datatype.Duration
    public int getHours() {
        return getInt(DatatypeConstants.HOURS);
    }

    @Override // javax.xml.datatype.Duration
    public int getMinutes() {
        return getInt(DatatypeConstants.MINUTES);
    }

    @Override // javax.xml.datatype.Duration
    public int getMonths() {
        return getInt(DatatypeConstants.MONTHS);
    }

    @Override // javax.xml.datatype.Duration
    public int getSeconds() {
        return getInt(DatatypeConstants.SECONDS);
    }

    @Override // javax.xml.datatype.Duration
    public int getSign() {
        return this.signum;
    }

    @Override // javax.xml.datatype.Duration
    public long getTimeInMillis(Calendar calendar) {
        Calendar calendar2 = (Calendar) calendar.clone();
        addTo(calendar2);
        return getCalendarTimeInMillis(calendar2) - getCalendarTimeInMillis(calendar);
    }

    @Override // javax.xml.datatype.Duration
    public int getYears() {
        return getInt(DatatypeConstants.YEARS);
    }

    @Override // javax.xml.datatype.Duration
    public int hashCode() {
        GregorianCalendar gregorianCalendar = TEST_POINTS[0].toGregorianCalendar();
        addTo(gregorianCalendar);
        return (int) getCalendarTimeInMillis(gregorianCalendar);
    }

    @Override // javax.xml.datatype.Duration
    public boolean isSet(DatatypeConstants.Field field) {
        if (field == null) {
            throw new NullPointerException(DatatypeMessageFormatter.formatMessage(null, "FieldCannotBeNull", new Object[]{"javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"}));
        }
        if (field == DatatypeConstants.YEARS) {
            return this.years != null;
        }
        if (field == DatatypeConstants.MONTHS) {
            return this.months != null;
        }
        if (field == DatatypeConstants.DAYS) {
            return this.days != null;
        }
        if (field == DatatypeConstants.HOURS) {
            return this.hours != null;
        }
        if (field == DatatypeConstants.MINUTES) {
            return this.minutes != null;
        }
        if (field == DatatypeConstants.SECONDS) {
            return this.seconds != null;
        }
        throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "UnknownField", new Object[]{"javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)", field.toString()}));
    }

    @Override // javax.xml.datatype.Duration
    public Duration multiply(int i) {
        return multiply(BigDecimal.valueOf(i));
    }

    @Override // javax.xml.datatype.Duration
    public Duration negate() {
        return new DurationImpl(this.signum <= 0, this.years, this.months, this.days, this.hours, this.minutes, this.seconds);
    }

    @Override // javax.xml.datatype.Duration
    public Duration normalizeWith(Calendar calendar) {
        Calendar calendar2 = (Calendar) calendar.clone();
        calendar2.add(1, getYears() * this.signum);
        calendar2.add(2, getMonths() * this.signum);
        calendar2.add(5, getDays() * this.signum);
        int calendarTimeInMillis = (int) ((getCalendarTimeInMillis(calendar2) - getCalendarTimeInMillis(calendar)) / 86400000);
        return new DurationImpl(calendarTimeInMillis >= 0, (BigInteger) null, (BigInteger) null, wrap(Math.abs(calendarTimeInMillis)), (BigInteger) getField(DatatypeConstants.HOURS), (BigInteger) getField(DatatypeConstants.MINUTES), (BigDecimal) getField(DatatypeConstants.SECONDS));
    }

    public int signum() {
        return this.signum;
    }

    @Override // javax.xml.datatype.Duration
    public Duration subtract(Duration duration) {
        return add(duration.negate());
    }

    @Override // javax.xml.datatype.Duration
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.signum < 0) {
            stringBuffer.append('-');
        }
        stringBuffer.append('P');
        if (this.years != null) {
            stringBuffer.append(this.years + "Y");
        }
        if (this.months != null) {
            stringBuffer.append(this.months + "M");
        }
        if (this.days != null) {
            stringBuffer.append(this.days + SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        }
        if (this.hours != null || this.minutes != null || this.seconds != null) {
            stringBuffer.append('T');
            if (this.hours != null) {
                stringBuffer.append(this.hours + "H");
            }
            if (this.minutes != null) {
                stringBuffer.append(this.minutes + "M");
            }
            if (this.seconds != null) {
                stringBuffer.append(toString(this.seconds) + "S");
            }
        }
        return stringBuffer.toString();
    }

    @Override // javax.xml.datatype.Duration
    public Duration multiply(BigDecimal bigDecimal) {
        BigDecimal bigDecimal2 = ZERO;
        int signum = bigDecimal.signum();
        BigDecimal abs = bigDecimal.abs();
        BigDecimal[] bigDecimalArr = new BigDecimal[6];
        for (int i = 0; i < 5; i++) {
            BigDecimal add = getFieldAsBigDecimal(FIELDS[i]).multiply(abs).add(bigDecimal2);
            BigDecimal scale = add.setScale(0, 1);
            bigDecimalArr[i] = scale;
            BigDecimal subtract = add.subtract(scale);
            if (i == 1) {
                if (subtract.signum() == 0) {
                    bigDecimal2 = ZERO;
                } else {
                    throw new IllegalStateException();
                }
            } else {
                bigDecimal2 = subtract.multiply(FACTORS[i]);
            }
        }
        BigDecimal bigDecimal3 = this.seconds;
        if (bigDecimal3 != null) {
            bigDecimalArr[5] = bigDecimal3.multiply(abs).add(bigDecimal2);
        } else {
            bigDecimalArr[5] = bigDecimal2;
        }
        return new DurationImpl(this.signum * signum >= 0, toBigInteger(bigDecimalArr[0], this.years == null), toBigInteger(bigDecimalArr[1], this.months == null), toBigInteger(bigDecimalArr[2], this.days == null), toBigInteger(bigDecimalArr[3], this.hours == null), toBigInteger(bigDecimalArr[4], this.minutes == null), (bigDecimalArr[5].signum() == 0 && this.seconds == null) ? null : bigDecimalArr[5]);
    }

    private static void testNonNegative(BigDecimal bigDecimal, DatatypeConstants.Field field) {
        if (bigDecimal != null && bigDecimal.signum() < 0) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "NegativeField", new Object[]{field.toString()}));
        }
    }

    public static BigDecimal sanitize(BigDecimal bigDecimal, int i) {
        if (i == 0 || bigDecimal == null) {
            return ZERO;
        }
        return i > 0 ? bigDecimal : bigDecimal.negate();
    }

    @Override // javax.xml.datatype.Duration
    public long getTimeInMillis(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        addTo(gregorianCalendar);
        return getCalendarTimeInMillis(gregorianCalendar) - date.getTime();
    }

    @Override // javax.xml.datatype.Duration
    public void addTo(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        addTo(gregorianCalendar);
        date.setTime(getCalendarTimeInMillis(gregorianCalendar));
    }

    public DurationImpl(boolean z, int i, int i2, int i3, int i4, int i5, int i6) {
        this(z, wrap(i), wrap(i2), wrap(i3), wrap(i4), wrap(i5), i6 != 0 ? new BigDecimal(String.valueOf(i6)) : null);
    }

    public DurationImpl(long j) {
        if (j > 0) {
            this.signum = 1;
        } else if (j < 0) {
            this.signum = -1;
            j = (j == Long.MIN_VALUE ? j + 1 : j) * (-1);
        } else {
            this.signum = 0;
        }
        new GregorianCalendar(GMT).setTimeInMillis(j);
        this.years = BigInteger.valueOf(r0.get(1) - 1970);
        this.months = BigInteger.valueOf(r0.get(2));
        this.days = BigInteger.valueOf(r0.get(5) - 1);
        this.hours = BigInteger.valueOf(r0.get(11));
        this.minutes = BigInteger.valueOf(r0.get(12));
        this.seconds = BigDecimal.valueOf((r0.get(13) * 1000) + r0.get(14), 3);
    }

    private String toString(BigDecimal bigDecimal) {
        StringBuffer stringBuffer;
        String bigInteger = bigDecimal.unscaledValue().toString();
        int scale = bigDecimal.scale();
        if (scale == 0) {
            return bigInteger;
        }
        int length = bigInteger.length() - scale;
        if (length == 0) {
            return "0." + bigInteger;
        }
        if (length > 0) {
            stringBuffer = new StringBuffer(bigInteger);
            stringBuffer.insert(length, '.');
        } else {
            StringBuffer stringBuffer2 = new StringBuffer((3 - length) + bigInteger.length());
            stringBuffer2.append("0.");
            for (int i = 0; i < (-length); i++) {
                stringBuffer2.append('0');
            }
            stringBuffer2.append(bigInteger);
            stringBuffer = stringBuffer2;
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009c, code lost:
    
        if (r14 == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a4, code lost:
    
        throw new java.lang.IllegalArgumentException(r18);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DurationImpl(java.lang.String r18) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.jaxp.datatype.DurationImpl.<init>(java.lang.String):void");
    }
}
