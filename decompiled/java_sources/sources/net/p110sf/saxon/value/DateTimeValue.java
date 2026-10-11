package net.p110sf.saxon.value;

import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZonedDateTime;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoField;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalField;
import java.time.temporal.UnsupportedTemporalTypeException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;
import java.util.StringTokenizer;
import javax.xml.datatype.DatatypeConstants;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;
import org.apache.poi.hwmf.usermodel.HwmfPicture;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes11.dex */
public final class DateTimeValue extends CalendarValue implements XPathComparable, TemporalAccessor {
    public static final DateTimeValue EPOCH = new DateTimeValue(1970, (byte) 1, (byte) 1, (byte) 0, (byte) 0, (byte) 0, 0, 0, true);

    /* renamed from: f */
    public int f102851f;

    /* renamed from: g */
    public byte f102852g;

    /* renamed from: h */
    public byte f102853h;

    /* renamed from: i */
    public byte f102854i;

    /* renamed from: j */
    public byte f102855j;

    /* renamed from: k */
    public byte f102856k;

    /* renamed from: l */
    public int f102857l;

    /* renamed from: m */
    public boolean f102858m;

    /* loaded from: classes11.dex */
    public static class DateTimeComparable implements Comparable<DateTimeComparable> {

        /* renamed from: e */
        public final DateTimeValue f102859e;

        public DateTimeComparable(DateTimeValue dateTimeValue) {
            this.f102859e = dateTimeValue;
        }

        public boolean equals(Object obj) {
            if (obj instanceof DateTimeComparable) {
                DateTimeComparable dateTimeComparable = (DateTimeComparable) obj;
                if (this.f102859e.hasTimezone() == dateTimeComparable.f102859e.hasTimezone() && compareTo(dateTimeComparable) == 0) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            DateTimeValue adjustTimezone = this.f102859e.adjustTimezone(0);
            return (((((adjustTimezone.f102851f << 20) ^ (adjustTimezone.f102852g << 16)) ^ (adjustTimezone.f102853h << 11)) ^ (adjustTimezone.f102854i << 7)) ^ (adjustTimezone.f102855j << 2)) ^ ((adjustTimezone.f102856k * 1000000000) + adjustTimezone.f102857l);
        }

        @Override // java.lang.Comparable
        public int compareTo(DateTimeComparable dateTimeComparable) {
            DateTimeValue dateTimeValue = this.f102859e;
            DateTimeValue dateTimeValue2 = dateTimeComparable.f102859e;
            if (dateTimeValue.hasTimezone()) {
                if (dateTimeValue2.hasTimezone()) {
                    return dateTimeValue.adjustTimezone(0).compareTo((XPathComparable) dateTimeValue2.adjustTimezone(0));
                }
                if (dateTimeValue.compareTo((XPathComparable) dateTimeValue2.adjustTimezone(DatatypeConstants.MIN_TIMEZONE_OFFSET)) < 0) {
                    return -1;
                }
                return dateTimeValue.compareTo((XPathComparable) dateTimeValue2.adjustTimezone(DatatypeConstants.MAX_TIMEZONE_OFFSET)) > 0 ? 1 : Integer.MIN_VALUE;
            }
            if (dateTimeValue2.hasTimezone()) {
                if (dateTimeValue.adjustTimezone(DatatypeConstants.MAX_TIMEZONE_OFFSET).compareTo((XPathComparable) dateTimeValue2) < 0) {
                    return -1;
                }
                return dateTimeValue.adjustTimezone(DatatypeConstants.MIN_TIMEZONE_OFFSET).compareTo((XPathComparable) dateTimeValue2) > 0 ? 1 : Integer.MIN_VALUE;
            }
            return dateTimeValue.adjustTimezone(0).compareTo((XPathComparable) dateTimeValue2.adjustTimezone(0));
        }
    }

    /* renamed from: net.sf.saxon.value.DateTimeValue$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18566a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102860a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f102861b;

        static {
            int[] iArr = new int[ChronoField.values().length];
            f102861b = iArr;
            try {
                iArr[ChronoField.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102861b[ChronoField.NANO_OF_DAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102861b[ChronoField.MICRO_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102861b[ChronoField.MICRO_OF_DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102861b[ChronoField.MILLI_OF_SECOND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f102861b[ChronoField.MILLI_OF_DAY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f102861b[ChronoField.SECOND_OF_MINUTE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f102861b[ChronoField.SECOND_OF_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f102861b[ChronoField.MINUTE_OF_HOUR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f102861b[ChronoField.MINUTE_OF_DAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f102861b[ChronoField.HOUR_OF_AMPM.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f102861b[ChronoField.CLOCK_HOUR_OF_AMPM.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f102861b[ChronoField.HOUR_OF_DAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f102861b[ChronoField.CLOCK_HOUR_OF_DAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f102861b[ChronoField.AMPM_OF_DAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f102861b[ChronoField.DAY_OF_WEEK.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f102861b[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f102861b[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f102861b[ChronoField.DAY_OF_MONTH.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f102861b[ChronoField.DAY_OF_YEAR.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f102861b[ChronoField.EPOCH_DAY.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f102861b[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f102861b[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f102861b[ChronoField.MONTH_OF_YEAR.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f102861b[ChronoField.PROLEPTIC_MONTH.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f102861b[ChronoField.YEAR_OF_ERA.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f102861b[ChronoField.YEAR.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f102861b[ChronoField.ERA.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f102861b[ChronoField.INSTANT_SECONDS.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f102861b[ChronoField.OFFSET_SECONDS.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            int[] iArr2 = new int[AccessorFn.Component.values().length];
            f102860a = iArr2;
            try {
                iArr2[AccessorFn.Component.YEAR_ALLOWING_ZERO.ordinal()] = 1;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f102860a[AccessorFn.Component.YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f102860a[AccessorFn.Component.MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f102860a[AccessorFn.Component.DAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f102860a[AccessorFn.Component.HOURS.ordinal()] = 5;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f102860a[AccessorFn.Component.MINUTES.ordinal()] = 6;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f102860a[AccessorFn.Component.SECONDS.ordinal()] = 7;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f102860a[AccessorFn.Component.WHOLE_SECONDS.ordinal()] = 8;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f102860a[AccessorFn.Component.MICROSECONDS.ordinal()] = 9;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f102860a[AccessorFn.Component.NANOSECONDS.ordinal()] = 10;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f102860a[AccessorFn.Component.TIMEZONE.ordinal()] = 11;
            } catch (NoSuchFieldError unused41) {
            }
        }
    }

    public DateTimeValue() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
    
        if (r9 > 59) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int computeHashCode(int r5, byte r6, byte r7, byte r8, byte r9, byte r10, int r11, int r12) {
        /*
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r12 != r0) goto L6
            r12 = 0
            goto L7
        L6:
            int r12 = -r12
        L7:
            int r9 = r9 + r12
            if (r9 < 0) goto Le
            r12 = 59
            if (r9 <= r12) goto L1c
        Le:
            double r0 = (double) r9
            r2 = 4633641066610819072(0x404e000000000000, double:60.0)
            double r0 = r0 / r2
            double r0 = java.lang.Math.floor(r0)
            int r12 = (int) r0
            int r8 = r8 + r12
            int r9 = r9 + 1440
            int r9 = r9 % 60
        L1c:
            if (r8 >= 0) goto L35
            int r8 = r8 + 24
            net.sf.saxon.value.DateValue r5 = net.p110sf.saxon.value.DateValue.yesterday(r5, r6, r7)
            int r6 = r5.getYear()
            byte r7 = r5.getMonth()
            byte r5 = r5.getDay()
            r4 = r7
            r7 = r5
            r5 = r6
            r6 = r4
            goto L1c
        L35:
            r12 = 23
            if (r8 <= r12) goto L50
            int r8 = r8 + (-24)
            net.sf.saxon.value.DateValue r5 = net.p110sf.saxon.value.DateValue.tomorrow(r5, r6, r7)
            int r6 = r5.getYear()
            byte r7 = r5.getMonth()
            byte r5 = r5.getDay()
            r4 = r7
            r7 = r5
            r5 = r6
            r6 = r4
            goto L35
        L50:
            int r5 = r5 << 4
            int r6 = r6 << 28
            r5 = r5 ^ r6
            int r6 = r7 << 23
            r5 = r5 ^ r6
            int r6 = r8 << 18
            r5 = r5 ^ r6
            int r6 = r9 << 13
            r5 = r5 ^ r6
            r5 = r5 ^ r10
            r5 = r5 ^ r11
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.value.DateTimeValue.computeHashCode(int, byte, byte, byte, byte, byte, int, int):int");
    }

    public static DateTimeValue fromJavaDate(Date date) throws XPathException {
        return EPOCH.add((DurationValue) DayTimeDurationValue.fromMilliseconds(date.getTime()));
    }

    public static DateTimeValue fromJavaInstant(long j, int i) throws XPathException {
        return EPOCH.add(DayTimeDurationValue.fromSeconds(BigDecimal.valueOf(j)).add(DayTimeDurationValue.fromNanoseconds(i)));
    }

    public static DateTimeValue fromJavaTime(long j) throws XPathException {
        return EPOCH.add((DurationValue) DayTimeDurationValue.fromMilliseconds(j));
    }

    public static DateTimeValue fromJulianInstant(BigDecimal bigDecimal) {
        BigInteger bigInteger = bigDecimal.toBigInteger();
        BigDecimal multiply = bigDecimal.subtract(new BigDecimal(bigInteger)).multiply(BigDecimalValue.BIG_DECIMAL_ONE_BILLION);
        long longValue = bigInteger.longValue();
        DateValue dateFromJulianDayNumber = DateValue.dateFromJulianDayNumber((int) (longValue / 86400));
        byte b = (byte) (r0 / 3600);
        long j = (longValue % 86400) % 3600;
        return new DateTimeValue(dateFromJulianDayNumber.getYear(), dateFromJulianDayNumber.getMonth(), dateFromJulianDayNumber.getDay(), b, (byte) (j / 60), (byte) (j % 60), multiply.intValue(), 0);
    }

    public static DateTimeValue fromLocalDateTime(LocalDateTime localDateTime) {
        DateTimeValue dateTimeValue = new DateTimeValue(localDateTime.getYear(), (byte) localDateTime.getMonthValue(), (byte) localDateTime.getDayOfMonth(), (byte) localDateTime.getHour(), (byte) localDateTime.getMinute(), (byte) localDateTime.getSecond(), localDateTime.getNano(), Integer.MIN_VALUE);
        dateTimeValue.f102858m = false;
        return dateTimeValue;
    }

    public static DateTimeValue fromOffsetDateTime(OffsetDateTime offsetDateTime) {
        LocalDateTime localDateTime = offsetDateTime.toLocalDateTime();
        DateTimeValue dateTimeValue = new DateTimeValue(localDateTime.getYear(), (byte) localDateTime.getMonthValue(), (byte) localDateTime.getDayOfMonth(), (byte) localDateTime.getHour(), (byte) localDateTime.getMinute(), (byte) localDateTime.getSecond(), localDateTime.getNano(), offsetDateTime.getOffset().getTotalSeconds() / 60);
        dateTimeValue.typeLabel = BuiltInAtomicType.DATE_TIME_STAMP;
        dateTimeValue.f102858m = false;
        return dateTimeValue;
    }

    public static DateTimeValue fromZonedDateTime(ZonedDateTime zonedDateTime) {
        return fromOffsetDateTime(zonedDateTime.toOffsetDateTime());
    }

    public static DateTimeValue getCurrentDateTime(XPathContext xPathContext) {
        Controller controller;
        return (xPathContext == null || (controller = xPathContext.getController()) == null) ? now() : controller.getCurrentDateTime();
    }

    /* renamed from: j */
    public static ValidationFailure m64661j(String str, UnicodeString unicodeString) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid dateTime value " + Err.wrap(unicodeString, 4) + " (" + str + MotionUtils.f31762d);
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    /* renamed from: k */
    public static ValidationFailure m64662k(String str, UnicodeString unicodeString, String str2) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid dateTime value " + Err.wrap(unicodeString, 4) + " (" + str + MotionUtils.f31762d);
        validationFailure.setErrorCode(str2);
        return validationFailure;
    }

    public static DateTimeValue makeDateTimeValue(DateValue dateValue, TimeValue timeValue) throws XPathException {
        if (dateValue == null || timeValue == null) {
            return null;
        }
        int timezoneInMinutes = dateValue.getTimezoneInMinutes();
        int timezoneInMinutes2 = timeValue.getTimezoneInMinutes();
        if (timezoneInMinutes != Integer.MIN_VALUE && timezoneInMinutes2 != Integer.MIN_VALUE && timezoneInMinutes != timezoneInMinutes2) {
            XPathException xPathException = new XPathException("Supplied date and time are in different timezones");
            xPathException.setErrorCode("FORG0008");
            throw xPathException;
        }
        DateTimeValue dateTime = dateValue.toDateTime();
        dateTime.f102854i = timeValue.getHour();
        dateTime.f102855j = timeValue.getMinute();
        dateTime.f102856k = timeValue.getSecond();
        dateTime.f102857l = timeValue.getNanosecond();
        dateTime.setTimezoneInMinutes(Math.max(timezoneInMinutes, timezoneInMinutes2));
        dateTime.typeLabel = BuiltInAtomicType.DATE_TIME;
        dateTime.f102858m = dateValue.hasNoYearZero;
        return dateTime;
    }

    public static DateTimeValue now() {
        return fromZonedDateTime(ZonedDateTime.now());
    }

    public static DateTimeValue parse(UnicodeString unicodeString) throws DateTimeParseException {
        ConversionResult makeDateTimeValue = makeDateTimeValue(unicodeString, ConversionRules.DEFAULT);
        if (makeDateTimeValue instanceof ValidationFailure) {
            throw new DateTimeParseException(((ValidationFailure) makeDateTimeValue).getMessage(), unicodeString.toString(), 0);
        }
        return (DateTimeValue) makeDateTimeValue;
    }

    public DateTimeValue adjustToUTC(int i) throws NoDynamicContextException {
        if (hasTimezone()) {
            return adjustTimezone(0);
        }
        if (i == Integer.MAX_VALUE || i == Integer.MIN_VALUE) {
            throw new NoDynamicContextException("DateTime operation needs access to implicit timezone");
        }
        DateTimeValue copyAsSubType = copyAsSubType((AtomicType) null);
        copyAsSubType.setTimezoneInMinutes(i);
        return copyAsSubType.adjustTimezone(0);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public void checkValidInJavascript() throws XPathException {
        int i = this.f102851f;
        if (i <= 0 || i > 9999) {
            throw new XPathException("Year out of range for SaxonJS", "FODT0001");
        }
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        return (obj instanceof DateTimeValue) && compareTo((XPathComparable) obj) == 0;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public GregorianCalendar getCalendar() {
        int timezoneInMinutes = hasTimezone() ? getTimezoneInMinutes() * 60000 : 0;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(new SimpleTimeZone(timezoneInMinutes, "LLL"));
        if (timezoneInMinutes < gregorianCalendar.getMinimum(15) || timezoneInMinutes > gregorianCalendar.getMaximum(15)) {
            return adjustTimezone(0).getCalendar();
        }
        gregorianCalendar.setGregorianChange(new Date(Long.MIN_VALUE));
        gregorianCalendar.setLenient(false);
        int i = this.f102851f;
        if (i <= 0) {
            i = this.f102858m ? 1 - i : 0 - i;
            gregorianCalendar.set(0, 0);
        }
        gregorianCalendar.set(i, this.f102852g - 1, this.f102853h, this.f102854i, this.f102855j, this.f102856k);
        gregorianCalendar.set(14, this.f102857l / 1000000);
        gregorianCalendar.set(15, timezoneInMinutes);
        gregorianCalendar.set(16, 0);
        return gregorianCalendar;
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return (!hasTimezone() || getTimezoneInMinutes() == 0) ? getUnicodeStringValue() : adjustTimezone(0).getUnicodeStringValue();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue getComponent(AccessorFn.Component component) throws XPathException {
        switch (C18566a.f102860a[component.ordinal()]) {
            case 1:
                return Int64Value.makeIntegerValue(this.f102851f);
            case 2:
                int i = this.f102851f;
                if (i <= 0 && this.f102858m) {
                    i--;
                }
                return Int64Value.makeIntegerValue(i);
            case 3:
                return Int64Value.makeIntegerValue(this.f102852g);
            case 4:
                return Int64Value.makeIntegerValue(this.f102853h);
            case 5:
                return Int64Value.makeIntegerValue(this.f102854i);
            case 6:
                return Int64Value.makeIntegerValue(this.f102855j);
            case 7:
                return new BigDecimalValue(BigDecimal.valueOf(this.f102857l).divide(BigDecimalValue.BIG_DECIMAL_ONE_BILLION, 6, RoundingMode.HALF_UP).add(BigDecimal.valueOf(this.f102856k)));
            case 8:
                return Int64Value.makeIntegerValue(this.f102856k);
            case 9:
                return new Int64Value(this.f102857l / 1000);
            case 10:
                return new Int64Value(this.f102857l);
            case 11:
                if (hasTimezone()) {
                    return DayTimeDurationValue.fromMilliseconds(getTimezoneInMinutes() * 60000);
                }
                return null;
            default:
                throw new IllegalArgumentException("Unknown component for dateTime: " + component);
        }
    }

    public byte getDay() {
        return this.f102853h;
    }

    public byte getHour() {
        return this.f102854i;
    }

    @Override // java.time.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        long j;
        int i;
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        switch (C18566a.f102861b[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return this.f102857l;
            case 2:
                j = ((this.f102854i * 3600) + (this.f102855j * DeletedRef3DPtg.sid) + this.f102856k) * 1000000000;
                i = this.f102857l;
                break;
            case 3:
                return this.f102857l / 1000;
            case 4:
                j = ((this.f102854i * 3600) + (this.f102855j * DeletedRef3DPtg.sid) + this.f102856k) * 1000000;
                i = this.f102857l / 1000;
                break;
            case 5:
                return this.f102857l / 1000000;
            case 6:
                j = ((this.f102854i * 3600) + (this.f102855j * DeletedRef3DPtg.sid) + this.f102856k) * 1000;
                i = this.f102857l / 1000000;
                break;
            case 7:
                return this.f102856k;
            case 8:
                return (this.f102854i * 3600) + (this.f102855j * DeletedRef3DPtg.sid) + this.f102856k;
            case 9:
                return this.f102855j;
            case 10:
                return (this.f102854i * DeletedRef3DPtg.sid) + this.f102855j;
            case 11:
                return this.f102854i % 12;
            case 12:
                return ((this.f102854i + 11) % 12) + 1;
            case 13:
                return this.f102854i;
            case 14:
                return ((this.f102854i + 23) % 24) + 1;
            case 15:
                return this.f102854i / 12;
            case 16:
                return DateValue.getDayOfWeek(this.f102851f, this.f102852g, this.f102853h);
            case 17:
                return ((this.f102853h - 1) % 7) + 1;
            case 18:
                return ((DateValue.getDayWithinYear(this.f102851f, this.f102852g, this.f102853h) - 1) % 7) + 1;
            case 19:
                return this.f102853h;
            case 20:
                return DateValue.getDayWithinYear(this.f102851f, this.f102852g, this.f102853h);
            case 21:
                BigDecimal secondsSinceEpoch = secondsSinceEpoch();
                long longValue = secondsSinceEpoch().longValue() / 86400;
                return secondsSinceEpoch.signum() < 0 ? longValue - 1 : longValue;
            case 22:
                return ((this.f102853h - 1) / 7) + 1;
            case 23:
                return ((DateValue.getDayWithinYear(this.f102851f, this.f102852g, this.f102853h) - 1) / 7) + 1;
            case 24:
                return this.f102852g;
            case 25:
                return ((this.f102851f * 12) + this.f102852g) - 1;
            case 26:
                return Math.abs(this.f102851f) + (this.f102851f < 0 ? 1 : 0);
            case 27:
                return this.f102851f;
            case 28:
                return this.f102851f < 0 ? 0L : 1L;
            case 29:
                return secondsSinceEpoch().setScale(0, 3).longValue();
            case 30:
                if (getTimezoneInMinutes() != Integer.MIN_VALUE) {
                    return r7 * 60;
                }
                throw new UnsupportedTemporalTypeException("xs:dateTime value has no timezone");
            default:
                throw new UnsupportedTemporalTypeException(temporalField.toString());
        }
        return j + i;
    }

    public int getMicrosecond() {
        return this.f102857l / 1000;
    }

    public byte getMinute() {
        return this.f102855j;
    }

    public byte getMonth() {
        return this.f102852g;
    }

    public int getNanosecond() {
        return this.f102857l;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        int i;
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(32);
        int i2 = this.f102851f;
        if (i2 <= 0 && (i2 = (-i2) + (this.f102858m ? 1 : 0)) != 0) {
            unicodeBuilder.append('-');
        }
        if (i2 > 9999) {
            i = (i2 + "").length();
        } else {
            i = 4;
        }
        CalendarValue.appendString(unicodeBuilder, i2, i);
        unicodeBuilder.append('-');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102852g);
        unicodeBuilder.append('-');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102853h);
        unicodeBuilder.append('T');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102854i);
        unicodeBuilder.append(':');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102855j);
        unicodeBuilder.append(':');
        CalendarValue.appendTwoDigits(unicodeBuilder, this.f102856k);
        if (this.f102857l != 0) {
            unicodeBuilder.append('.');
            int i3 = this.f102857l;
            int i4 = HwmfPicture.DEFAULT_MAX_RECORD_LENGTH;
            while (i3 > 0) {
                unicodeBuilder.append((char) ((i3 / i4) + 48));
                i3 %= i4;
                i4 /= 10;
            }
        }
        if (hasTimezone()) {
            appendTimezone(unicodeBuilder);
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.DATE_TIME;
    }

    public DateTimeComparable getSchemaComparable() {
        return new DateTimeComparable(this);
    }

    public byte getSecond() {
        return this.f102856k;
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

    public int getYear() {
        return this.f102851f;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return computeHashCode(this.f102851f, this.f102852g, this.f102853h, this.f102854i, this.f102855j, this.f102856k, this.f102857l, getTimezoneInMinutes());
    }

    @Override // java.time.temporal.TemporalAccessor
    public boolean isSupported(TemporalField temporalField) {
        if (temporalField.equals(ChronoField.OFFSET_SECONDS)) {
            return getTimezoneInMinutes() != Integer.MIN_VALUE;
        }
        if (temporalField instanceof ChronoField) {
            return true;
        }
        return temporalField.isSupportedBy(this);
    }

    public boolean isXsd10Rules() {
        return this.f102858m;
    }

    /* renamed from: l */
    public final SequenceIterator m64663l(long j) {
        return SingletonIterator.makeIterator(Int64Value.makeIntegerValue(j));
    }

    public long randomSeed() {
        return getCalendar().getTimeInMillis();
    }

    public BigDecimal secondsSinceEpoch() {
        try {
            return adjustToUTC(0).toJulianInstant().subtract(EPOCH.toJulianInstant());
        } catch (NoDynamicContextException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DayTimeDurationValue subtract(CalendarValue calendarValue, XPathContext xPathContext) throws XPathException {
        if (calendarValue instanceof DateTimeValue) {
            return super.subtract(calendarValue, xPathContext);
        }
        XPathException xPathException = new XPathException("First operand of '-' is a dateTime, but the second is not");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateTimeValue toDateTime() {
        return this;
    }

    public DateValue toDateValue() {
        return new DateValue(this.f102851f, this.f102852g, this.f102853h, getTimezoneInMinutes(), this.f102858m);
    }

    public Instant toJavaInstant() {
        return Instant.from(this);
    }

    public BigDecimal toJulianInstant() {
        BigDecimal valueOf = BigDecimal.valueOf((DateValue.getJulianDayNumber(this.f102851f, this.f102852g, this.f102853h) * 24 * 60 * 60) + (((this.f102854i * 60) + this.f102855j) * 60) + this.f102856k);
        int i = this.f102857l;
        return i == 0 ? valueOf : valueOf.add(BigDecimal.valueOf(i).divide(BigDecimalValue.BIG_DECIMAL_ONE_BILLION, 9, RoundingMode.HALF_EVEN));
    }

    public LocalDateTime toLocalDateTime() {
        return LocalDateTime.from((TemporalAccessor) this);
    }

    public OffsetDateTime toOffsetDateTime() {
        if (hasTimezone()) {
            return OffsetDateTime.from(this);
        }
        try {
            return OffsetDateTime.from(adjustToUTC(0));
        } catch (NoDynamicContextException e) {
            throw new AssertionError(e);
        }
    }

    public TimeValue toTimeValue() {
        return new TimeValue(this.f102854i, this.f102855j, this.f102856k, this.f102857l, getTimezoneInMinutes(), "");
    }

    public ZonedDateTime toZonedDateTime() {
        if (hasTimezone()) {
            return ZonedDateTime.from((TemporalAccessor) this);
        }
        try {
            return ZonedDateTime.from((TemporalAccessor) adjustToUTC(0));
        } catch (NoDynamicContextException e) {
            throw new AssertionError(e);
        }
    }

    public DateTimeValue(Calendar calendar, boolean z) {
        int i = calendar.get(0);
        int i2 = calendar.get(1);
        this.f102851f = i2;
        if (i == 0) {
            this.f102851f = 1 - i2;
        }
        this.f102852g = (byte) (calendar.get(2) + 1);
        this.f102853h = (byte) calendar.get(5);
        this.f102854i = (byte) calendar.get(11);
        this.f102855j = (byte) calendar.get(12);
        this.f102856k = (byte) calendar.get(13);
        this.f102857l = calendar.get(14) * 1000000;
        if (z) {
            setTimezoneInMinutes((calendar.get(15) + calendar.get(16)) / 60000);
        }
        this.typeLabel = BuiltInAtomicType.DATE_TIME;
        this.f102858m = true;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateTimeValue add(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof DayTimeDurationValue) {
            DateTimeValue fromJulianInstant = fromJulianInstant(toJulianInstant().add(durationValue.getTotalSeconds()));
            fromJulianInstant.setTimezoneInMinutes(getTimezoneInMinutes());
            fromJulianInstant.f102858m = this.f102858m;
            return fromJulianInstant;
        }
        if (durationValue instanceof YearMonthDurationValue) {
            int lengthInMonths = (this.f102852g - 1) + ((YearMonthDurationValue) durationValue).getLengthInMonths();
            int i = this.f102851f + (lengthInMonths / 12);
            int i2 = lengthInMonths % 12;
            if (i2 < 0) {
                i2 += 12;
                i--;
            }
            int i3 = i;
            int i4 = i2 + 1;
            int i5 = this.f102853h;
            while (!GDateValue.isValidDate(i3, i4, i5)) {
                i5--;
            }
            DateTimeValue dateTimeValue = new DateTimeValue(i3, (byte) i4, (byte) i5, this.f102854i, this.f102855j, this.f102856k, this.f102857l, getTimezoneInMinutes());
            dateTimeValue.f102858m = this.f102858m;
            return dateTimeValue;
        }
        XPathException xPathException = new XPathException("DateTime arithmetic is not supported on xs:duration, only on its subtypes");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public DateTimeValue adjustTimezone(int i) {
        if (!hasTimezone()) {
            DateTimeValue copyAsSubType = copyAsSubType(this.typeLabel);
            copyAsSubType.setTimezoneInMinutes(i);
            return copyAsSubType;
        }
        int timezoneInMinutes = getTimezoneInMinutes();
        if (timezoneInMinutes == i) {
            return this;
        }
        int i2 = this.f102854i;
        int i3 = this.f102855j + (i - timezoneInMinutes);
        if (i3 < 0 || i3 > 59) {
            i2 += (int) Math.floor(i3 / 60.0d);
            i3 = (i3 + 1440) % 60;
        }
        if (i2 >= 0 && i2 < 24) {
            DateTimeValue dateTimeValue = new DateTimeValue(this.f102851f, this.f102852g, this.f102853h, (byte) i2, (byte) i3, this.f102856k, this.f102857l, i);
            dateTimeValue.f102858m = this.f102858m;
            return dateTimeValue;
        }
        DateTimeValue dateTimeValue2 = this;
        while (i2 < 0) {
            i2 += 24;
            DateValue yesterday = DateValue.yesterday(dateTimeValue2.getYear(), dateTimeValue2.getMonth(), dateTimeValue2.getDay());
            DateTimeValue dateTimeValue3 = new DateTimeValue(yesterday.getYear(), yesterday.getMonth(), yesterday.getDay(), (byte) i2, (byte) i3, this.f102856k, this.f102857l, i);
            dateTimeValue3.f102858m = this.f102858m;
            dateTimeValue2 = dateTimeValue3;
        }
        if (i2 <= 23) {
            return dateTimeValue2;
        }
        DateValue dateValue = DateValue.tomorrow(this.f102851f, this.f102852g, this.f102853h);
        DateTimeValue dateTimeValue4 = new DateTimeValue(dateValue.getYear(), dateValue.getMonth(), dateValue.getDay(), (byte) (i2 - 24), (byte) i3, this.f102856k, this.f102857l, i);
        dateTimeValue4.f102858m = this.f102858m;
        return dateTimeValue4;
    }

    @Override // net.p110sf.saxon.value.CalendarValue
    public int compareTo(CalendarValue calendarValue, int i) throws NoDynamicContextException {
        if (calendarValue instanceof DateTimeValue) {
            DateTimeValue dateTimeValue = (DateTimeValue) calendarValue;
            if (getTimezoneInMinutes() == dateTimeValue.getTimezoneInMinutes()) {
                int i2 = this.f102851f;
                int i3 = dateTimeValue.f102851f;
                if (i2 != i3) {
                    return IntegerValue.signum(i2 - i3);
                }
                byte b = this.f102852g;
                byte b2 = dateTimeValue.f102852g;
                if (b != b2) {
                    return IntegerValue.signum(b - b2);
                }
                byte b3 = this.f102853h;
                byte b4 = dateTimeValue.f102853h;
                if (b3 != b4) {
                    return IntegerValue.signum(b3 - b4);
                }
                byte b5 = this.f102854i;
                byte b6 = dateTimeValue.f102854i;
                if (b5 != b6) {
                    return IntegerValue.signum(b5 - b6);
                }
                byte b7 = this.f102855j;
                byte b8 = dateTimeValue.f102855j;
                if (b7 != b8) {
                    return IntegerValue.signum(b7 - b8);
                }
                byte b9 = this.f102856k;
                byte b10 = dateTimeValue.f102856k;
                if (b9 != b10) {
                    return IntegerValue.signum(b9 - b10);
                }
                int i4 = this.f102857l;
                int i5 = dateTimeValue.f102857l;
                if (i4 != i5) {
                    return IntegerValue.signum(i4 - i5);
                }
                return 0;
            }
            return adjustToUTC(i).compareTo(dateTimeValue.adjustToUTC(i), i);
        }
        throw new ClassCastException("DateTime values are not comparable to " + calendarValue.getClass());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public DateTimeValue copyAsSubType(AtomicType atomicType) {
        DateTimeValue dateTimeValue = new DateTimeValue(this.f102851f, this.f102852g, this.f102853h, this.f102854i, this.f102855j, this.f102856k, this.f102857l, getTimezoneInMinutes());
        dateTimeValue.f102858m = this.f102858m;
        dateTimeValue.typeLabel = atomicType;
        return dateTimeValue;
    }

    public static DateTimeValue fromJavaInstant(Instant instant) {
        try {
            return fromJavaInstant(instant.getEpochSecond(), instant.getNano());
        } catch (XPathException unused) {
            throw new AssertionError();
        }
    }

    public static ConversionResult makeDateTimeValue(UnicodeString unicodeString, ConversionRules conversionRules) {
        int i;
        char c;
        int i2;
        DateTimeValue dateTimeValue = new DateTimeValue();
        boolean z = true;
        dateTimeValue.f102858m = !conversionRules.isAllowYearZero();
        StringTokenizer stringTokenizer = new StringTokenizer(Whitespace.trim(unicodeString).toString(), "-:.+TZ", true);
        if (!stringTokenizer.hasMoreTokens()) {
            return m64661j("too short", unicodeString);
        }
        String nextToken = stringTokenizer.nextToken();
        if ("+".equals(nextToken)) {
            return m64661j("Date must not start with '+' sign", unicodeString);
        }
        if (!"-".equals(nextToken)) {
            i = 1;
        } else {
            if (!stringTokenizer.hasMoreTokens()) {
                return m64661j("No year after '-'", unicodeString);
            }
            nextToken = stringTokenizer.nextToken();
            i = -1;
        }
        int simpleInteger = DurationValue.simpleInteger(nextToken);
        if (simpleInteger < 0) {
            if (simpleInteger == -1) {
                return m64661j("Non-numeric year component", unicodeString);
            }
            return m64662k("Year is outside the range that Saxon can handle", unicodeString, "FODT0001");
        }
        dateTimeValue.f102851f = simpleInteger * i;
        if (nextToken.length() < 4) {
            return m64661j("Year is less than four digits", unicodeString);
        }
        if (nextToken.length() > 4 && nextToken.charAt(0) == '0') {
            return m64661j("When year exceeds 4 digits, leading zeroes are not allowed", unicodeString);
        }
        if (dateTimeValue.f102851f == 0 && !conversionRules.isAllowYearZero()) {
            return m64661j("Year zero is not allowed", unicodeString);
        }
        if (i < 0 && !conversionRules.isAllowYearZero()) {
            dateTimeValue.f102851f++;
        }
        if (!stringTokenizer.hasMoreTokens()) {
            return m64661j("Too short", unicodeString);
        }
        if (!"-".equals(stringTokenizer.nextToken())) {
            return m64661j("Wrong delimiter after year", unicodeString);
        }
        if (!stringTokenizer.hasMoreTokens()) {
            return m64661j("Too short", unicodeString);
        }
        String nextToken2 = stringTokenizer.nextToken();
        if (nextToken2.length() != 2) {
            return m64661j("Month must be two digits", unicodeString);
        }
        int simpleInteger2 = DurationValue.simpleInteger(nextToken2);
        if (simpleInteger2 < 0) {
            return m64661j("Non-numeric month component", unicodeString);
        }
        byte b = (byte) simpleInteger2;
        dateTimeValue.f102852g = b;
        if (b >= 1 && b <= 12) {
            if (!stringTokenizer.hasMoreTokens()) {
                return m64661j("Too short", unicodeString);
            }
            if (!"-".equals(stringTokenizer.nextToken())) {
                return m64661j("Wrong delimiter after month", unicodeString);
            }
            if (!stringTokenizer.hasMoreTokens()) {
                return m64661j("Too short", unicodeString);
            }
            String nextToken3 = stringTokenizer.nextToken();
            if (nextToken3.length() != 2) {
                return m64661j("Day must be two digits", unicodeString);
            }
            int simpleInteger3 = DurationValue.simpleInteger(nextToken3);
            if (simpleInteger3 < 0) {
                return m64661j("Non-numeric day component", unicodeString);
            }
            byte b2 = (byte) simpleInteger3;
            dateTimeValue.f102853h = b2;
            if (b2 >= 1 && b2 <= 31) {
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64661j("Too short", unicodeString);
                }
                if (!"T".equals(stringTokenizer.nextToken())) {
                    return m64661j("Wrong delimiter after day", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64661j("Too short", unicodeString);
                }
                String nextToken4 = stringTokenizer.nextToken();
                if (nextToken4.length() != 2) {
                    return m64661j("Hour must be two digits", unicodeString);
                }
                int simpleInteger4 = DurationValue.simpleInteger(nextToken4);
                if (simpleInteger4 < 0) {
                    return m64661j("Non-numeric hour component", unicodeString);
                }
                byte b3 = (byte) simpleInteger4;
                dateTimeValue.f102854i = b3;
                if (b3 > 24) {
                    return m64661j("Hour is out of range", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64661j("Too short", unicodeString);
                }
                if (!":".equals(stringTokenizer.nextToken())) {
                    return m64661j("Wrong delimiter after hour", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64661j("Too short", unicodeString);
                }
                String nextToken5 = stringTokenizer.nextToken();
                if (nextToken5.length() != 2) {
                    return m64661j("Minute must be two digits", unicodeString);
                }
                int simpleInteger5 = DurationValue.simpleInteger(nextToken5);
                if (simpleInteger5 < 0) {
                    return m64661j("Non-numeric minute component", unicodeString);
                }
                byte b4 = (byte) simpleInteger5;
                dateTimeValue.f102855j = b4;
                if (b4 > 59) {
                    return m64661j("Minute is out of range", unicodeString);
                }
                if (dateTimeValue.f102854i == 24 && b4 != 0) {
                    return m64661j("If hour is 24, minute must be 00", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64661j("Too short", unicodeString);
                }
                if (!":".equals(stringTokenizer.nextToken())) {
                    return m64661j("Wrong delimiter after minute", unicodeString);
                }
                if (!stringTokenizer.hasMoreTokens()) {
                    return m64661j("Too short", unicodeString);
                }
                String nextToken6 = stringTokenizer.nextToken();
                if (nextToken6.length() != 2) {
                    return m64661j("Second must be two digits", unicodeString);
                }
                int simpleInteger6 = DurationValue.simpleInteger(nextToken6);
                if (simpleInteger6 < 0) {
                    return m64661j("Non-numeric second component", unicodeString);
                }
                byte b5 = (byte) simpleInteger6;
                dateTimeValue.f102856k = b5;
                if (b5 > 59) {
                    return m64661j("Second is out of range", unicodeString);
                }
                if (dateTimeValue.f102854i == 24 && b5 != 0) {
                    return m64661j("If hour is 24, second must be 00", unicodeString);
                }
                char c2 = 0;
                int i3 = 0;
                boolean z2 = false;
                while (stringTokenizer.hasMoreTokens()) {
                    if (c2 == '\t') {
                        return m64661j("Characters after the end", unicodeString);
                    }
                    String nextToken7 = stringTokenizer.nextToken();
                    if (".".equals(nextToken7)) {
                        if (c2 != 0) {
                            return m64661j("Decimal separator occurs twice", unicodeString);
                        }
                        if (!stringTokenizer.hasMoreTokens()) {
                            return m64661j("Decimal point must be followed by digits", unicodeString);
                        }
                        String nextToken8 = stringTokenizer.nextToken();
                        if (nextToken8.length() > 9 && nextToken8.matches("^[0-9]+$")) {
                            nextToken8 = nextToken8.substring(0, 9);
                        }
                        if (DurationValue.simpleInteger(nextToken8) < 0) {
                            return m64661j("Non-numeric fractional seconds component", unicodeString);
                        }
                        int round = (int) Math.round(Double.parseDouble('.' + nextToken8) * 1.0E9d);
                        if (round == 1000000000) {
                            round--;
                        }
                        dateTimeValue.f102857l = round;
                        if (dateTimeValue.f102854i == 24 && round != 0) {
                            return m64661j("If hour is 24, fractional seconds must be 0", unicodeString);
                        }
                        c2 = 1;
                        i2 = i3;
                    } else if (Constants.HASIDCALL_INDEX_SIG.equals(nextToken7)) {
                        if (c2 > 1) {
                            return m64661j("Z cannot occur here", unicodeString);
                        }
                        dateTimeValue.setTimezoneInMinutes(0);
                        i2 = 0;
                        c2 = '\t';
                    } else if ("+".equals(nextToken7) || "-".equals(nextToken7)) {
                        c = ';';
                        if (c2 > 1) {
                            return m64661j(nextToken7 + " cannot occur here", unicodeString);
                        }
                        if (!stringTokenizer.hasMoreTokens()) {
                            return m64661j("Missing timezone", unicodeString);
                        }
                        String nextToken9 = stringTokenizer.nextToken();
                        if (nextToken9.length() != 2) {
                            return m64661j("Timezone hour must be two digits", unicodeString);
                        }
                        int simpleInteger7 = DurationValue.simpleInteger(nextToken9);
                        if (simpleInteger7 < 0) {
                            return m64661j("Non-numeric timezone hour component", unicodeString);
                        }
                        if (simpleInteger7 > 14) {
                            return m64661j("Timezone is out of range (-14:00 to +14:00)", unicodeString);
                        }
                        int i4 = simpleInteger7 * 60;
                        if ("-".equals(nextToken7)) {
                            z2 = true;
                        }
                        i2 = i4;
                        c2 = 2;
                        i3 = i2;
                    } else {
                        if (!":".equals(nextToken7)) {
                            return m64661j("Timezone format is incorrect", unicodeString);
                        }
                        if (c2 != 2) {
                            return m64661j("Misplaced ':'", unicodeString);
                        }
                        String nextToken10 = stringTokenizer.nextToken();
                        int simpleInteger8 = DurationValue.simpleInteger(nextToken10);
                        if (simpleInteger8 < 0) {
                            return m64661j("Non-numeric timezone minute component", unicodeString);
                        }
                        if (nextToken10.length() != 2) {
                            return m64661j("Timezone minute must be two digits", unicodeString);
                        }
                        if (simpleInteger8 > 59) {
                            return m64661j("Timezone minute is out of range", unicodeString);
                        }
                        if (Math.abs(i3) == 840 && simpleInteger8 != 0) {
                            return m64661j("Timezone is out of range (-14:00 to +14:00)", unicodeString);
                        }
                        int i5 = i3 + simpleInteger8;
                        if (z2) {
                            i5 = -i5;
                        }
                        dateTimeValue.setTimezoneInMinutes(i5);
                        i2 = i5;
                        c2 = '\t';
                    }
                    c = ';';
                    i3 = i2;
                }
                if (c2 != 2 && c2 != 3) {
                    if (dateTimeValue.f102854i == 24) {
                        dateTimeValue.f102854i = (byte) 0;
                    } else {
                        z = false;
                    }
                    if (!GDateValue.isValidDate(dateTimeValue.f102851f, dateTimeValue.f102852g, dateTimeValue.f102853h)) {
                        return m64661j("Non-existent date", unicodeString);
                    }
                    if (z) {
                        DateValue dateValue = DateValue.tomorrow(dateTimeValue.f102851f, dateTimeValue.f102852g, dateTimeValue.f102853h);
                        dateTimeValue.f102851f = dateValue.getYear();
                        dateTimeValue.f102852g = dateValue.getMonth();
                        dateTimeValue.f102853h = dateValue.getDay();
                    }
                    dateTimeValue.typeLabel = BuiltInAtomicType.DATE_TIME;
                    return dateTimeValue;
                }
                return m64661j("Timezone incomplete", unicodeString);
            }
            return m64661j("Day is out of range", unicodeString);
        }
        return m64661j("Month is out of range", unicodeString);
    }

    public DateTimeValue(int i, byte b, byte b2, byte b3, byte b4, byte b5, int i2, int i3) {
        this.f102858m = false;
        this.f102851f = i;
        this.f102852g = b;
        this.f102853h = b2;
        this.f102854i = b3;
        this.f102855j = b4;
        this.f102856k = b5;
        this.f102857l = i2;
        setTimezoneInMinutes(i3);
        this.typeLabel = BuiltInAtomicType.DATE_TIME;
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof DateTimeValue) {
            try {
                return compareTo((DateTimeValue) xPathComparable, Integer.MAX_VALUE);
            } catch (Exception unused) {
                throw new ClassCastException("DateTime comparison requires access to implicit timezone");
            }
        }
        throw new ClassCastException("Cannot compare xs:dateTime with " + xPathComparable.toString());
    }

    public DateTimeValue(int i, byte b, byte b2, byte b3, byte b4, byte b5, int i2, int i3, boolean z) {
        this.f102858m = z;
        this.f102851f = i;
        this.f102852g = b;
        this.f102853h = b2;
        this.f102854i = b3;
        this.f102855j = b4;
        this.f102856k = b5;
        this.f102857l = i2 * 1000;
        setTimezoneInMinutes(i3);
        this.typeLabel = BuiltInAtomicType.DATE_TIME;
    }
}
