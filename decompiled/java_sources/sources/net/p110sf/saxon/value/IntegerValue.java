package net.p110sf.saxon.value;

import com.fasterxml.jackson.core.base.ParserBase;
import java.math.BigDecimal;
import java.math.BigInteger;
import net.p110sf.saxon.functions.FormatNumber;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes11.dex */
public abstract class IntegerValue extends DecimalValue {

    /* renamed from: e */
    public static final long f102899e = -9999;

    /* renamed from: f */
    public static final long f102900f = -9998;

    /* renamed from: g */
    public static final long[] f102901g = {533, f102899e, f102899e, 536, Long.MIN_VALUE, Long.MAX_VALUE, 537, ParserBase.f21225q, 2147483647L, 538, -32768, 32767, 539, -128, 127, 540, 0, f102899e, 541, 1, f102899e, 534, f102899e, 0, 535, f102899e, -1, 542, 0, f102900f, 543, 0, 4294967295L, 544, 0, WebSocketProtocol.PAYLOAD_SHORT_MAX, 545, 0, 255};

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a8, code lost:
    
        return new net.p110sf.saxon.type.ValidationFailure("Cannot convert string " + net.p110sf.saxon.trans.Err.wrap(r11, 4) + " to an integer: expected a digit, found " + r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.p110sf.saxon.type.ValidationFailure castableAsInteger(net.p110sf.saxon.str.UnicodeString r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.value.IntegerValue.castableAsInteger(net.sf.saxon.str.UnicodeString):net.sf.saxon.type.ValidationFailure");
    }

    public static boolean checkBigRange(BigInteger bigInteger, BuiltInAtomicType builtInAtomicType) {
        int i = 0;
        while (true) {
            long[] jArr = f102901g;
            if (i >= jArr.length) {
                throw new IllegalArgumentException("No range information found for integer subtype " + builtInAtomicType.getDescription());
            }
            if (jArr[i] == builtInAtomicType.getFingerprint()) {
                long j = jArr[i + 1];
                if (j != f102899e && BigInteger.valueOf(j).compareTo(bigInteger) > 0) {
                    return false;
                }
                long j2 = jArr[i + 2];
                if (j2 == f102899e) {
                    return true;
                }
                return j2 == f102900f ? BigIntegerValue.MAX_UNSIGNED_LONG.compareTo(bigInteger) >= 0 : BigInteger.valueOf(j2).compareTo(bigInteger) >= 0;
            }
            i += 3;
        }
    }

    public static boolean checkRange(long j, BuiltInAtomicType builtInAtomicType) {
        int fingerprint = builtInAtomicType.getFingerprint();
        int i = 0;
        while (true) {
            long[] jArr = f102901g;
            if (i >= jArr.length) {
                throw new IllegalArgumentException("No range information found for integer subtype " + builtInAtomicType.getDescription());
            }
            if (jArr[i] == fingerprint) {
                long j2 = jArr[i + 1];
                if (j2 != f102899e && j < j2) {
                    return false;
                }
                long j3 = jArr[i + 2];
                return j3 == f102899e || j3 == f102900f || j <= j3;
            }
            i += 3;
        }
    }

    public static ConversionResult fromDouble(double d) {
        if (Double.isNaN(d)) {
            ValidationFailure validationFailure = new ValidationFailure("Cannot convert double NaN to an integer");
            validationFailure.setErrorCode("FOCA0002");
            return validationFailure;
        }
        if (!Double.isInfinite(d)) {
            return (d > 9.223372036854776E18d || d < -9.223372036854776E18d) ? d == Math.floor(d) ? new BigIntegerValue(FormatNumber.adjustToDecimal(d, 2).toBigInteger()) : new BigIntegerValue(BigDecimal.valueOf(d).toBigInteger()) : Int64Value.makeIntegerValue((long) d);
        }
        ValidationFailure validationFailure2 = new ValidationFailure("Cannot convert double INF to an integer");
        validationFailure2.setErrorCode("FOCA0002");
        return validationFailure2;
    }

    public static IntegerValue getMaxInclusive(BuiltInAtomicType builtInAtomicType) {
        int fingerprint = builtInAtomicType.getFingerprint();
        int i = 0;
        while (true) {
            long[] jArr = f102901g;
            if (i >= jArr.length) {
                return null;
            }
            if (jArr[i] == fingerprint) {
                long j = jArr[i + 2];
                if (j == f102899e) {
                    return null;
                }
                return j == f102900f ? makeIntegerValue(BigIntegerValue.MAX_UNSIGNED_LONG) : Int64Value.makeIntegerValue(j);
            }
            i += 3;
        }
    }

    public static IntegerValue getMinInclusive(BuiltInAtomicType builtInAtomicType) {
        int fingerprint = builtInAtomicType.getFingerprint();
        int i = 0;
        while (true) {
            long[] jArr = f102901g;
            if (i >= jArr.length) {
                return null;
            }
            if (jArr[i] == fingerprint) {
                long j = jArr[i + 1];
                if (j == f102899e) {
                    return null;
                }
                return Int64Value.makeIntegerValue(j);
            }
            i += 3;
        }
    }

    public static IntegerValue makeIntegerValue(BigInteger bigInteger) {
        return (bigInteger.compareTo(BigIntegerValue.MAX_LONG) > 0 || bigInteger.compareTo(BigIntegerValue.MIN_LONG) < 0) ? new BigIntegerValue(bigInteger) : Int64Value.makeIntegerValue(bigInteger.longValue());
    }

    public static int signum(int i) {
        return ((-i) >>> 31) | (i >> 31);
    }

    public static ConversionResult stringToInteger(String str) {
        int length = str.length();
        int i = length - 1;
        boolean z = false;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) <= ' ') {
            i2++;
        }
        int i3 = i;
        while (i3 > i2 && str.charAt(i3) <= ' ') {
            i3--;
        }
        if (i2 > i3) {
            return new ValidationFailure("Cannot convert zero-length string to an integer");
        }
        if (i3 - i2 >= 16) {
            if (i2 > 0 || i3 < i) {
                try {
                    str = str.substring(i2, i3 + 1);
                } catch (NumberFormatException unused) {
                    return new ValidationFailure("Cannot convert string " + Err.wrap(str, 4) + " to an integer");
                }
            }
            if (str.charAt(0) == '+') {
                str = str.substring(1);
            }
            return str.length() < 16 ? new Int64Value(Long.parseLong(str)) : new BigIntegerValue(new BigInteger(str));
        }
        if (str.charAt(i2) == '+') {
            i2++;
        } else if (str.charAt(i2) == '-') {
            i2++;
            z = true;
        }
        if (i2 > i3) {
            return new ValidationFailure("Cannot convert string " + Err.wrap(str, 4) + " to integer: no digits after the sign");
        }
        long j = 0;
        while (i2 <= i3) {
            int i4 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt < '0' || charAt > '9') {
                return new ValidationFailure("Cannot convert string " + Err.wrap(str, 4) + " to an integer");
            }
            j = (j * 10) + (charAt - '0');
            i2 = i4;
        }
        if (z) {
            j = -j;
        }
        return Int64Value.makeIntegerValue(j);
    }

    public abstract BigInteger asBigInteger();

    public abstract ValidationFailure convertToSubType(BuiltInAtomicType builtInAtomicType, boolean z);

    public abstract NumericValue div(IntegerValue integerValue) throws XPathException;

    public NumericValue div(IntegerValue integerValue, Location location) throws XPathException {
        try {
            return div(integerValue);
        } catch (XPathException e) {
            e.maybeSetLocation(location);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.value.DecimalValue, net.p110sf.saxon.value.NumericValue
    public abstract BigDecimal getDecimalValue();

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.INTEGER;
    }

    public abstract IntegerValue idiv(IntegerValue integerValue) throws XPathException;

    public IntegerValue idiv(IntegerValue integerValue, Location location) throws XPathException {
        try {
            return idiv(integerValue);
        } catch (XPathException e) {
            e.maybeSetLocation(location);
            throw e;
        }
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return (atomicValue instanceof IntegerValue) && equals(atomicValue);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public boolean isWholeNumber() {
        return true;
    }

    public abstract IntegerValue minus(IntegerValue integerValue);

    public abstract IntegerValue mod(IntegerValue integerValue) throws XPathException;

    public IntegerValue mod(IntegerValue integerValue, Location location) throws XPathException {
        try {
            return mod(integerValue);
        } catch (XPathException e) {
            e.maybeSetLocation(location);
            throw e;
        }
    }

    public abstract IntegerValue plus(IntegerValue integerValue);

    public abstract IntegerValue times(IntegerValue integerValue);

    public abstract ValidationFailure validateAgainstSubType(BuiltInAtomicType builtInAtomicType);
}
