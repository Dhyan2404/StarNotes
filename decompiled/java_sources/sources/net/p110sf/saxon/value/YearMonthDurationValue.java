package net.p110sf.saxon.value;

import java.math.BigDecimal;
import java.math.RoundingMode;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public final class YearMonthDurationValue extends DurationValue implements XPathComparable, ContextFreeAtomicValue {
    public YearMonthDurationValue() {
        this.typeLabel = BuiltInAtomicType.YEAR_MONTH_DURATION;
    }

    public static YearMonthDurationValue fromMonths(int i) {
        YearMonthDurationValue yearMonthDurationValue = new YearMonthDurationValue();
        yearMonthDurationValue._negative = i < 0;
        if (i < 0) {
            i = -i;
        }
        yearMonthDurationValue._months = i;
        yearMonthDurationValue._seconds = 0L;
        yearMonthDurationValue._nanoseconds = 0;
        return yearMonthDurationValue;
    }

    public static ConversionResult makeYearMonthDurationValue(UnicodeString unicodeString) {
        ConversionResult makeDuration = DurationValue.makeDuration(unicodeString, true, false);
        if (makeDuration instanceof ValidationFailure) {
            return makeDuration;
        }
        DurationValue durationValue = (DurationValue) makeDuration;
        return fromMonths(((durationValue.getYears() * 12) + durationValue.getMonths()) * durationValue.signum());
    }

    /* renamed from: a */
    public final BigDecimal m64694a(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.divide(bigDecimal2, 20, RoundingMode.HALF_EVEN);
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue add(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof YearMonthDurationValue) {
            return fromMonths(getLengthInMonths() + ((YearMonthDurationValue) durationValue).getLengthInMonths());
        }
        XPathException xPathException = new XPathException("Cannot add two durations of different type");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        YearMonthDurationValue fromMonths = fromMonths(getLengthInMonths());
        fromMonths.typeLabel = atomicType;
        return fromMonths;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue divide(double d) throws XPathException {
        if (!Double.isNaN(d)) {
            double lengthInMonths = getLengthInMonths() / d;
            if (!Double.isInfinite(lengthInMonths) && lengthInMonths <= 2.147483647E9d && lengthInMonths >= -2.147483648E9d) {
                return fromMonths((int) new DoubleValue(lengthInMonths).round(0).longValue());
            }
            XPathException xPathException = new XPathException("Overflow when dividing a duration by a number");
            xPathException.setErrorCode("FODT0002");
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException("Cannot divide a duration by NaN");
        xPathException2.setErrorCode("FOCA0005");
        throw xPathException2;
    }

    public int getLengthInMonths() {
        return this._months * (this._negative ? -1 : 1);
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        int years = getYears();
        int months = getMonths();
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        if (this._negative) {
            unicodeBuilder.append('-');
        }
        unicodeBuilder.append('P');
        if (years != 0) {
            unicodeBuilder.append(years + "Y");
        }
        if (months != 0 || years == 0) {
            unicodeBuilder.append(months + "M");
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.YEAR_MONTH_DURATION;
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
    public DurationValue negate() {
        return fromMonths(-getLengthInMonths());
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public DurationValue subtract(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof YearMonthDurationValue) {
            return fromMonths(getLengthInMonths() - ((YearMonthDurationValue) durationValue).getLengthInMonths());
        }
        XPathException xPathException = new XPathException("Cannot subtract two durations of different type");
        xPathException.setErrorCode("XPTY0004");
        throw xPathException;
    }

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof YearMonthDurationValue) {
            return Integer.compare(getLengthInMonths(), ((YearMonthDurationValue) xPathComparable).getLengthInMonths());
        }
        throw new ClassCastException("Cannot compare xs:yearMonthDuration with " + xPathComparable);
    }

    @Override // net.p110sf.saxon.value.DurationValue, net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public YearMonthDurationValue multiply(long j) throws XPathException {
        if (Math.abs(j) < 30000 && Math.abs(this._months) < 30000) {
            return fromMonths(((int) j) * getLengthInMonths());
        }
        return multiply(j);
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public YearMonthDurationValue multiply(double d) throws XPathException {
        if (!Double.isNaN(d)) {
            double lengthInMonths = d * getLengthInMonths();
            if (!Double.isInfinite(lengthInMonths) && lengthInMonths <= 2.147483647E9d && lengthInMonths >= -2.147483648E9d) {
                return fromMonths((int) new DoubleValue(lengthInMonths).round(0).longValue());
            }
            XPathException xPathException = new XPathException("Overflow when multiplying a duration by a number");
            xPathException.setErrorCode("FODT0002");
            throw xPathException;
        }
        XPathException xPathException2 = new XPathException("Cannot multiply a duration by NaN");
        xPathException2.setErrorCode("FOCA0005");
        throw xPathException2;
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public BigDecimalValue divide(DurationValue durationValue) throws XPathException {
        if (durationValue instanceof YearMonthDurationValue) {
            BigDecimal valueOf = BigDecimal.valueOf(getLengthInMonths());
            BigDecimal valueOf2 = BigDecimal.valueOf(((YearMonthDurationValue) durationValue).getLengthInMonths());
            if (valueOf2.signum() != 0) {
                return new BigDecimalValue(m64694a(valueOf, valueOf2));
            }
            throw new XPathException("Divide by zero (durations)", "FOAR0001");
        }
        throw new XPathException("Cannot divide two durations of different type", "XPTY0004");
    }

    @Override // net.p110sf.saxon.value.DurationValue
    public YearMonthDurationValue multiply(BigDecimal bigDecimal) throws XPathException {
        BigDecimal multiply = bigDecimal.multiply(BigDecimal.valueOf(getLengthInMonths()));
        if (multiply.abs().compareTo(BigDecimal.valueOf(2147483647L)) <= 0) {
            return fromMonths((int) new BigDecimalValue(multiply).round(0).longValue());
        }
        XPathException xPathException = new XPathException("Overflow when multiplying a duration by a number");
        xPathException.setErrorCode("FODT0002");
        throw xPathException;
    }
}
