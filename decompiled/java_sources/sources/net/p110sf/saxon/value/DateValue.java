package net.p110sf.saxon.value;

import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import java.time.LocalDate;
import java.time.temporal.WeekFields;
import java.util.GregorianCalendar;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationException;

/* loaded from: classes11.dex */
public class DateValue extends GDateValue implements XPathComparable {
    public DateValue() {
    }

    public static DateValue dateFromJulianDayNumber(int i) {
        if (i < 0) {
            r6.year -= 12000;
            return dateFromJulianDayNumber((((i + 4380000) + 3000) - 120) + 30);
        }
        int i2 = i + 68569 + 1;
        int i3 = (i2 * 4) / 146097;
        int i4 = i2 - (((146097 * i3) + 3) / 4);
        int i5 = ((i4 + 1) * 4000) / 1461001;
        int i6 = (i4 - ((i5 * 1461) / 4)) + 31;
        int i7 = (i6 * 80) / 2447;
        int i8 = i7 / 11;
        return new DateValue(((i3 - 49) * 100) + i5 + i8, (byte) ((i7 + 2) - (i8 * 12)), (byte) (i6 - ((i7 * 2447) / 80)), true);
    }

    public static int getDayOfWeek(int i, int i2, int i3) {
        int julianDayNumber = getJulianDayNumber(i, i2, i3) - 2378500;
        while (julianDayNumber <= 0) {
            julianDayNumber += 70000000;
        }
        return ((julianDayNumber - 1) % 7) + 1;
    }

    public static int getDayWithinYear(int i, int i2, int i3) {
        return (getJulianDayNumber(i, i2, i3) - getJulianDayNumber(i, 1, 1)) + 1;
    }

    public static int getJulianDayNumber(int i, int i2, int i3) {
        int i4 = i - (i2 < 3 ? 1 : 0);
        short s = GDateValue.monthData[i2 - 1];
        if (i4 >= 0) {
            return ((((i3 + s) + (i4 * 365)) + (i4 / 4)) - (i4 / 100)) + (i4 / 400) + 1721118;
        }
        int i5 = i4 + CharsToNameCanonicalizer.f21320b;
        return ((((((i3 + s) + (i5 * 365)) + (i5 / 4)) - (i5 / 100)) + (i5 / 400)) + 1721118) - 4382910;
    }

    public static int getWeekNumber(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3).get(WeekFields.ISO.weekOfWeekBasedYear());
    }

    public static int getWeekNumberWithinMonth(int i, int i2, int i3) {
        int dayOfWeek = getDayOfWeek(i, i2, 1);
        if (dayOfWeek <= 4 || dayOfWeek + i3 > 8) {
            return (((i3 + dayOfWeek) - 2) / 7) + (dayOfWeek >= 5 ? 0 : 1);
        }
        DateValue yesterday = yesterday(i, (byte) i2, (byte) 1);
        return getWeekNumberWithinMonth(yesterday.year, yesterday.month, yesterday.day);
    }

    public static ConversionResult makeDateValue(UnicodeString unicodeString, ConversionRules conversionRules) {
        DateValue dateValue = new DateValue();
        dateValue.typeLabel = BuiltInAtomicType.DATE;
        return GDateValue.setLexicalValue(dateValue, unicodeString, conversionRules.isAllowYearZero());
    }

    public static DateValue tomorrow(int i, byte b, byte b2) {
        int i2 = b2 + 1;
        return GDateValue.isValidDate(i, b, i2) ? new DateValue(i, b, (byte) i2, true) : b < 12 ? new DateValue(i, (byte) (b + 1), (byte) 1, true) : new DateValue(i + 1, (byte) 1, (byte) 1, true);
    }

    public static DateValue yesterday(int i, byte b, byte b2) {
        return b2 > 1 ? new DateValue(i, b, (byte) (b2 - 1), true) : b > 1 ? (b == 3 && GDateValue.isLeapYear(i)) ? new DateValue(i, (byte) 2, (byte) 29, true) : new DateValue(i, (byte) (b - 1), GDateValue.daysPerMonth[b - 2], true) : new DateValue(i - 1, (byte) 12, (byte) 31, true);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        DateValue dateValue = new DateValue(this.year, this.month, this.day, getTimezoneInMinutes(), this.hasNoYearZero);
        dateValue.typeLabel = atomicType;
        return dateValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        if (hasTimezone()) {
            if (getTimezoneInMinutes() > 720) {
                this = adjustTimezone(getTimezoneInMinutes() - 1440);
            } else if (getTimezoneInMinutes() <= -720) {
                this = adjustTimezone(getTimezoneInMinutes() + 1440);
            }
        }
        return this.getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        int i;
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        int i2 = this.year;
        if (i2 <= 0 && (i2 = (-i2) + (this.hasNoYearZero ? 1 : 0)) != 0) {
            unicodeBuilder.append('-');
        }
        if (i2 > 9999) {
            i = (i2 + "").length();
        } else {
            i = 4;
        }
        CalendarValue.appendString(unicodeBuilder, i2, i);
        unicodeBuilder.append('-');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.month);
        unicodeBuilder.append('-');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.day);
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.DATE;
    }

    @Override // net.p110sf.saxon.value.GDateValue, net.p110sf.saxon.value.CalendarValue, net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        if (hasTimezone()) {
            return this;
        }
        if (i != Integer.MAX_VALUE) {
            return adjustTimezone(i);
        }
        throw new NoDynamicContextException("Unknown implicit timezone");
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DayTimeDurationValue subtract(CalendarValue calendarValue, XPathContext xPathContext) throws XPathException {
        if (calendarValue instanceof DateValue) {
            return super.subtract(calendarValue, xPathContext);
        }
        XPathException xPathException = new XPathException("First operand of '-' is a date, but the second is not");
        xPathException.setIsTypeError(true);
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    public LocalDate toLocalDate() {
        return LocalDate.of(getYear(), getMonth(), getDay());
    }

    public DateValue(int i, byte b, byte b2) {
        this.hasNoYearZero = true;
        this.year = i;
        this.month = b;
        this.day = b2;
        this.typeLabel = BuiltInAtomicType.DATE;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateValue add(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof DayTimeDurationValue) {
            long lengthInMicroseconds = ((DayTimeDurationValue) durationValue).getLengthInMicroseconds();
            boolean z = lengthInMicroseconds < 0;
            long abs = Math.abs(lengthInMicroseconds);
            int floor = (int) Math.floor(abs / 8.64E10d);
            boolean z2 = abs % 86400000000L > 0;
            int julianDayNumber = getJulianDayNumber();
            if (z) {
                floor = -floor;
            }
            DateValue dateFromJulianDayNumber = dateFromJulianDayNumber(julianDayNumber + floor);
            if (z2 && z) {
                dateFromJulianDayNumber = yesterday(dateFromJulianDayNumber.year, dateFromJulianDayNumber.month, dateFromJulianDayNumber.day);
            }
            dateFromJulianDayNumber.setTimezoneInMinutes(getTimezoneInMinutes());
            dateFromJulianDayNumber.hasNoYearZero = this.hasNoYearZero;
            return dateFromJulianDayNumber;
        }
        if (durationValue instanceof YearMonthDurationValue) {
            int lengthInMonths = (this.month - 1) + ((YearMonthDurationValue) durationValue).getLengthInMonths();
            int i = this.year + (lengthInMonths / 12);
            int i2 = lengthInMonths % 12;
            if (i2 < 0) {
                i2 += 12;
                i--;
            }
            int i3 = i;
            int i4 = i2 + 1;
            int i5 = this.day;
            while (!GDateValue.isValidDate(i3, i4, i5)) {
                i5--;
            }
            return new DateValue(i3, (byte) i4, (byte) i5, getTimezoneInMinutes(), this.hasNoYearZero);
        }
        XPathException xPathException = new XPathException("Date arithmetic is not available for xs:duration, only for its subtypes");
        xPathException.setIsTypeError(true);
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new DateValue(adjustTimezone.getYear(), adjustTimezone.getMonth(), adjustTimezone.getDay(), adjustTimezone.getTimezoneInMinutes(), this.hasNoYearZero);
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof DateValue) {
            try {
                return compareTo((DateValue) xPathComparable, Integer.MAX_VALUE);
            } catch (Exception unused) {
                throw new ClassCastException("Date comparison requires access to implicit timezone");
            }
        }
        throw new ClassCastException("Cannot compare xs:date to " + xPathComparable.toString());
    }

    public int getJulianDayNumber() {
        return getJulianDayNumber(this.year, this.month, this.day);
    }

    public DateValue(int i, byte b, byte b2, boolean z) {
        this.hasNoYearZero = z;
        this.year = i;
        this.month = b;
        this.day = b2;
        this.typeLabel = BuiltInAtomicType.DATE;
    }

    public DateValue(int i, byte b, byte b2, int i2, boolean z) {
        this.hasNoYearZero = z;
        this.year = i;
        this.month = b;
        this.day = b2;
        setTimezoneInMinutes(i2);
        this.typeLabel = BuiltInAtomicType.DATE;
    }

    public DateValue(int i, byte b, byte b2, int i2, AtomicType atomicType) {
        this.year = i;
        this.month = b;
        this.day = b2;
        setTimezoneInMinutes(i2);
        this.typeLabel = atomicType;
    }

    public DateValue(UnicodeString unicodeString) throws ValidationException {
        this(unicodeString, ConversionRules.DEFAULT);
    }

    public DateValue(UnicodeString unicodeString, ConversionRules conversionRules) throws ValidationException {
        GDateValue.setLexicalValue(this, unicodeString, conversionRules.isAllowYearZero()).asAtomic();
        this.typeLabel = BuiltInAtomicType.DATE;
    }

    public DateValue(LocalDate localDate) {
        this(localDate.getYear(), (byte) localDate.getMonthValue(), (byte) localDate.getDayOfMonth());
    }

    public DateValue(GregorianCalendar gregorianCalendar, int i) {
        int i2 = gregorianCalendar.get(0);
        int i3 = gregorianCalendar.get(1);
        this.year = i3;
        if (i2 == 0) {
            this.year = 1 - i3;
        }
        this.month = (byte) (gregorianCalendar.get(2) + 1);
        this.day = (byte) gregorianCalendar.get(5);
        setTimezoneInMinutes(i);
        this.typeLabel = BuiltInAtomicType.DATE;
    }
}
