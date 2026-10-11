package net.p110sf.saxon.value;

import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.Duration;
import java.util.Objects;
import kotlinx.coroutines.EventLoop_commonKt;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public final class DayTimeDurationValue extends DurationValue implements XPathComparable, ContextFreeAtomicValue {
    public DayTimeDurationValue() {
        this.typeLabel = BuiltInAtomicType.DAY_TIME_DURATION;
    }

    public static DayTimeDurationValue fromJavaDuration(Duration duration) {
        long seconds = duration.getSeconds();
        int nano = duration.getNano();
        return seconds < 0 ? new DayTimeDurationValue(0, 0, 0, seconds, nano - 1000000000) : new DayTimeDurationValue(0, 0, 0, seconds, nano);
    }

    public static DayTimeDurationValue fromMicroseconds(long j) throws IllegalArgumentException {
        int signum = Long.signum(j);
        if (signum < 0) {
            j = -j;
        }
        return new DayTimeDurationValue(signum, 0, 0, 0, j / 1000000, (int) (j % 1000000));
    }

    public static DayTimeDurationValue fromMilliseconds(long j) throws ValidationException {
        int signum = Long.signum(j);
        if (signum < 0) {
            j = -j;
        }
        try {
            return new DayTimeDurationValue(signum, 0, 0, 0, j / 1000, ((int) (j % 1000)) * 1000);
        } catch (IllegalArgumentException unused) {
            throw new ValidationFailure("Duration exceeds limits").makeException();
        }
    }

    public static DayTimeDurationValue fromNanoseconds(long j) throws IllegalArgumentException {
        return new DayTimeDurationValue(0, 0, 0, j / 1000000000, (int) (j % 1000000000));
    }

    public static DayTimeDurationValue fromSeconds(BigDecimal bigDecimal) {
        long longValueExact;
        DayTimeDurationValue dayTimeDurationValue = new DayTimeDurationValue();
        boolean z = bigDecimal.signum() < 0;
        dayTimeDurationValue._negative = z;
        if (z) {
            bigDecimal = bigDecimal.negate();
        }
        longValueExact = bigDecimal.toBigInteger().longValueExact();
        dayTimeDurationValue._seconds = longValueExact;
        int intValue = bigDecimal.remainder(BigDecimal.ONE).multiply(BigDecimalValue.BIG_DECIMAL_ONE_BILLION).intValue();
        dayTimeDurationValue._nanoseconds = intValue;
        if (dayTimeDurationValue._seconds == 0 && intValue == 0) {
            dayTimeDurationValue._negative = false;
        }
        return dayTimeDurationValue;
    }

    public static ConversionResult makeDayTimeDurationValue(UnicodeString unicodeString) {
        ConversionResult makeDuration = DurationValue.makeDuration(unicodeString, false, true);
        if (makeDuration instanceof ValidationFailure) {
            return makeDuration;
        }
        return Converter.DurationToDayTimeDuration.INSTANCE.convert((AtomicValue) makeDuration);
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue add(DurationValue durationValue) throws XPathException {
        if (!(durationValue instanceof DayTimeDurationValue)) {
            XPathException xPathException = new XPathException("Cannot add two durations of different type");
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
        DayTimeDurationValue dayTimeDurationValue = (DayTimeDurationValue) durationValue;
        if (((this._seconds | dayTimeDurationValue._seconds) & 9223372032559808512L) == 0) {
            return fromNanoseconds(getLengthInNanoseconds() + dayTimeDurationValue.getLengthInNanoseconds());
        }
        try {
            return fromSeconds(getTotalSeconds().add(durationValue.getTotalSeconds()));
        } catch (IllegalArgumentException unused) {
            XPathException xPathException2 = new XPathException("Overflow when adding two durations");
            xPathException2.setErrorCode("FODT0002");
            throw xPathException2;
        }
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        DayTimeDurationValue fromSeconds = fromSeconds(getTotalSeconds());
        fromSeconds.typeLabel = atomicType;
        return fromSeconds;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue divide(double d) throws XPathException {
        if (Double.isNaN(d)) {
            XPathException xPathException = new XPathException("Cannot divide a duration by NaN");
            xPathException.setErrorCode("FOCA0005");
            throw xPathException;
        }
        if (d != 0.0d) {
            try {
                return fromSeconds(getTotalSeconds().divide(BigDecimal.valueOf(d)));
            } catch (ArithmeticException | IllegalArgumentException e) {
                if (e.getCause() instanceof XPathException) {
                    throw ((XPathException) e.getCause());
                }
                XPathException xPathException2 = new XPathException("Overflow when dividing a duration by a number", e);
                xPathException2.setErrorCode("FODT0002");
                throw xPathException2;
            }
        }
        XPathException xPathException3 = new XPathException("Cannot divide a duration by zero");
        xPathException3.setErrorCode("FODT0002");
        throw xPathException3;
    }

    public long getLengthInMicroseconds() {
        long j = this._seconds;
        if (j > EventLoop_commonKt.f98171f) {
            throw new ArithmeticException("Value is too large to be expressed in microseconds");
        }
        long j2 = (j * 1000000) + (this._nanoseconds / 1000);
        return this._negative ? -j2 : j2;
    }

    public long getLengthInNanoseconds() {
        long j = this._seconds;
        if (j > 9223372036L) {
            throw new ArithmeticException("Value is too large to be expressed in nanoseconds");
        }
        long j2 = (j * 1000000000) + this._nanoseconds;
        return this._negative ? -j2 : j2;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public double getLengthInSeconds() {
        double d = this._seconds + (this._nanoseconds / 1.0E9d);
        return this._negative ? -d : d;
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        if (this._negative) {
            unicodeBuilder.append('-');
        }
        int days = getDays();
        int hours = getHours();
        int minutes = getMinutes();
        int seconds = getSeconds();
        unicodeBuilder.append('P');
        if (days != 0) {
            unicodeBuilder.append(days + SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        }
        if (days == 0 || hours != 0 || minutes != 0 || seconds != 0 || this._nanoseconds != 0) {
            unicodeBuilder.append('T');
        }
        if (hours != 0) {
            unicodeBuilder.append(hours + "H");
        }
        if (minutes != 0) {
            unicodeBuilder.append(minutes + "M");
        }
        if (seconds != 0 || this._nanoseconds != 0 || (days == 0 && minutes == 0 && hours == 0)) {
            int i = this._nanoseconds;
            if (i == 0) {
                unicodeBuilder.append(seconds + "S");
            } else {
                DurationValue.formatFractionalSeconds(unicodeBuilder, seconds, (seconds * 1000000000) + i);
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.DAY_TIME_DURATION;
    }

    @Override // net.p110sf.saxon.value.ContextFreeAtomicValue
    public XPathComparable getXPathComparable() {
        return this;
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue negate() throws IllegalArgumentException {
        DayTimeDurationValue dayTimeDurationValue = new DayTimeDurationValue();
        dayTimeDurationValue.setTypeLabel(this.typeLabel);
        dayTimeDurationValue._seconds = this._seconds;
        dayTimeDurationValue._nanoseconds = this._nanoseconds;
        dayTimeDurationValue._negative = !this._negative;
        return dayTimeDurationValue;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue subtract(DurationValue durationValue) throws XPathException {
        if (!(durationValue instanceof DayTimeDurationValue)) {
            XPathException xPathException = new XPathException("Cannot subtract two durations of different type");
            xPathException.setErrorCode("XPTY0004");
            throw xPathException;
        }
        DayTimeDurationValue dayTimeDurationValue = (DayTimeDurationValue) durationValue;
        if (((this._seconds | dayTimeDurationValue._seconds) & 9223372032559808512L) == 0) {
            return fromNanoseconds(getLengthInNanoseconds() - dayTimeDurationValue.getLengthInNanoseconds());
        }
        try {
            return fromSeconds(getTotalSeconds().subtract(durationValue.getTotalSeconds()));
        } catch (IllegalArgumentException unused) {
            XPathException xPathException2 = new XPathException("Overflow when subtracting two durations");
            xPathException2.setErrorCode("FODT0002");
            throw xPathException2;
        }
    }

    public Duration toJavaDuration() {
        return this._negative ? Duration.ofSeconds(-this._seconds, -this._nanoseconds) : Duration.ofSeconds(this._seconds, this._nanoseconds);
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof DayTimeDurationValue) {
            Objects.requireNonNull(xPathComparable);
            DayTimeDurationValue dayTimeDurationValue = (DayTimeDurationValue) xPathComparable;
            boolean z = this._negative;
            if (z != dayTimeDurationValue._negative) {
                return z ? -1 : 1;
            }
            long j = this._seconds;
            long j2 = dayTimeDurationValue._seconds;
            if (j != j2) {
                return Long.compare(j, j2) * (this._negative ? -1 : 1);
            }
            return Integer.compare(this._nanoseconds, dayTimeDurationValue._nanoseconds) * (this._negative ? -1 : 1);
        }
        throw new ClassCastException("Cannot compare xs:dayTimeDuration to " + xPathComparable);
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) {
        return this;
    }

    public DayTimeDurationValue(int i, int i2, int i3, int i4, long j, int i5) throws IllegalArgumentException {
        if (i2 < 0 || i3 < 0 || i4 < 0 || j < 0 || i5 < 0) {
            throw new IllegalArgumentException("Negative component value");
        }
        if ((i2 * 86400.0d) + (i3 * 3600.0d) + (i4 * 60.0d) + j <= 9.223372036854776E18d) {
            this._negative = i < 0;
            this._months = 0;
            long j2 = (((((i2 * 24) + i3) * 60) + i4) * 60) + j;
            if (i5 > 1000000) {
                j2 += i5 / 1000000;
                i5 %= 1000000;
            }
            this._seconds = j2;
            this._nanoseconds = i5 * 1000;
            if (j2 == 0 && i5 == 0) {
                this._negative = false;
            }
            this.typeLabel = BuiltInAtomicType.DAY_TIME_DURATION;
            return;
        }
        throw new IllegalArgumentException("Duration seconds limit exceeded");
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue multiply(long j) throws XPathException {
        if (Math.abs(j) < 2147483647L && Math.abs(this._seconds) < 2147483647L && this._nanoseconds == 0) {
            return new DayTimeDurationValue(0, 0, 0, this._seconds * j * (this._negative ? -1 : 1), 0);
        }
        return multiply(BigDecimal.valueOf(j));
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DayTimeDurationValue multiply(double d) throws XPathException {
        if (!Double.isNaN(d)) {
            if (!Double.isInfinite(d)) {
                return multiply(BigDecimal.valueOf(d));
            }
            XPathException xPathException = new XPathException("Cannot multiply a duration by infinity");
            xPathException.setErrorCode("FODT0002");
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException("Cannot multiply a duration by NaN");
        xPathException2.setErrorCode("FOCA0005");
        throw xPathException2;
    }

    public DayTimeDurationValue(int i, int i2, int i3, long j, int i4) throws IllegalArgumentException {
        boolean z = i > 0 || i2 > 0 || i3 > 0 || j > 0 || i4 > 0;
        boolean z2 = i < 0 || i2 < 0 || i3 < 0 || j < 0 || i4 < 0;
        if (z && z2) {
            throw new IllegalArgumentException("Some component values are positive and others are negative");
        }
        if (z2) {
            this._negative = true;
            i = -i;
            i2 = -i2;
            i3 = -i3;
            j = -j;
            i4 = -i4;
        }
        if ((i * 86400.0d) + (i2 * 3600.0d) + (i3 * 60.0d) + j <= 9.223372036854776E18d) {
            this._months = 0;
            long j2 = (((((i * 24) + i2) * 60) + i3) * 60) + j;
            if (i4 > 1000000000) {
                j2 += i4 / 1000000000;
                i4 %= 1000000000;
            }
            this._seconds = j2;
            this._nanoseconds = i4;
            this.typeLabel = BuiltInAtomicType.DAY_TIME_DURATION;
            return;
        }
        throw new IllegalArgumentException("Duration seconds limit exceeded");
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public BigDecimalValue divide(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof DayTimeDurationValue) {
            BigDecimal totalSeconds = getTotalSeconds();
            BigDecimal totalSeconds2 = durationValue.getTotalSeconds();
            if (totalSeconds2.signum() != 0) {
                return new BigDecimalValue(totalSeconds.divide(totalSeconds2, 20, RoundingMode.HALF_EVEN));
            }
            throw new XPathException("Divide by zero (durations)", "FOAR0001");
        }
        XPathException xPathException = new XPathException("Cannot divide two durations of different type");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DayTimeDurationValue multiply(BigDecimal bigDecimal) throws XPathException {
        try {
            return fromSeconds(getTotalSeconds().multiply(bigDecimal));
        } catch (ArithmeticException | IllegalArgumentException e) {
            if (e.getCause() instanceof XPathException) {
                throw ((XPathException) e.getCause());
            }
            XPathException xPathException = new XPathException("Overflow when multiplying a duration by a number", e);
            xPathException.setErrorCode("FODT0002");
            throw xPathException;
        }
    }
}
