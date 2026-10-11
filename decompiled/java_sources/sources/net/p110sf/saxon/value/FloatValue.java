package net.p110sf.saxon.value;

import java.math.BigDecimal;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.AtomicSortComparer;
import net.p110sf.saxon.expr.sort.DoubleSortComparer;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.Converter;
import net.p110sf.saxon.type.ValidationException;

/* loaded from: classes11.dex */
public final class FloatValue extends NumericValue {

    /* renamed from: e */
    public final float f102868e;
    public static final FloatValue ZERO = new FloatValue(0.0f);
    public static final FloatValue NEGATIVE_ZERO = new FloatValue(-0.0f);
    public static final FloatValue ONE = new FloatValue(1.0f);
    public static final FloatValue NaN = new FloatValue(Float.NaN);

    public FloatValue(float f) {
        this.f102868e = f;
        this.typeLabel = BuiltInAtomicType.FLOAT;
    }

    public static UnicodeString floatToString(float f) {
        return FloatingPointConverter.appendFloat(new UnicodeBuilder(), f, false);
    }

    public static FloatValue makeFloatValue(float f) {
        return new FloatValue(f);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue abs() {
        float f = this.f102868e;
        return ((double) f) > 0.0d ? this : new FloatValue(Math.abs(f));
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.type.ConversionResult
    public AtomicValue asAtomic() {
        return this;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey asMapKey() {
        if (isNaN()) {
            return AtomicSortComparer.COLLATION_KEY_NaN;
        }
        if (Double.isInfinite(this.f102868e)) {
            return new DoubleValue(this.f102868e);
        }
        try {
            return new BigDecimalValue(this.f102868e);
        } catch (ValidationException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int asSubscript() {
        if (!isWholeNumber()) {
            return -1;
        }
        float f = this.f102868e;
        if (f <= 0.0f || f > 2.14748365E9f) {
            return -1;
        }
        return (int) f;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue ceiling() {
        return new FloatValue((float) Math.ceil(this.f102868e));
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        FloatValue floatValue = new FloatValue(this.f102868e);
        floatValue.typeLabel = atomicType;
        return floatValue;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        float f = this.f102868e;
        return (((double) f) == 0.0d || Float.isNaN(f)) ? false : true;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue floor() {
        return new FloatValue((float) Math.floor(this.f102868e));
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return FloatingPointConverter.appendFloat(new UnicodeBuilder(32), this.f102868e, true);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public BigDecimal getDecimalValue() throws ValidationException {
        try {
            return BigDecimal.valueOf(this.f102868e);
        } catch (NumberFormatException e) {
            throw new ValidationException(e);
        }
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public double getDoubleValue() {
        return this.f102868e;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public float getFloatValue() {
        return this.f102868e;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return floatToString(this.f102868e);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.FLOAT;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        float f = this.f102868e;
        return (f <= -2.14748365E9f || f >= 2.14748365E9f) ? Double.valueOf(getDoubleValue()).hashCode() : (int) f;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return (atomicValue instanceof FloatValue) && DoubleSortComparer.getInstance().comparesEqual(this, atomicValue);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isNaN() {
        return Float.isNaN(this.f102868e);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public boolean isNegativeZero() {
        float f = this.f102868e;
        return ((double) f) == 0.0d && (Float.floatToIntBits(f) & Integer.MIN_VALUE) != 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public boolean isWholeNumber() {
        float f = this.f102868e;
        return ((double) f) == Math.floor((double) f) && !Float.isInfinite(this.f102868e);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public long longValue() throws XPathException {
        return this.f102868e;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue negate() {
        return new FloatValue(-this.f102868e);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue round(int i) {
        if (Float.isNaN(this.f102868e) || Float.isInfinite(this.f102868e)) {
            return this;
        }
        float f = this.f102868e;
        return ((double) f) == 0.0d ? this : (i != 0 || f <= -2.14748365E9f || f >= 2.14748365E9f) ? new FloatValue(((DoubleValue) new DoubleValue(getDoubleValue()).round(i)).getFloatValue()) : (((double) f) < -0.5d || ((double) f) >= 0.0d) ? new FloatValue(Math.round(f)) : new FloatValue(-0.0f);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue roundHalfToEven(int i) {
        return new FloatValue(((DoubleValue) new DoubleValue(getDoubleValue()).roundHalfToEven(i)).getFloatValue());
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int signum() {
        if (Float.isNaN(this.f102868e)) {
            return 0;
        }
        return compareTo(0L);
    }

    @Override // net.p110sf.saxon.value.NumericValue, java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof NumericValue) {
            if (xPathComparable instanceof FloatValue) {
                float f = ((FloatValue) xPathComparable).f102868e;
                float f2 = this.f102868e;
                if (f2 == f) {
                    return 0;
                }
                return f2 < f ? -1 : 1;
            }
            if (xPathComparable instanceof DoubleValue) {
                return super.compareTo(xPathComparable);
            }
            return compareTo((XPathComparable) Converter.NumericToFloat.INSTANCE.convert((AtomicValue) xPathComparable));
        }
        throw new ClassCastException("Cannot compare xs:float to " + xPathComparable);
    }

    public FloatValue(float f, AtomicType atomicType) {
        this.f102868e = f;
        this.typeLabel = atomicType;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int compareTo(long j) {
        float f = (float) j;
        float f2 = this.f102868e;
        if (f2 == f) {
            return 0;
        }
        return f2 < f ? -1 : 1;
    }
}
