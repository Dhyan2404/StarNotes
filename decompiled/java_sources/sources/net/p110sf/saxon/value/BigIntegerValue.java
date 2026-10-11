package net.p110sf.saxon.value;

import com.fasterxml.jackson.core.base.ParserBase;
import java.math.BigDecimal;
import java.math.BigInteger;
import net.p110sf.saxon.expr.Calculator;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public final class BigIntegerValue extends IntegerValue {

    /* renamed from: h */
    public final BigInteger f102847h;

    /* renamed from: i */
    public static final BigInteger f102845i = BigInteger.valueOf(2147483647L);

    /* renamed from: j */
    public static final BigInteger f102846j = BigInteger.valueOf(ParserBase.f21225q);
    public static final BigInteger MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);
    public static final BigInteger MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
    public static final BigInteger MAX_UNSIGNED_LONG = new BigInteger("18446744073709551615");
    public static final BigIntegerValue ZERO = new BigIntegerValue(BigInteger.ZERO);

    public BigIntegerValue(BigInteger bigInteger) {
        this.f102847h = bigInteger;
        this.typeLabel = BuiltInAtomicType.INTEGER;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue abs() {
        return this.f102847h.signum() >= 0 ? this : new BigIntegerValue(this.f102847h.abs());
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public BigInteger asBigInteger() {
        return this.f102847h;
    }

    public BigDecimal asDecimal() {
        return new BigDecimal(this.f102847h);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int asSubscript() {
        if (this.f102847h.compareTo(BigInteger.ZERO) <= 0 || this.f102847h.compareTo(f102845i) > 0) {
            return -1;
        }
        return (int) longValue();
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue ceiling() {
        return this;
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public ValidationFailure convertToSubType(BuiltInAtomicType builtInAtomicType, boolean z) {
        if (!z) {
            this.typeLabel = builtInAtomicType;
            return null;
        }
        if (IntegerValue.checkBigRange(this.f102847h, builtInAtomicType)) {
            this.typeLabel = builtInAtomicType;
            return null;
        }
        ValidationFailure validationFailure = new ValidationFailure("Integer value is out of range for subtype " + builtInAtomicType.getDisplayName());
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        if (atomicType.getPrimitiveType() != 533) {
            return new BigDecimalValue(new BigDecimal(this.f102847h));
        }
        BigIntegerValue bigIntegerValue = new BigIntegerValue(this.f102847h);
        bigIntegerValue.typeLabel = atomicType;
        return bigIntegerValue;
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public NumericValue div(IntegerValue integerValue) throws XPathException {
        return Calculator.decimalDivide(new BigDecimalValue(new BigDecimal(this.f102847h)), new BigDecimalValue(new BigDecimal(integerValue instanceof BigIntegerValue ? ((BigIntegerValue) integerValue).f102847h : BigInteger.valueOf(integerValue.longValue()))));
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return this.f102847h.compareTo(BigInteger.ZERO) != 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue floor() {
        return this;
    }

    @Override // net.p110sf.saxon.value.IntegerValue, net.p110sf.saxon.value.DecimalValue, net.p110sf.saxon.value.NumericValue
    public BigDecimal getDecimalValue() {
        return new BigDecimal(this.f102847h);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public double getDoubleValue() {
        return this.f102847h.doubleValue();
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public float getFloatValue() {
        return (float) getDoubleValue();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return BMPString.m63877of(this.f102847h.toString());
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return (this.f102847h.compareTo(f102846j) < 0 || this.f102847h.compareTo(f102845i) > 0) ? Double.valueOf(getDoubleValue()).hashCode() : this.f102847h.intValue();
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue idiv(IntegerValue integerValue) throws XPathException {
        if (integerValue.signum() != 0) {
            return IntegerValue.makeIntegerValue(this.f102847h.divide(integerValue instanceof BigIntegerValue ? ((BigIntegerValue) integerValue).f102847h : BigInteger.valueOf(integerValue.longValue())));
        }
        throw new XPathException("Integer division by zero", "FOAR0001");
    }

    @Override // net.p110sf.saxon.value.IntegerValue, net.p110sf.saxon.value.NumericValue
    public boolean isWholeNumber() {
        return true;
    }

    public boolean isWithinLongRange() {
        return this.f102847h.compareTo(MIN_LONG) >= 0 && this.f102847h.compareTo(MAX_LONG) <= 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public long longValue() {
        return this.f102847h.longValue();
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue minus(IntegerValue integerValue) {
        return integerValue instanceof BigIntegerValue ? IntegerValue.makeIntegerValue(this.f102847h.subtract(((BigIntegerValue) integerValue).f102847h)) : IntegerValue.makeIntegerValue(this.f102847h.subtract(BigInteger.valueOf(((Int64Value) integerValue).longValue())));
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue mod(IntegerValue integerValue) throws XPathException {
        if (integerValue.signum() != 0) {
            return integerValue instanceof BigIntegerValue ? IntegerValue.makeIntegerValue(this.f102847h.remainder(((BigIntegerValue) integerValue).f102847h)) : IntegerValue.makeIntegerValue(this.f102847h.remainder(BigInteger.valueOf(integerValue.longValue())));
        }
        throw new XPathException("Integer modulo zero", "FOAR0001");
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue negate() {
        return new BigIntegerValue(this.f102847h.negate());
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue plus(IntegerValue integerValue) {
        return integerValue instanceof BigIntegerValue ? IntegerValue.makeIntegerValue(this.f102847h.add(((BigIntegerValue) integerValue).f102847h)) : IntegerValue.makeIntegerValue(this.f102847h.add(BigInteger.valueOf(((Int64Value) integerValue).longValue())));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue round(int i) {
        if (i >= 0) {
            return this;
        }
        BigInteger pow = BigInteger.valueOf(10L).pow(-i);
        BigInteger[] divideAndRemainder = this.f102847h.divideAndRemainder(pow);
        if (divideAndRemainder[1].compareTo(pow.divide(BigInteger.valueOf(2L))) >= 0) {
            divideAndRemainder[0] = divideAndRemainder[0].add(BigInteger.valueOf(1L));
        }
        return IntegerValue.makeIntegerValue(divideAndRemainder[0].multiply(pow));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue roundHalfToEven(int i) {
        if (i >= 0) {
            return this;
        }
        BigInteger pow = BigInteger.valueOf(10L).pow(-i);
        BigInteger[] divideAndRemainder = this.f102847h.divideAndRemainder(pow);
        int compareTo = divideAndRemainder[1].compareTo(pow.divide(BigInteger.valueOf(2L)));
        if (compareTo > 0) {
            divideAndRemainder[0] = divideAndRemainder[0].add(BigInteger.valueOf(1L));
        } else if (compareTo == 0 && divideAndRemainder[0].mod(BigInteger.valueOf(2L)).signum() != 0) {
            divideAndRemainder[0] = divideAndRemainder[0].add(BigInteger.valueOf(1L));
        }
        return IntegerValue.makeIntegerValue(divideAndRemainder[0].multiply(pow));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int signum() {
        return this.f102847h.signum();
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue times(IntegerValue integerValue) {
        return integerValue instanceof BigIntegerValue ? IntegerValue.makeIntegerValue(this.f102847h.multiply(((BigIntegerValue) integerValue).f102847h)) : IntegerValue.makeIntegerValue(this.f102847h.multiply(BigInteger.valueOf(((Int64Value) integerValue).longValue())));
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public ValidationFailure validateAgainstSubType(BuiltInAtomicType builtInAtomicType) {
        if (IntegerValue.checkBigRange(this.f102847h, builtInAtomicType)) {
            this.typeLabel = builtInAtomicType;
            return null;
        }
        ValidationFailure validationFailure = new ValidationFailure("Integer value is out of range for subtype " + builtInAtomicType.getDisplayName());
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    @Override // net.p110sf.saxon.value.NumericValue, java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof NumericValue) {
            if (xPathComparable instanceof BigIntegerValue) {
                return this.f102847h.compareTo(((BigIntegerValue) xPathComparable).f102847h);
            }
            if (xPathComparable instanceof Int64Value) {
                return this.f102847h.compareTo(BigInteger.valueOf(((Int64Value) xPathComparable).longValue()));
            }
            if (xPathComparable instanceof BigDecimalValue) {
                return asDecimal().compareTo(((BigDecimalValue) xPathComparable).getDecimalValue());
            }
            return super.compareTo(xPathComparable);
        }
        throw new ClassCastException("Cannot compare xs:integer to " + xPathComparable);
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public IntegerValue reduce() {
        if (compareTo(Long.MAX_VALUE) >= 0 || compareTo(Long.MIN_VALUE) <= 0) {
            return this;
        }
        Int64Value int64Value = new Int64Value(longValue());
        int64Value.setTypeLabel(this.typeLabel);
        return int64Value;
    }

    public BigIntegerValue(BigInteger bigInteger, AtomicType atomicType) {
        this.f102847h = bigInteger;
        this.typeLabel = atomicType;
    }

    public BigIntegerValue(long j) {
        this.f102847h = BigInteger.valueOf(j);
        this.typeLabel = BuiltInAtomicType.INTEGER;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int compareTo(long j) {
        if (j == 0) {
            return this.f102847h.signum();
        }
        return this.f102847h.compareTo(BigInteger.valueOf(j));
    }
}
