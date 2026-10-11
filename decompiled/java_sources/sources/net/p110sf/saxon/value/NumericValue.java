package net.p110sf.saxon.value;

import java.math.BigDecimal;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public abstract class NumericValue extends AtomicValue implements XPathComparable, AtomicMatchKey, ContextFreeAtomicValue {
    public static boolean isInteger(AtomicValue atomicValue) {
        return atomicValue instanceof IntegerValue;
    }

    public static NumericValue parseNumber(String str) {
        if (str.indexOf(101) >= 0 || str.indexOf(69) >= 0) {
            try {
                return new DoubleValue(Double.parseDouble(str));
            } catch (NumberFormatException unused) {
                return DoubleValue.NaN;
            }
        }
        if (str.indexOf(46) >= 0) {
            ConversionResult makeDecimalValue = BigDecimalValue.makeDecimalValue(str, true);
            return makeDecimalValue instanceof ValidationFailure ? DoubleValue.NaN : (NumericValue) makeDecimalValue;
        }
        ConversionResult stringToInteger = IntegerValue.stringToInteger(str);
        return stringToInteger instanceof ValidationFailure ? DoubleValue.NaN : (NumericValue) stringToInteger;
    }

    public abstract NumericValue abs();

    public abstract int asSubscript();

    public abstract NumericValue ceiling();

    public abstract int compareTo(long j);

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public abstract boolean effectiveBooleanValue();

    @Override // net.p110sf.saxon.value.AtomicValue
    public final boolean equals(Object obj) {
        return (obj instanceof NumericValue) && compareTo((XPathComparable) obj) == 0;
    }

    public abstract NumericValue floor();

    public abstract BigDecimal getDecimalValue() throws ValidationException;

    public abstract double getDoubleValue();

    public abstract float getFloatValue();

    @Override // net.p110sf.saxon.value.ContextFreeAtomicValue
    public XPathComparable getXPathComparable() {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public final AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public abstract int hashCode();

    public boolean isNegativeZero() {
        return false;
    }

    public abstract boolean isWholeNumber();

    public abstract long longValue() throws XPathException;

    public abstract NumericValue negate();

    public abstract NumericValue round(int i);

    public abstract NumericValue roundHalfToEven(int i);

    @Override // net.p110sf.saxon.value.AtomicValue
    public String show() {
        return getStringValue();
    }

    public abstract int signum();

    @Override // java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof NumericValue) {
            double doubleValue = getDoubleValue();
            double doubleValue2 = ((NumericValue) xPathComparable).getDoubleValue();
            if (doubleValue == doubleValue2) {
                return 0;
            }
            return doubleValue < doubleValue2 ? -1 : 1;
        }
        throw new ClassCastException("Cannot compare numeric value to " + xPathComparable.toString());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return this;
    }
}
