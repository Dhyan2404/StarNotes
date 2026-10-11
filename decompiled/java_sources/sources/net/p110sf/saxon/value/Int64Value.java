package net.p110sf.saxon.value;

import com.couchbase.lite.internal.utils.StringUtils;
import com.fasterxml.jackson.core.base.ParserBase;
import java.math.BigDecimal;
import java.math.BigInteger;
import net.p110sf.saxon.expr.Calculator;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ValidationFailure;
import okhttp3.internal.connection.RealConnection;

/* loaded from: classes11.dex */
public final class Int64Value extends IntegerValue {

    /* renamed from: h */
    public final long f102896h;
    public static final Int64Value MINUS_ONE = new Int64Value(-1);
    public static final Int64Value ZERO = new Int64Value(0);
    public static final Int64Value PLUS_ONE = new Int64Value(1);
    public static final Int64Value MAX_LONG = new Int64Value(Long.MAX_VALUE);
    public static final Int64Value MIN_LONG = new Int64Value(Long.MIN_VALUE);

    /* renamed from: i */
    public static final Int64Value[] f102891i = {new Int64Value(0), new Int64Value(1), new Int64Value(2), new Int64Value(3), new Int64Value(4), new Int64Value(5), new Int64Value(6), new Int64Value(7), new Int64Value(8), new Int64Value(9), new Int64Value(10), new Int64Value(11), new Int64Value(12), new Int64Value(13), new Int64Value(14), new Int64Value(15), new Int64Value(16), new Int64Value(17), new Int64Value(18), new Int64Value(19), new Int64Value(20)};

    /* renamed from: j */
    public static final byte[] f102892j = StringConstants.bytes(StringUtils.NUMERIC);

    /* renamed from: k */
    public static final byte[] f102893k = StringConstants.bytes("0000000000111111111122222222223333333333444444444455555555556666666666777777777788888888889999999999");

    /* renamed from: l */
    public static final byte[] f102894l = StringConstants.bytes("0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789");

    /* renamed from: m */
    public static final long[] f102895m = {10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    public Int64Value(long j) {
        this.f102896h = j;
        this.typeLabel = BuiltInAtomicType.INTEGER;
    }

    /* renamed from: a */
    public static void m64672a(long j, int i, byte[] bArr) {
        byte b;
        if (j < 0) {
            j = -j;
            b = 45;
        } else {
            b = 0;
        }
        while (j > 2147483647L) {
            long j2 = j / 100;
            int i2 = (int) (j - (((j2 << 6) + (j2 << 5)) + (j2 << 2)));
            int i3 = i - 1;
            bArr[i3] = f102894l[i2];
            i = i3 - 1;
            bArr[i] = f102893k[i2];
            j = j2;
        }
        int i4 = (int) j;
        while (i4 >= 65536) {
            int i5 = i4 / 100;
            int i6 = i4 - (((i5 << 6) + (i5 << 5)) + (i5 << 2));
            int i7 = i - 1;
            bArr[i7] = f102894l[i6];
            i = i7 - 1;
            bArr[i] = f102893k[i6];
            i4 = i5;
        }
        while (true) {
            int i8 = (52429 * i4) >>> 19;
            i--;
            bArr[i] = f102892j[i4 - ((i8 << 3) + (i8 << 1))];
            if (i8 == 0) {
                break;
            } else {
                i4 = i8;
            }
        }
        if (b != 0) {
            bArr[i - 1] = b;
        }
    }

    /* renamed from: c */
    public static int m64673c(long j) {
        for (int i = 0; i < 18; i++) {
            if (j < f102895m[i]) {
                return i + 1;
            }
        }
        return 19;
    }

    public static Int64Value makeDerived(long j, AtomicType atomicType) {
        Int64Value int64Value = new Int64Value(j);
        int64Value.typeLabel = atomicType;
        return int64Value;
    }

    public static Int64Value makeIntegerValue(long j) {
        return (j > 20 || j < 0) ? new Int64Value(j) : f102891i[(int) j];
    }

    public static Int64Value signum(long j) {
        if (j == 0) {
            return ZERO;
        }
        return j < 0 ? MINUS_ONE : PLUS_ONE;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue abs() {
        long j = this.f102896h;
        return j > 0 ? this : j == Long.MIN_VALUE ? new BigIntegerValue(new BigInteger("9223372036854775808")) : makeIntegerValue(-j);
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public BigInteger asBigInteger() {
        return BigInteger.valueOf(this.f102896h);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int asSubscript() {
        long j = this.f102896h;
        if (j <= 0 || j > 2147483647L) {
            return -1;
        }
        return (int) j;
    }

    /* renamed from: b */
    public final boolean m64674b() {
        return (this.f102896h >> 31) != 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue ceiling() {
        return this;
    }

    public boolean checkRange(BuiltInAtomicType builtInAtomicType) {
        this.typeLabel = builtInAtomicType;
        return IntegerValue.checkRange(this.f102896h, builtInAtomicType);
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public ValidationFailure convertToSubType(BuiltInAtomicType builtInAtomicType, boolean z) {
        if (!z) {
            setSubType(builtInAtomicType);
            return null;
        }
        if (checkRange(builtInAtomicType)) {
            return null;
        }
        ValidationFailure validationFailure = new ValidationFailure("String " + this.f102896h + " cannot be converted to integer subtype " + builtInAtomicType.getDescription());
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        if (atomicType.getPrimitiveType() != 533) {
            return new BigDecimalValue(this.f102896h);
        }
        Int64Value int64Value = new Int64Value(this.f102896h);
        int64Value.typeLabel = atomicType;
        return int64Value;
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public NumericValue div(IntegerValue integerValue) throws XPathException {
        if (!(integerValue instanceof Int64Value)) {
            return new BigIntegerValue(this.f102896h).div(integerValue);
        }
        Int64Value int64Value = (Int64Value) integerValue;
        long j = int64Value.f102896h;
        if (j == 0) {
            throw new XPathException("Integer division by zero", "FOAR0001");
        }
        if (m64674b() || int64Value.m64674b()) {
            return new BigIntegerValue(this.f102896h).div(new BigIntegerValue(j));
        }
        long j2 = this.f102896h;
        return j2 % j == 0 ? makeIntegerValue(j2 / j) : Calculator.decimalDivide(new BigDecimalValue(this.f102896h), new BigDecimalValue(j));
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return this.f102896h != 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue floor() {
        return this;
    }

    @Override // net.p110sf.saxon.value.IntegerValue, net.p110sf.saxon.value.DecimalValue, net.p110sf.saxon.value.NumericValue
    public BigDecimal getDecimalValue() {
        return BigDecimal.valueOf(this.f102896h);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public double getDoubleValue() {
        return this.f102896h;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public float getFloatValue() {
        return (float) this.f102896h;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        long j = this.f102896h;
        if (j == Long.MIN_VALUE) {
            return StringConstants.MIN_LONG;
        }
        int m64673c = j < 0 ? m64673c(-j) + 1 : m64673c(j);
        byte[] bArr = new byte[m64673c];
        m64672a(this.f102896h, m64673c, bArr);
        return new Twine8(bArr);
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        long j = this.f102896h;
        return (j <= ParserBase.f21225q || j >= 2147483647L) ? Double.valueOf(getDoubleValue()).hashCode() : (int) j;
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue idiv(IntegerValue integerValue) throws XPathException {
        if (integerValue.signum() == 0) {
            throw new XPathException("Integer division by zero", "FOAR0001");
        }
        if (!(integerValue instanceof Int64Value)) {
            return new BigIntegerValue(this.f102896h).idiv(integerValue);
        }
        if (!m64674b()) {
            Int64Value int64Value = (Int64Value) integerValue;
            if (!int64Value.m64674b()) {
                return makeIntegerValue(this.f102896h / int64Value.f102896h);
            }
        }
        return new BigIntegerValue(this.f102896h).idiv(new BigIntegerValue(((Int64Value) integerValue).f102896h));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public long longValue() {
        return this.f102896h;
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue minus(IntegerValue integerValue) {
        if (!(integerValue instanceof Int64Value)) {
            return new BigIntegerValue(this.f102896h).minus(integerValue);
        }
        long j = this.f102896h;
        long j2 = (j >> 60) & 15;
        if (j2 != 0 && j2 != 15) {
            return new BigIntegerValue(this.f102896h).minus(new BigIntegerValue(((Int64Value) integerValue).f102896h));
        }
        Int64Value int64Value = (Int64Value) integerValue;
        long j3 = int64Value.f102896h;
        long j4 = (j3 >> 60) & 15;
        return (j4 == 0 || j4 == 15) ? makeIntegerValue(j - j3) : new BigIntegerValue(this.f102896h).minus(new BigIntegerValue(int64Value.f102896h));
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue mod(IntegerValue integerValue) throws XPathException {
        if (!(integerValue instanceof Int64Value)) {
            return new BigIntegerValue(this.f102896h).mod(integerValue);
        }
        Int64Value int64Value = (Int64Value) integerValue;
        long j = int64Value.f102896h;
        if (j != 0) {
            return (m64674b() || int64Value.m64674b()) ? new BigIntegerValue(this.f102896h).mod(new BigIntegerValue(int64Value.f102896h)) : makeIntegerValue(this.f102896h % j);
        }
        throw new XPathException("Integer modulo zero", "FOAR0001");
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue negate() {
        long j = this.f102896h;
        return j == Long.MIN_VALUE ? IntegerValue.makeIntegerValue(BigInteger.valueOf(j)).negate() : new Int64Value(-j);
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue plus(IntegerValue integerValue) {
        if (!(integerValue instanceof Int64Value)) {
            return new BigIntegerValue(this.f102896h).plus(integerValue);
        }
        long j = this.f102896h;
        long j2 = (j >> 60) & 15;
        if (j2 != 0 && j2 != 15) {
            return new BigIntegerValue(this.f102896h).plus(new BigIntegerValue(((Int64Value) integerValue).f102896h));
        }
        Int64Value int64Value = (Int64Value) integerValue;
        long j3 = int64Value.f102896h;
        long j4 = (j3 >> 60) & 15;
        return (j4 == 0 || j4 == 15) ? makeIntegerValue(j + j3) : new BigIntegerValue(this.f102896h).plus(new BigIntegerValue(int64Value.f102896h));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue round(int i) {
        if (i >= 0) {
            return this;
        }
        long j = this.f102896h;
        if (j == 0) {
            return this;
        }
        if (i < -15) {
            return new BigIntegerValue(this.f102896h).round(i);
        }
        long abs = Math.abs(j);
        long j2 = 1;
        for (long j3 = 1; j3 <= (-i); j3++) {
            j2 *= 10;
        }
        long j4 = abs % j2;
        long j5 = abs - j4;
        long j6 = j4 * 2;
        if (this.f102896h <= 0) {
            if (j6 > j2) {
                j5 += j2;
            }
            j5 = -j5;
        } else if (j6 >= j2) {
            j5 += j2;
        }
        return new Int64Value(j5);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue roundHalfToEven(int i) {
        if (i >= 0) {
            return this;
        }
        if (i < -15) {
            return new BigIntegerValue(this.f102896h).roundHalfToEven(i);
        }
        long abs = Math.abs(this.f102896h);
        long j = 1;
        for (long j2 = 1; j2 <= (-i); j2++) {
            j *= 10;
        }
        long j3 = abs % j;
        long j4 = abs - j3;
        long j5 = j3 * 2;
        if (j5 > j || (j5 >= j && j4 % (2 * j) != 0)) {
            j4 += j;
        }
        if (this.f102896h < 0) {
            j4 = -j4;
        }
        return new Int64Value(j4);
    }

    public void setSubType(AtomicType atomicType) {
        this.typeLabel = atomicType;
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public IntegerValue times(IntegerValue integerValue) {
        if (!(integerValue instanceof Int64Value)) {
            return new BigIntegerValue(this.f102896h).times(integerValue);
        }
        if (!m64674b()) {
            Int64Value int64Value = (Int64Value) integerValue;
            if (!int64Value.m64674b()) {
                return makeIntegerValue(this.f102896h * int64Value.f102896h);
            }
        }
        return new BigIntegerValue(this.f102896h).times(new BigIntegerValue(((Int64Value) integerValue).f102896h));
    }

    @Override // net.p110sf.saxon.value.IntegerValue
    public ValidationFailure validateAgainstSubType(BuiltInAtomicType builtInAtomicType) {
        if (IntegerValue.checkRange(this.f102896h, builtInAtomicType)) {
            return null;
        }
        ValidationFailure validationFailure = new ValidationFailure("Value " + this.f102896h + " cannot be converted to integer subtype " + builtInAtomicType.getDescription());
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    @Override // net.p110sf.saxon.value.NumericValue, java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof NumericValue) {
            if (xPathComparable instanceof Int64Value) {
                return Long.compare(this.f102896h, ((Int64Value) xPathComparable).f102896h);
            }
            if (xPathComparable instanceof BigIntegerValue) {
                return BigInteger.valueOf(this.f102896h).compareTo(((BigIntegerValue) xPathComparable).asBigInteger());
            }
            if (xPathComparable instanceof BigDecimalValue) {
                return BigDecimal.valueOf(this.f102896h).compareTo(((BigDecimalValue) xPathComparable).getDecimalValue());
            }
            return super.compareTo(xPathComparable);
        }
        throw new ClassCastException("Cannot compare xs:integer to " + xPathComparable);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int signum() {
        long j = this.f102896h;
        if (j > 0) {
            return 1;
        }
        return j == 0 ? 0 : -1;
    }

    public Int64Value(long j, AtomicType atomicType) {
        this.f102896h = j;
        this.typeLabel = atomicType;
    }

    public Int64Value(long j, BuiltInAtomicType builtInAtomicType, boolean z) throws XPathException {
        this.f102896h = j;
        this.typeLabel = builtInAtomicType;
        if (!z || IntegerValue.checkRange(j, builtInAtomicType)) {
            return;
        }
        XPathException xPathException = new XPathException("Integer value " + j + " is out of range for the requested type " + builtInAtomicType.getDescription());
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int compareTo(long j) {
        return Long.compare(this.f102896h, j);
    }
}
