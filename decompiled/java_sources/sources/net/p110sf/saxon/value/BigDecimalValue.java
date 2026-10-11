package net.p110sf.saxon.value;

import com.fasterxml.jackson.core.base.ParserBase;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.regex.Pattern;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.StringConstants;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationException;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public final class BigDecimalValue extends DecimalValue {
    public static final int DIVIDE_PRECISION = 18;

    /* renamed from: e */
    public final BigDecimal f102843e;

    /* renamed from: f */
    public double f102844f = Double.NaN;
    public static final BigDecimal BIG_DECIMAL_ONE_MILLION = BigDecimal.valueOf(1000000L);
    public static final BigDecimal BIG_DECIMAL_ONE_BILLION = BigDecimal.valueOf(1000000000L);
    public static final BigDecimalValue ZERO = new BigDecimalValue(BigDecimal.valueOf(0L));
    public static final BigDecimalValue ONE = new BigDecimalValue(BigDecimal.valueOf(1L));
    public static final BigDecimalValue TWO = new BigDecimalValue(BigDecimal.valueOf(2L));
    public static final BigDecimalValue THREE = new BigDecimalValue(BigDecimal.valueOf(3L));
    public static final BigDecimal MAX_INT = BigDecimal.valueOf(2147483647L);

    /* renamed from: g */
    public static final Pattern f102842g = Pattern.compile("(\\-|\\+)?((\\.[0-9]+)|([0-9]+(\\.[0-9]*)?))");

    public BigDecimalValue(BigDecimal bigDecimal) {
        this.f102843e = bigDecimal.stripTrailingZeros();
        this.typeLabel = BuiltInAtomicType.DECIMAL;
    }

    public static boolean castableAsDecimal(String str) {
        return f102842g.matcher(Whitespace.trim(str).toString()).matches();
    }

    public static StringBuilder decimalToString(BigDecimal bigDecimal, StringBuilder sb) {
        int scale = bigDecimal.scale();
        if (scale == 0) {
            sb.append(bigDecimal.toString());
            return sb;
        }
        if (scale < 0) {
            String bigInteger = bigDecimal.abs().unscaledValue().toString();
            if (bigInteger.equals("0")) {
                sb.append('0');
                return sb;
            }
            if (bigDecimal.signum() < 0) {
                sb.append('-');
            }
            sb.append(bigInteger);
            for (int i = 0; i < (-scale); i++) {
                sb.append('0');
            }
            return sb;
        }
        String bigInteger2 = bigDecimal.abs().unscaledValue().toString();
        if (bigInteger2.equals("0")) {
            sb.append('0');
            return sb;
        }
        int length = bigInteger2.length();
        if (bigDecimal.signum() < 0) {
            sb.append('-');
        }
        if (scale >= length) {
            sb.append("0.");
            while (length < scale) {
                sb.append('0');
                length++;
            }
            sb.append(bigInteger2);
        } else {
            int i2 = length - scale;
            sb.append(bigInteger2.substring(0, i2));
            sb.append('.');
            sb.append(bigInteger2.substring(i2));
        }
        return sb;
    }

    public static ConversionResult makeDecimalValue(String str, boolean z) {
        try {
            return parse(str);
        } catch (NumberFormatException e) {
            ValidationFailure validationFailure = new ValidationFailure("Cannot convert string " + Err.wrap(str, 4) + " to xs:decimal: " + e.getMessage());
            validationFailure.setErrorCode("FORG0001");
            return validationFailure;
        }
    }

    public static BigDecimalValue parse(CharSequence charSequence) throws NumberFormatException {
        StringBuilder sb = new StringBuilder(charSequence.length());
        int length = charSequence.length();
        boolean z = false;
        char c = 0;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = charSequence.charAt(i2);
            if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                if (charAt != '+') {
                    if (charAt == '-') {
                        if (c != 0) {
                            throw new NumberFormatException("unexpected sign");
                        }
                        sb.append(charAt);
                    } else if (charAt != '.') {
                        switch (charAt) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                if (c == 0) {
                                    c = 1;
                                } else if (c >= 3) {
                                    i++;
                                }
                                if (c == 5) {
                                    throw new NumberFormatException("contains embedded whitespace");
                                }
                                sb.append(charAt);
                                z = true;
                                break;
                            default:
                                throw new NumberFormatException("invalid character '" + charAt + CloudStorageConstants.SINGLE_QUOTES);
                        }
                    } else {
                        if (c == 5) {
                            throw new NumberFormatException("contains embedded whitespace");
                        }
                        if (c >= 3) {
                            throw new NumberFormatException("more than one decimal point");
                        }
                        c = 3;
                    }
                } else if (c != 0) {
                    throw new NumberFormatException("unexpected sign");
                }
                c = 1;
            } else if (c != 0) {
                c = 5;
            }
        }
        if (!z) {
            throw new NumberFormatException("no digits in value");
        }
        while (i > 0 && sb.charAt(sb.length() - 1) == '0') {
            sb.setLength(sb.length() - 1);
            i--;
        }
        return (sb.length() == 0 || (sb.length() == 1 && sb.charAt(0) == '-')) ? ZERO : new BigDecimalValue(new BigDecimal(new BigInteger(sb.toString()), i));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue abs() {
        return this.f102843e.signum() > 0 ? this : new BigDecimalValue(this.f102843e.negate());
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int asSubscript() {
        if (isWholeNumber() && this.f102843e.compareTo(BigDecimal.ZERO) > 0 && this.f102843e.compareTo(MAX_INT) <= 0) {
            try {
                return (int) longValue();
            } catch (XPathException unused) {
            }
        }
        return -1;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue ceiling() {
        return new BigDecimalValue(this.f102843e.setScale(0, RoundingMode.CEILING));
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        if (atomicType.getPrimitiveItemType() == BuiltInAtomicType.INTEGER) {
            return IntegerValue.makeIntegerValue(this.f102843e.toBigInteger()).copyAsSubType(atomicType);
        }
        BigDecimalValue bigDecimalValue = new BigDecimalValue(this.f102843e);
        bigDecimalValue.typeLabel = atomicType;
        return bigDecimalValue;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.GroundedValue
    public boolean effectiveBooleanValue() {
        return this.f102843e.signum() != 0;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue floor() {
        return new BigDecimalValue(this.f102843e.setScale(0, RoundingMode.FLOOR));
    }

    @Override // net.p110sf.saxon.value.AtomicValue, net.p110sf.saxon.om.AtomicSequence
    public UnicodeString getCanonicalLexicalRepresentation() {
        UnicodeString tidy = getUnicodeStringValue().tidy();
        return tidy.indexOf(46) < 0 ? tidy.concat(StringConstants.POINT_ZERO) : tidy;
    }

    @Override // net.p110sf.saxon.value.DecimalValue, net.p110sf.saxon.value.NumericValue
    public BigDecimal getDecimalValue() {
        return this.f102843e;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public double getDoubleValue() {
        if (Double.isNaN(this.f102844f)) {
            this.f102844f = this.f102843e.doubleValue();
        }
        return this.f102844f;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public float getFloatValue() {
        return (float) this.f102843e.doubleValue();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        return BMPString.m63877of(decimalToString(this.f102843e, new StringBuilder(16)).toString());
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.DECIMAL;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) {
        return this;
    }

    @Override // net.p110sf.saxon.value.NumericValue, net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        long j;
        try {
            j = this.f102843e.setScale(0, RoundingMode.DOWN).longValue();
        } catch (Exception unused) {
            j = Long.MAX_VALUE;
        }
        return (j <= ParserBase.f21225q || j >= 2147483647L) ? Double.valueOf(getDoubleValue()).hashCode() : (int) j;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean isIdentical(AtomicValue atomicValue) {
        return (atomicValue instanceof DecimalValue) && equals(atomicValue);
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public boolean isWholeNumber() {
        if (this.f102843e.scale() != 0) {
            BigDecimal bigDecimal = this.f102843e;
            if (bigDecimal.compareTo(bigDecimal.setScale(0, RoundingMode.DOWN)) != 0) {
                return false;
            }
        }
        return true;
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public long longValue() throws XPathException {
        return (long) this.f102843e.doubleValue();
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue negate() {
        return new BigDecimalValue(this.f102843e.negate());
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue round(int i) {
        if (i >= this.f102843e.scale()) {
            return this;
        }
        int signum = this.f102843e.signum();
        return signum != -1 ? signum != 1 ? this : new BigDecimalValue(this.f102843e.setScale(i, RoundingMode.HALF_UP)) : new BigDecimalValue(this.f102843e.setScale(i, RoundingMode.HALF_DOWN));
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public NumericValue roundHalfToEven(int i) {
        return i >= this.f102843e.scale() ? this : new BigDecimalValue(this.f102843e.setScale(i, RoundingMode.HALF_EVEN).stripTrailingZeros());
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int signum() {
        return this.f102843e.signum();
    }

    @Override // net.p110sf.saxon.value.NumericValue, java.lang.Comparable
    public int compareTo(XPathComparable xPathComparable) {
        if (xPathComparable instanceof NumericValue) {
            if (NumericValue.isInteger((NumericValue) xPathComparable)) {
                try {
                    return this.f102843e.compareTo(((NumericValue) xPathComparable).getDecimalValue());
                } catch (XPathException unused) {
                    throw new AssertionError("Conversion of integer to decimal should never fail");
                }
            }
            if (xPathComparable instanceof BigDecimalValue) {
                return this.f102843e.compareTo(((BigDecimalValue) xPathComparable).f102843e);
            }
            if (xPathComparable instanceof FloatValue) {
                return -xPathComparable.compareTo(this);
            }
            return super.compareTo(xPathComparable);
        }
        throw new ClassCastException("Cannot compare xs:decimal to " + xPathComparable.toString());
    }

    public BigDecimalValue(double d) throws ValidationException {
        try {
            this.f102843e = new BigDecimal(d).stripTrailingZeros();
            this.typeLabel = BuiltInAtomicType.DECIMAL;
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot convert double ");
            sb.append(Err.wrap(d + "", 4));
            sb.append(" to decimal");
            ValidationFailure validationFailure = new ValidationFailure(sb.toString());
            validationFailure.setErrorCode("FOCA0002");
            throw validationFailure.makeException();
        }
    }

    @Override // net.p110sf.saxon.value.NumericValue
    public int compareTo(long j) {
        if (j == 0) {
            return this.f102843e.signum();
        }
        return this.f102843e.compareTo(BigDecimal.valueOf(j));
    }

    public BigDecimalValue(long j) {
        this.f102843e = BigDecimal.valueOf(j);
        this.typeLabel = BuiltInAtomicType.DECIMAL;
    }
}
