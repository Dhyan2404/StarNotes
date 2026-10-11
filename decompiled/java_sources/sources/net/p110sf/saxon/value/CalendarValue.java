package net.p110sf.saxon.value;

import java.util.GregorianCalendar;
import javax.xml.datatype.XMLGregorianCalendar;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public abstract class CalendarValue extends AtomicValue implements AtomicMatchKey {
    public static final int MISSING_TIMEZONE = Integer.MAX_VALUE;
    public static final int NO_TIMEZONE = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f102849e = Integer.MIN_VALUE;

    /* renamed from: net.sf.saxon.value.CalendarValue$a */
    /* loaded from: classes11.dex */
    public static class C18565a implements AtomicMatchKey {

        /* renamed from: e */
        public final CalendarValue f102850e;

        public C18565a(CalendarValue calendarValue) {
            this.f102850e = calendarValue;
        }

        @Override // net.p110sf.saxon.expr.sort.AtomicMatchKey
        public AtomicValue asAtomic() {
            return this.f102850e;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C18565a) {
                CalendarValue calendarValue = this.f102850e;
                CalendarValue calendarValue2 = ((C18565a) obj).f102850e;
                if (calendarValue.hasTimezone() == calendarValue2.hasTimezone()) {
                    return calendarValue.hasTimezone() ? calendarValue.adjustTimezone(calendarValue2.f102849e).isIdentical((AtomicValue) calendarValue2) : calendarValue.isIdentical((AtomicValue) calendarValue2);
                }
            }
            return false;
        }

        public int hashCode() {
            return asAtomic().hashCode();
        }
    }

    public static void appendString(UnicodeBuilder unicodeBuilder, int i, int i2) {
        String str = "000000000" + i;
        unicodeBuilder.append(str.substring(str.length() - i2));
    }

    public static void appendTwoDigits(UnicodeBuilder unicodeBuilder, int i) {
        unicodeBuilder.append((char) ((i / 10) + 48));
        unicodeBuilder.append((char) ((i % 10) + 48));
    }

    public static ConversionResult makeCalendarValue(UnicodeString unicodeString, ConversionRules conversionRules) {
        ConversionResult makeDateTimeValue = DateTimeValue.makeDateTimeValue(unicodeString, conversionRules);
        ConversionResult makeDateValue = makeDateTimeValue instanceof ValidationFailure ? DateValue.makeDateValue(unicodeString, conversionRules) : makeDateTimeValue;
        if (makeDateValue instanceof ValidationFailure) {
            makeDateValue = TimeValue.makeTimeValue(unicodeString);
        }
        if (makeDateValue instanceof ValidationFailure) {
            makeDateValue = GYearValue.makeGYearValue(unicodeString, conversionRules);
        }
        if (makeDateValue instanceof ValidationFailure) {
            makeDateValue = GYearMonthValue.makeGYearMonthValue(unicodeString, conversionRules);
        }
        if (makeDateValue instanceof ValidationFailure) {
            makeDateValue = GMonthValue.makeGMonthValue(unicodeString);
        }
        if (makeDateValue instanceof ValidationFailure) {
            makeDateValue = GMonthDayValue.makeGMonthDayValue(unicodeString);
        }
        if (makeDateValue instanceof ValidationFailure) {
            makeDateValue = GDayValue.makeGDayValue(unicodeString);
        }
        return makeDateValue instanceof ValidationFailure ? makeDateTimeValue : makeDateValue;
    }

    public abstract CalendarValue add(DurationValue durationValue) throws XPathException;

    public abstract CalendarValue adjustTimezone(int i);

    public final CalendarValue adjustTimezone(DayTimeDurationValue dayTimeDurationValue) throws XPathException {
        long lengthInMicroseconds = dayTimeDurationValue.getLengthInMicroseconds();
        if (lengthInMicroseconds % 60000000 == 0) {
            int i = (int) (lengthInMicroseconds / 60000000);
            if (Math.abs(i) <= 840) {
                return adjustTimezone(i);
            }
            XPathException xPathException = new XPathException("Timezone out of range (-14:00 to +14:00)");
            xPathException.setErrorCode("FODT0003");
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException("Timezone is not an integral number of minutes");
        xPathException2.setErrorCode("FODT0003");
        throw xPathException2;
    }

    public final void appendTimezone(UnicodeBuilder unicodeBuilder) {
        if (hasTimezone()) {
            appendTimezone(getTimezoneInMinutes(), unicodeBuilder);
        }
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey asMapKey() {
        return new C18565a(this);
    }

    public abstract int compareTo(CalendarValue calendarValue, int i) throws NoDynamicContextException;

    public abstract GregorianCalendar getCalendar();

    public final int getTimezoneInMinutes() {
        return this.f102849e;
    }

    public XMLGregorianCalendar getXMLGregorianCalendar() {
        return new SaxonXMLGregorianCalendar(this);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return null;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) throws NoDynamicContextException {
        if (hasTimezone()) {
            return this;
        }
        if (i != Integer.MAX_VALUE) {
            return hasTimezone() ? this : adjustTimezone(i);
        }
        throw new NoDynamicContextException("Unknown implicit timezone");
    }

    public final boolean hasTimezone() {
        return this.f102849e != Integer.MIN_VALUE;
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.IdentityComparable
    public int identityHashCode() {
        return this.f102849e ^ hashCode();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return super.isIdentical(atomicValue) && this.f102849e == ((CalendarValue) atomicValue).f102849e;
    }

    public final CalendarValue removeTimezone() {
        CalendarValue calendarValue = (CalendarValue) copyAsSubType(this.typeLabel);
        calendarValue.f102849e = Integer.MIN_VALUE;
        return calendarValue;
    }

    public final void setTimezoneInMinutes(int i) {
        this.f102849e = i;
    }

    public DayTimeDurationValue subtract(CalendarValue calendarValue, XPathContext xPathContext) throws XPathException {
        int implicitTimezone;
        DateTimeValue dateTime = toDateTime();
        DateTimeValue dateTime2 = calendarValue.toDateTime();
        if (dateTime.getTimezoneInMinutes() != dateTime2.getTimezoneInMinutes()) {
            if (xPathContext == null || (implicitTimezone = xPathContext.getImplicitTimezone()) == Integer.MAX_VALUE) {
                throw new NoDynamicContextException("Implicit timezone required");
            }
            dateTime = dateTime.adjustToUTC(implicitTimezone);
            dateTime2 = dateTime2.adjustToUTC(implicitTimezone);
        }
        return DayTimeDurationValue.fromSeconds(dateTime.toJulianInstant().subtract(dateTime2.toJulianInstant()));
    }

    public abstract DateTimeValue toDateTime();

    public static void appendTimezone(int i, UnicodeBuilder unicodeBuilder) {
        if (i == 0) {
            unicodeBuilder.append('Z');
            return;
        }
        unicodeBuilder.append(i > 0 ? "+" : "-");
        int abs = Math.abs(i);
        appendTwoDigits(unicodeBuilder, abs / 60);
        unicodeBuilder.append(':');
        appendTwoDigits(unicodeBuilder, abs % 60);
    }
}
