package net.p110sf.saxon.value;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;
import java.util.StringTokenizer;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public abstract class GDateValue extends CalendarValue {
    protected static byte[] daysPerMonth = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    protected static final short[] monthData = {306, 337, 0, 31, 61, 92, 122, 153, 184, 214, 245, 275};
    protected byte day;
    protected boolean hasNoYearZero;
    protected byte month;
    protected int year;

    /* loaded from: classes11.dex */
    public static class GDateComparable implements Comparable<GDateComparable> {

        /* renamed from: e */
        public final GDateValue f102883e;

        public GDateComparable(GDateValue gDateValue) {
            this.f102883e = gDateValue;
        }

        public GDateValue asGDateValue() {
            return this.f102883e;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GDateComparable) && compareTo((GDateComparable) obj) == 0;
        }

        public int hashCode() {
            return this.f102883e.toDateTime().getSchemaComparable().hashCode();
        }

        @Override // java.lang.Comparable
        public int compareTo(GDateComparable gDateComparable) {
            if (asGDateValue().getPrimitiveType() != gDateComparable.asGDateValue().getPrimitiveType()) {
                return Integer.MIN_VALUE;
            }
            return this.f102883e.toDateTime().getSchemaComparable().compareTo(gDateComparable.f102883e.toDateTime().getSchemaComparable());
        }
    }

    /* renamed from: net.sf.saxon.value.GDateValue$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18568a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102884a;

        static {
            int[] iArr = new int[AccessorFn.Component.values().length];
            f102884a = iArr;
            try {
                iArr[AccessorFn.Component.YEAR_ALLOWING_ZERO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102884a[AccessorFn.Component.YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102884a[AccessorFn.Component.MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102884a[AccessorFn.Component.DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102884a[AccessorFn.Component.TIMEZONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: b */
    public static ValidationFailure m64669b(String str, UnicodeString unicodeString) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid date " + Err.wrap(unicodeString, 4) + " (" + str + MotionUtils.f31762d);
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    /* renamed from: c */
    public static ValidationFailure m64670c(String str, UnicodeString unicodeString, String str2) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid date " + Err.wrap(unicodeString, 4) + " (" + str + MotionUtils.f31762d);
        validationFailure.setErrorCode(str2);
        return validationFailure;
    }

    public static boolean isLeapYear(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % 400 == 0);
    }

    public static boolean isValidDate(int i, int i2, int i3) {
        return (i2 > 0 && i2 <= 12 && i3 > 0 && i3 <= daysPerMonth[i2 + (-1)]) || (i2 == 2 && i3 == 29 && isLeapYear(i));
    }

    public static ConversionResult setLexicalValue(GDateValue gDateValue, UnicodeString unicodeString, boolean z) {
        int i;
        gDateValue.hasNoYearZero = !z;
        StringTokenizer stringTokenizer = new StringTokenizer(Whitespace.trim(unicodeString).toString(), "-:+TZ", true);
        try {
            if (!stringTokenizer.hasMoreTokens()) {
                return m64669b("Too short", unicodeString);
            }
            String nextToken = stringTokenizer.nextToken();
            if ("+".equals(nextToken)) {
                return m64669b("Date must not start with '+' sign", unicodeString);
            }
            if (!"-".equals(nextToken)) {
                i = 1;
            } else {
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64669b("No year after '-'", unicodeString);
                }
                nextToken = stringTokenizer.nextToken();
                i = -1;
            }
            if (nextToken.length() < 4) {
                return m64669b("Year is less than four digits", unicodeString);
            }
            if (nextToken.length() > 4 && nextToken.charAt(0) == '0') {
                return m64669b("When year exceeds 4 digits, leading zeroes are not allowed", unicodeString);
            }
            int simpleInteger = DurationValue.simpleInteger(nextToken);
            if (simpleInteger < 0) {
                return simpleInteger == -1 ? m64669b("Non-numeric year component", unicodeString) : m64670c("Year is outside the range that Saxon can handle", unicodeString, "FODT0001");
            }
            int i2 = simpleInteger * i;
            gDateValue.year = i2;
            if (i2 == 0 && !z) {
                return m64669b("Year zero is not allowed", unicodeString);
            }
            if (i < 0 && !z) {
                gDateValue.year = i2 + 1;
            }
            if (!stringTokenizer.hasMoreTokens()) {
                return m64669b("Too short", unicodeString);
            }
            if (!"-".equals(stringTokenizer.nextToken())) {
                return m64669b("Wrong delimiter after year", unicodeString);
            }
            if (!stringTokenizer.hasMoreTokens()) {
                return m64669b("Too short", unicodeString);
            }
            String nextToken2 = stringTokenizer.nextToken();
            if (nextToken2.length() != 2) {
                return m64669b("Month must be two digits", unicodeString);
            }
            int simpleInteger2 = DurationValue.simpleInteger(nextToken2);
            if (simpleInteger2 < 0) {
                return m64669b("Non-numeric month component", unicodeString);
            }
            byte b = (byte) simpleInteger2;
            gDateValue.month = b;
            if (b >= 1 && b <= 12) {
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64669b("Too short", unicodeString);
                }
                if (!"-".equals(stringTokenizer.nextToken())) {
                    return m64669b("Wrong delimiter after month", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64669b("Too short", unicodeString);
                }
                String nextToken3 = stringTokenizer.nextToken();
                if (nextToken3.length() != 2) {
                    return m64669b("Day must be two digits", unicodeString);
                }
                int simpleInteger3 = DurationValue.simpleInteger(nextToken3);
                if (simpleInteger3 < 0) {
                    return m64669b("Non-numeric day component", unicodeString);
                }
                byte b2 = (byte) simpleInteger3;
                gDateValue.day = b2;
                if (b2 >= 1 && b2 <= 31) {
                    if (stringTokenizer.hasMoreTokens()) {
                        String nextToken4 = stringTokenizer.nextToken();
                        if ("T".equals(nextToken4)) {
                            return m64669b("Value includes time", unicodeString);
                        }
                        if (!Constants.HASIDCALL_INDEX_SIG.equals(nextToken4)) {
                            if (!"+".equals(nextToken4) && !"-".equals(nextToken4)) {
                                return m64669b("Timezone format is incorrect", unicodeString);
                            }
                            if (!stringTokenizer.hasMoreTokens()) {
                                return m64669b("Missing timezone", unicodeString);
                            }
                            String nextToken5 = stringTokenizer.nextToken();
                            int simpleInteger4 = DurationValue.simpleInteger(nextToken5);
                            if (simpleInteger4 < 0) {
                                return m64669b("Non-numeric timezone hour component", unicodeString);
                            }
                            if (nextToken5.length() != 2) {
                                return m64669b("Timezone hour must be two digits", unicodeString);
                            }
                            if (simpleInteger4 > 14) {
                                return m64669b("Timezone hour is out of range", unicodeString);
                            }
                            if (!stringTokenizer.hasMoreTokens()) {
                                return m64669b("No minutes in timezone", unicodeString);
                            }
                            if (!":".equals(stringTokenizer.nextToken())) {
                                return m64669b("Wrong delimiter after timezone hour", unicodeString);
                            }
                            if (!stringTokenizer.hasMoreTokens()) {
                                return m64669b("No minutes in timezone", unicodeString);
                            }
                            String nextToken6 = stringTokenizer.nextToken();
                            int simpleInteger5 = DurationValue.simpleInteger(nextToken6);
                            if (simpleInteger5 < 0) {
                                return m64669b("Non-numeric timezone minute component", unicodeString);
                            }
                            if (nextToken6.length() != 2) {
                                return m64669b("Timezone minute must be two digits", unicodeString);
                            }
                            if (simpleInteger5 > 59) {
                                return m64669b("Timezone minute is out of range", unicodeString);
                            }
                            if (stringTokenizer.hasMoreTokens()) {
                                return m64669b("Continues after timezone", unicodeString);
                            }
                            int i3 = (simpleInteger4 * 60) + simpleInteger5;
                            if ("-".equals(nextToken4)) {
                                i3 = -i3;
                            }
                            gDateValue.setTimezoneInMinutes(i3);
                        } else {
                            if (stringTokenizer.hasMoreTokens()) {
                                return m64669b("Continues after 'Z'", unicodeString);
                            }
                            gDateValue.setTimezoneInMinutes(0);
                        }
                    }
                    return !isValidDate(gDateValue.year, gDateValue.month, gDateValue.day) ? m64669b("Non-existent date", unicodeString) : gDateValue;
                }
                return m64669b("Day is out of range", unicodeString);
            }
            return m64669b("Month is out of range", unicodeString);
        } catch (NumberFormatException unused) {
            return m64669b("Non-numeric component", unicodeString);
        }
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public void checkValidInJavascript() throws XPathException {
        int i = this.year;
        if (i <= 0 || i > 9999) {
            throw new XPathException("Year out of range for SaxonJS", "FODT0001");
        }
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public int compareTo(CalendarValue calendarValue, int i) throws NoDynamicContextException {
        if (getPrimitiveType() != calendarValue.getPrimitiveType()) {
            throw new ClassCastException("Cannot compare dates of different types");
        }
        GDateValue gDateValue = (GDateValue) calendarValue;
        if (getTimezoneInMinutes() != calendarValue.getTimezoneInMinutes()) {
            return toDateTime().compareTo(calendarValue.toDateTime(), i);
        }
        int i2 = this.year;
        int i3 = gDateValue.year;
        if (i2 != i3) {
            return IntegerValue.signum(i2 - i3);
        }
        byte b = this.month;
        byte b2 = gDateValue.month;
        if (b != b2) {
            return IntegerValue.signum(b - b2);
        }
        byte b3 = this.day;
        byte b4 = gDateValue.day;
        if (b3 != b4) {
            return IntegerValue.signum(b3 - b4);
        }
        return 0;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        if (!(obj instanceof GDateValue)) {
            return false;
        }
        GDateValue gDateValue = (GDateValue) obj;
        return getPrimitiveType() == gDateValue.getPrimitiveType() && toDateTime().equals(gDateValue.toDateTime());
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public GregorianCalendar getCalendar() {
        int timezoneInMinutes = hasTimezone() ? getTimezoneInMinutes() * 60000 : 0;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(new SimpleTimeZone(timezoneInMinutes, "LLL"));
        gregorianCalendar.setGregorianChange(new Date(Long.MIN_VALUE));
        if (timezoneInMinutes < gregorianCalendar.getMinimum(15) || timezoneInMinutes > gregorianCalendar.getMaximum(15)) {
            return adjustTimezone(0).getCalendar();
        }
        gregorianCalendar.clear();
        gregorianCalendar.setLenient(false);
        int i = this.year;
        if (i <= 0) {
            i = this.hasNoYearZero ? 1 - i : 0 - i;
            gregorianCalendar.set(0, 0);
        }
        gregorianCalendar.set(i, this.month - 1, this.day);
        gregorianCalendar.set(15, timezoneInMinutes);
        gregorianCalendar.set(16, 0);
        gregorianCalendar.getTime();
        return gregorianCalendar;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue getComponent(AccessorFn.Component component) throws XPathException {
        int i = C18568a.f102884a[component.ordinal()];
        if (i == 1) {
            return Int64Value.makeIntegerValue(this.year);
        }
        if (i == 2) {
            int i2 = this.year;
            if (i2 <= 0 && this.hasNoYearZero) {
                i2--;
            }
            return Int64Value.makeIntegerValue(i2);
        }
        if (i == 3) {
            return Int64Value.makeIntegerValue(this.month);
        }
        if (i == 4) {
            return Int64Value.makeIntegerValue(this.day);
        }
        if (i == 5) {
            if (hasTimezone()) {
                return DayTimeDurationValue.fromMilliseconds(getTimezoneInMinutes() * 60000);
            }
            return null;
        }
        throw new IllegalArgumentException("Unknown component for date: " + component);
    }

    public byte getDay() {
        return this.day;
    }

    public byte getMonth() {
        return this.month;
    }

    public GDateComparable getSchemaComparable() {
        return new GDateComparable(this);
    }

    @Override // net.p110sf.saxon.value.CalendarValue, net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return null;
    }

    public int getYear() {
        return this.year;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return DateTimeValue.computeHashCode(this.year, this.month, this.day, (byte) 12, (byte) 0, (byte) 0, 0, getTimezoneInMinutes());
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateTimeValue toDateTime() {
        return new DateTimeValue(this.year, this.month, this.day, (byte) 0, (byte) 0, (byte) 0, 0, getTimezoneInMinutes(), this.hasNoYearZero);
    }
}
