package net.p110sf.saxon.value;

import java.math.BigDecimal;
import java.math.RoundingMode;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.AtomicSortComparer;
import net.p110sf.saxon.expr.sort.DoubleSortComparer;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ValidationException;

/* loaded from: classes11.dex */
public final class DoubleValue extends NumericValue {

    /* renamed from: e */
    public final double f102862e;
    public static final DoubleValue ZERO = new DoubleValue(0.0d);
    public static final DoubleValue NEGATIVE_ZERO = new DoubleValue(-0.0d);
    public static final DoubleValue ONE = new DoubleValue(1.0d);
    public static final DoubleValue NaN = new DoubleValue(Double.NaN);

    public DoubleValue(double d) {
        this.f102862e = d;
        this.typeLabel = BuiltInAtomicType.DOUBLE;
    }

    public static UnicodeString doubleToString(double d) {
        return FloatingPointConverter.convertDouble(d, false);
    }

    public static DoubleValue makeDoubleValue(double d) {
        return new DoubleValue(d);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue abs() {
        double d = this.f102862e;
        return d > 0.0d ? this : new DoubleValue(Math.abs(d));
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey asMapKey() {
        if (isNaN()) {
            return AtomicSortComparer.COLLATION_KEY_NaN;
        }
        if (Double.isInfinite(this.f102862e)) {
            return this;
        }
        try {
            return new BigDecimalValue(this.f102862e);
        } catch (ValidationException e) {
            throw new AssertionError(e);
        }
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int asSubscript() {
        if (!isWholeNumber()) {
            return -1;
        }
        double d = this.f102862e;
        if (d <= 0.0d || d > 2.147483647E9d) {
            return -1;
        }
        return (int) d;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue ceiling() {
        return new DoubleValue(Math.ceil(this.f102862e));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int compareTo(long j) {
        double d = j;
        double d2 = this.f102862e;
        if (d2 == d) {
            return 0;
        }
        return d2 < d ? -1 : 1;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        DoubleValue doubleValue = new DoubleValue(this.f102862e);
        doubleValue.typeLabel = atomicType;
        return doubleValue;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        double d = this.f102862e;
        return (d == 0.0d || Double.isNaN(d)) ? false : true;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue floor() {
        return new DoubleValue(Math.floor(this.f102862e));
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        return FloatingPointConverter.convertDouble(this.f102862e, true);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public BigDecimal getDecimalValue() throws ValidationException {
        try {
            return BigDecimal.valueOf(this.f102862e);
        } catch (NumberFormatException e) {
            throw new ValidationException(e);
        }
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public double getDoubleValue() {
        return this.f102862e;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public float getFloatValue() {
        return (float) this.f102862e;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return doubleToString(this.f102862e);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.DOUBLE;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        double d = this.f102862e;
        return (d <= -2.147483648E9d || d >= 2.147483647E9d) ? Double.valueOf(d).hashCode() : (int) d;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return (atomicValue instanceof DoubleValue) && DoubleSortComparer.getInstance().comparesEqual(this, atomicValue);
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isNaN() {
        return Double.isNaN(this.f102862e);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public boolean isNegativeZero() {
        double d = this.f102862e;
        return d == 0.0d && (Double.doubleToLongBits(d) & Long.MIN_VALUE) != 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public boolean isWholeNumber() {
        double d = this.f102862e;
        return d == Math.floor(d) && !Double.isInfinite(this.f102862e);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public long longValue() throws XPathException {
        return (long) this.f102862e;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue negate() {
        return new DoubleValue(-this.f102862e);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue round(int i) {
        if (Double.isNaN(this.f102862e) || Double.isInfinite(this.f102862e)) {
            return this;
        }
        double d = this.f102862e;
        if (d == 0.0d) {
            return this;
        }
        if (i == 0 && d > -9.223372036854776E18d && d < 9.223372036854776E18d) {
            return (d < -0.5d || d >= 0.0d) ? new DoubleValue(Math.round(d)) : new DoubleValue(-0.0d);
        }
        double pow = Math.pow(10.0d, i + 1);
        double abs = Math.abs(this.f102862e * pow);
        if (Double.isInfinite(abs)) {
            return new DoubleValue(BigDecimal.valueOf(this.f102862e).setScale(i, RoundingMode.HALF_UP).doubleValue());
        }
        double d2 = abs % 10.0d;
        if (d2 >= 5.0d) {
            abs += 10.0d - d2;
        } else if (d2 < 5.0d) {
            abs -= d2;
        }
        double d3 = abs / pow;
        if (this.f102862e < 0.0d) {
            d3 = -d3;
        }
        return new DoubleValue(d3);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue roundHalfToEven(int i) {
        if (Double.isNaN(this.f102862e) || Double.isInfinite(this.f102862e) || this.f102862e == 0.0d) {
            return this;
        }
        double pow = Math.pow(10.0d, i + 1);
        double abs = Math.abs(this.f102862e * pow);
        if (Double.isInfinite(abs)) {
            return new DoubleValue(BigDecimal.valueOf(this.f102862e).setScale(i, RoundingMode.HALF_EVEN).doubleValue());
        }
        double d = abs % 10.0d;
        double d2 = (d > 5.0d ? abs + (10.0d - d) : d < 5.0d ? abs - d : abs % 20.0d == 15.0d ? abs + 5.0d : abs - 5.0d) / pow;
        if (this.f102862e < 0.0d) {
            d2 = -d2;
        }
        return new DoubleValue(d2);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int signum() {
        if (Double.isNaN(this.f102862e)) {
            return 0;
        }
        double d = this.f102862e;
        if (d > 0.0d) {
            return 1;
        }
        return d == 0.0d ? 0 : -1;
    }

    public DoubleValue(double d, AtomicType atomicType) {
        this.f102862e = d;
        this.typeLabel = atomicType;
    }
}
