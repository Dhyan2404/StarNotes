package net.p110sf.saxon.value;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;
import java.util.StringTokenizer;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;
import org.apache.poi.hwmf.usermodel.HwmfPicture;

/* loaded from: classes11.dex */
public final class TimeValue extends CalendarValue implements XPathComparable {

    /* renamed from: f */
    public byte f102933f;

    /* renamed from: g */
    public byte f102934g;

    /* renamed from: h */
    public byte f102935h;

    /* renamed from: i */
    public int f102936i;

    /* loaded from: classes11.dex */
    public static class TimeComparable implements Comparable<TimeComparable> {

        /* renamed from: e */
        public final TimeValue f102937e;

        public TimeComparable(TimeValue timeValue) {
            this.f102937e = timeValue;
        }

        public TimeValue asTimeValue() {
            return this.f102937e;
        }

        public boolean equals(Object obj) {
            return (obj instanceof TimeComparable) && compareTo((TimeComparable) obj) == 0;
        }

        public int hashCode() {
            return this.f102937e.toDateTime().getSchemaComparable().hashCode();
        }

        @Override // java.lang.Comparable
        public int compareTo(TimeComparable timeComparable) {
            return asTimeValue().toDateTime().getSchemaComparable().compareTo(timeComparable.asTimeValue().toDateTime().getSchemaComparable());
        }
    }

    /* renamed from: net.sf.saxon.value.TimeValue$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18574a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102938a;

        static {
            int[] iArr = new int[AccessorFn.Component.values().length];
            f102938a = iArr;
            try {
                iArr[AccessorFn.Component.HOURS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102938a[AccessorFn.Component.MINUTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102938a[AccessorFn.Component.SECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102938a[AccessorFn.Component.WHOLE_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102938a[AccessorFn.Component.MICROSECONDS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f102938a[AccessorFn.Component.NANOSECONDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f102938a[AccessorFn.Component.TIMEZONE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public TimeValue() {
    }

    /* renamed from: b */
    public static ValidationFailure m64683b(String str, UnicodeString unicodeString) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid time " + Err.wrap(unicodeString, 4) + " (" + str + MotionUtils.f31762d);
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        TimeValue timeValue = new TimeValue(this.f102933f, this.f102934g, this.f102935h, this.f102936i, getTimezoneInMinutes(), "");
        timeValue.typeLabel = atomicType;
        return timeValue;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof TimeValue) && compareTo((XPathComparable) obj) == 0;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public GregorianCalendar getCalendar() {
        int timezoneInMinutes = hasTimezone() ? getTimezoneInMinutes() * 60000 : 0;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(new SimpleTimeZone(timezoneInMinutes, "LLL"));
        gregorianCalendar.setLenient(false);
        if (timezoneInMinutes < gregorianCalendar.getMinimum(15) || timezoneInMinutes > gregorianCalendar.getMaximum(15)) {
            return adjustTimezone(0).getCalendar();
        }
        gregorianCalendar.set(1972, 11, 31, this.f102933f, this.f102934g, this.f102935h);
        gregorianCalendar.set(14, this.f102936i / 1000000);
        gregorianCalendar.set(15, timezoneInMinutes);
        gregorianCalendar.set(16, 0);
        gregorianCalendar.getTime();
        return gregorianCalendar;
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return (!hasTimezone() || getTimezoneInMinutes() == 0) ? getUnicodeStringValue() : adjustTimezone(0).getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue getComponent(AccessorFn.Component component) throws XPathException {
        switch (C18574a.f102938a[component.ordinal()]) {
            case 1:
                return Int64Value.makeIntegerValue(this.f102933f);
            case 2:
                return Int64Value.makeIntegerValue(this.f102934g);
            case 3:
                return new BigDecimalValue(BigDecimal.valueOf(this.f102936i).divide(BigDecimalValue.BIG_DECIMAL_ONE_BILLION, 6, RoundingMode.HALF_UP).add(BigDecimal.valueOf(this.f102935h)));
            case 4:
                return Int64Value.makeIntegerValue(this.f102935h);
            case 5:
                return new Int64Value(this.f102936i / 1000);
            case 6:
                return new Int64Value(this.f102936i);
            case 7:
                if (hasTimezone()) {
                    return DayTimeDurationValue.fromMilliseconds(getTimezoneInMinutes() * 60000);
                }
                return null;
            default:
                throw new IllegalArgumentException("Unknown component for time: " + component);
        }
    }

    public byte getHour() {
        return this.f102933f;
    }

    public int getMicrosecond() {
        return this.f102936i / 1000;
    }

    public byte getMinute() {
        return this.f102934g;
    }

    public int getNanosecond() {
        return this.f102936i;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102933f);
        unicodeBuilder.append(':');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102934g);
        unicodeBuilder.append(':');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102935h);
        if (this.f102936i != 0) {
            unicodeBuilder.append('.');
            int i = this.f102936i;
            int i2 = HwmfPicture.DEFAULT_MAX_RECORD_LENGTH;
            while (i > 0) {
                unicodeBuilder.append((char) ((i / i2) + 48));
                i %= i2;
                i2 /= 10;
            }
        }
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.TIME;
    }

    public TimeComparable getSchemaComparable() {
        return new TimeComparable(this);
    }

    public byte getSecond() {
        return this.f102935h;
    }

    @Override // net.p110sf.saxon.value.CalendarValue, net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        if (hasTimezone()) {
            return this;
        }
        if (i != Integer.MAX_VALUE) {
            return adjustTimezone(i);
        }
        throw new NoDynamicContextException("Unknown implicit timezone");
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return DateTimeValue.computeHashCode(1951, (byte) 10, (byte) 11, this.f102933f, this.f102934g, this.f102935h, this.f102936i, getTimezoneInMinutes());
    }

    public TimeValue makeTimeValue(byte b, byte b2, byte b3, int i, int i2) {
        return new TimeValue(b, b2, b3, i, i2, "");
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DayTimeDurationValue subtract(CalendarValue calendarValue, XPathContext xPathContext) throws XPathException {
        if (calendarValue instanceof TimeValue) {
            return super.subtract(calendarValue, xPathContext);
        }
        XPathException xPathException = new XPathException("First operand of '-' is a time, but the second is not");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateTimeValue toDateTime() {
        return new DateTimeValue(1972, (byte) 12, (byte) 31, this.f102933f, this.f102934g, this.f102935h, this.f102936i, getTimezoneInMinutes());
    }

    @Deprecated
    public TimeValue(byte b, byte b2, byte b3, int i, int i2) {
        this.f102933f = b;
        this.f102934g = b2;
        this.f102935h = b3;
        this.f102936i = i * 1000;
        setTimezoneInMinutes(i2);
        this.typeLabel = BuiltInAtomicType.TIME;
    }

    public static ConversionResult makeTimeValue(UnicodeString unicodeString) {
        TimeValue timeValue = new TimeValue();
        StringTokenizer stringTokenizer = new StringTokenizer(Whitespace.trim(unicodeString).toString(), "-:.+Z", true);
        if (!stringTokenizer.hasMoreTokens()) {
            return m64683b("too short", unicodeString);
        }
        String nextToken = stringTokenizer.nextToken();
        if (nextToken.length() != 2) {
            return m64683b("hour must be two digits", unicodeString);
        }
        int simpleInteger = DurationValue.simpleInteger(nextToken);
        if (simpleInteger < 0) {
            return m64683b("Non-numeric hour component", unicodeString);
        }
        byte b = (byte) simpleInteger;
        timeValue.f102933f = b;
        if (b > 24) {
            return m64683b("hour is out of range", unicodeString);
        }
        if (!stringTokenizer.hasMoreTokens()) {
            return m64683b("too short", unicodeString);
        }
        if (!":".equals(stringTokenizer.nextToken())) {
            return m64683b("wrong delimiter after hour", unicodeString);
        }
        if (!stringTokenizer.hasMoreTokens()) {
            return m64683b("too short", unicodeString);
        }
        String nextToken2 = stringTokenizer.nextToken();
        if (nextToken2.length() != 2) {
            return m64683b("minute must be two digits", unicodeString);
        }
        int simpleInteger2 = DurationValue.simpleInteger(nextToken2);
        if (simpleInteger2 < 0) {
            return m64683b("Non-numeric minute component", unicodeString);
        }
        byte b2 = (byte) simpleInteger2;
        timeValue.f102934g = b2;
        if (b2 > 59) {
            return m64683b("minute is out of range", unicodeString);
        }
        if (timeValue.f102933f == 24 && b2 != 0) {
            return m64683b("If hour is 24, minute must be 00", unicodeString);
        }
        if (!stringTokenizer.hasMoreTokens()) {
            return m64683b("too short", unicodeString);
        }
        if (!":".equals(stringTokenizer.nextToken())) {
            return m64683b("wrong delimiter after minute", unicodeString);
        }
        if (!stringTokenizer.hasMoreTokens()) {
            return m64683b("too short", unicodeString);
        }
        String nextToken3 = stringTokenizer.nextToken();
        if (nextToken3.length() != 2) {
            return m64683b("second must be two digits", unicodeString);
        }
        int simpleInteger3 = DurationValue.simpleInteger(nextToken3);
        if (simpleInteger3 < 0) {
            return m64683b("Non-numeric second component", unicodeString);
        }
        byte b3 = (byte) simpleInteger3;
        timeValue.f102935h = b3;
        if (b3 > 59) {
            return m64683b("second is out of range", unicodeString);
        }
        if (timeValue.f102933f == 24 && b3 != 0) {
            return m64683b("If hour is 24, second must be 00", unicodeString);
        }
        char c = 0;
        int i = 0;
        boolean z = false;
        while (stringTokenizer.hasMoreTokens()) {
            if (c == '\t') {
                return m64683b("characters after the end", unicodeString);
            }
            String nextToken4 = stringTokenizer.nextToken();
            if (!".".equals(nextToken4)) {
                if (Constants.HASIDCALL_INDEX_SIG.equals(nextToken4)) {
                    if (c > 1) {
                        return m64683b("Z cannot occur here", unicodeString);
                    }
                    timeValue.setTimezoneInMinutes(0);
                    i = 0;
                } else if ("+".equals(nextToken4) || "-".equals(nextToken4)) {
                    if (c > 1) {
                        return m64683b(nextToken4 + " cannot occur here", unicodeString);
                    }
                    if (!stringTokenizer.hasMoreTokens()) {
                        return m64683b("missing timezone", unicodeString);
                    }
                    String nextToken5 = stringTokenizer.nextToken();
                    if (nextToken5.length() != 2) {
                        return m64683b("timezone hour must be two digits", unicodeString);
                    }
                    int simpleInteger4 = DurationValue.simpleInteger(nextToken5);
                    if (simpleInteger4 < 0) {
                        return m64683b("Non-numeric timezone hour component", unicodeString);
                    }
                    i = simpleInteger4 * 60;
                    if (i > 840) {
                        return m64683b("timezone hour is out of range", unicodeString);
                    }
                    if ("-".equals(nextToken4)) {
                        z = true;
                    }
                    c = 2;
                } else {
                    if (!":".equals(nextToken4)) {
                        return m64683b("timezone format is incorrect", unicodeString);
                    }
                    if (c != 2) {
                        return m64683b("colon cannot occur here", unicodeString);
                    }
                    String nextToken6 = stringTokenizer.nextToken();
                    int simpleInteger5 = DurationValue.simpleInteger(nextToken6);
                    if (simpleInteger5 < 0) {
                        return m64683b("Non-numeric timezone minute component", unicodeString);
                    }
                    if (nextToken6.length() != 2) {
                        return m64683b("timezone minute must be two digits", unicodeString);
                    }
                    if (simpleInteger5 > 59) {
                        return m64683b("timezone minute is out of range", unicodeString);
                    }
                    i += simpleInteger5;
                    if (z) {
                        i = -i;
                    }
                    timeValue.setTimezoneInMinutes(i);
                }
                c = '\t';
            } else {
                if (c != 0) {
                    return m64683b("decimal separator occurs twice", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64683b("decimal point must be followed by digits", unicodeString);
                }
                String nextToken7 = stringTokenizer.nextToken();
                if (nextToken7.length() > 9 && nextToken7.matches("^[0-9]+$")) {
                    nextToken7 = nextToken7.substring(0, 9);
                }
                if (DurationValue.simpleInteger(nextToken7) < 0) {
                    return m64683b("Non-numeric fractional seconds component", unicodeString);
                }
                int round = (int) Math.round(Double.parseDouble('.' + nextToken7) * 1.0E9d);
                timeValue.f102936i = round;
                if (timeValue.f102933f == 24 && round != 0) {
                    return m64683b("If hour is 24, fractional seconds must be 0", unicodeString);
                }
                c = 1;
            }
        }
        if (c != 2 && c != 3) {
            if (timeValue.f102933f == 24) {
                timeValue.f102933f = (byte) 0;
            }
            timeValue.typeLabel = BuiltInAtomicType.TIME;
            return timeValue;
        }
        return m64683b("timezone incomplete", unicodeString);
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public TimeValue add(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof DayTimeDurationValue) {
            DateTimeValue add = toDateTime().add(durationValue);
            return new TimeValue(add.getHour(), add.getMinute(), add.getSecond(), add.getNanosecond(), getTimezoneInMinutes(), "");
        }
        XPathException xPathException = new XPathException("Time+Duration arithmetic is supported only for xs:dayTimeDuration");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public TimeValue adjustTimezone(int i) {
        DateTimeValue adjustTimezone = toDateTime().adjustTimezone(i);
        return new TimeValue(adjustTimezone.getHour(), adjustTimezone.getMinute(), adjustTimezone.getSecond(), adjustTimezone.getNanosecond(), adjustTimezone.getTimezoneInMinutes(), "");
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof TimeValue) {
            TimeValue timeValue = (TimeValue) xPathComparable;
            if (getTimezoneInMinutes() == timeValue.getTimezoneInMinutes()) {
                byte b = this.f102933f;
                byte b2 = timeValue.f102933f;
                if (b != b2) {
                    return IntegerValue.signum(b - b2);
                }
                byte b3 = this.f102934g;
                byte b4 = timeValue.f102934g;
                if (b3 != b4) {
                    return IntegerValue.signum(b3 - b4);
                }
                byte b5 = this.f102935h;
                byte b6 = timeValue.f102935h;
                if (b5 != b6) {
                    return IntegerValue.signum(b5 - b6);
                }
                int i = this.f102936i;
                int i2 = timeValue.f102936i;
                if (i != i2) {
                    return IntegerValue.signum(i - i2);
                }
                return 0;
            }
            return toDateTime().compareTo((XPathComparable) timeValue.toDateTime());
        }
        throw new ClassCastException("Cannot compare xs:time to " + xPathComparable);
    }

    public TimeValue(byte b, byte b2, byte b3, int i, int i2, String str) {
        if (str.isEmpty()) {
            this.f102933f = b;
            this.f102934g = b2;
            this.f102935h = b3;
            this.f102936i = i;
            setTimezoneInMinutes(i2);
            this.typeLabel = BuiltInAtomicType.TIME;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public int compareTo(CalendarValue calendarValue, int i) throws NoDynamicContextException {
        if (calendarValue instanceof TimeValue) {
            TimeValue timeValue = (TimeValue) calendarValue;
            if (getTimezoneInMinutes() == timeValue.getTimezoneInMinutes()) {
                return compareTo((XPathComparable) timeValue);
            }
            return toDateTime().compareTo(timeValue.toDateTime(), i);
        }
        throw new ClassCastException("Time values are not comparable to " + calendarValue.getClass());
    }

    public TimeValue(GregorianCalendar gregorianCalendar, int i) {
        this.f102933f = (byte) gregorianCalendar.get(11);
        this.f102934g = (byte) gregorianCalendar.get(12);
        this.f102935h = (byte) gregorianCalendar.get(13);
        this.f102936i = gregorianCalendar.get(14) * 1000000;
        setTimezoneInMinutes(i);
        this.typeLabel = BuiltInAtomicType.TIME;
    }
}
