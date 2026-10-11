package net.p110sf.saxon.value;

import com.onyx.galaxy.note.DataBinderMapperImpl;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.StringTokenizer;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.XPathComparable;
import net.p110sf.saxon.functions.AccessorFn;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.str.BMPString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.NoDynamicContextException;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ConversionResult;
import net.p110sf.saxon.type.ValidationFailure;

/* loaded from: classes11.dex */
public class DurationValue extends AtomicValue implements AtomicMatchKey {
    protected int _months;
    protected int _nanoseconds;
    protected boolean _negative;
    protected long _seconds;

    /* loaded from: classes11.dex */
    public static class DurationComparable implements Comparable<DurationComparable> {

        /* renamed from: e */
        public final int f102863e;

        /* renamed from: f */
        public final long f102864f;

        /* renamed from: g */
        public final int f102865g;

        public DurationComparable(int i, long j, int i2) {
            this.f102863e = i;
            this.f102864f = j;
            this.f102865g = i2;
        }

        /* renamed from: a */
        public final int m64664a(int i) {
            if (i < 0) {
                return -m64665b(-i);
            }
            if (i < 12) {
                return new int[]{0, 31, 62, 92, 123, 153, 184, 215, 245, 276, 306, 337}[i];
            }
            int i2 = i / 12;
            return (((i2 * 365) + (i2 % 4)) - (i2 % 100)) + (i2 % 400) + 1 + m64664a(i % 12);
        }

        /* renamed from: b */
        public final int m64665b(int i) {
            if (i < 0) {
                return -m64664a(-i);
            }
            if (i < 12) {
                return new int[]{0, 28, 59, 89, 120, 150, 181, 212, DataBinderMapperImpl.f53038H3, 273, 303, 334}[i];
            }
            int i2 = i / 12;
            return (((((i2 * 365) + (i2 % 4)) - (i2 % 100)) + (i2 % 400)) - 1) + m64665b(i % 12);
        }

        public boolean equals(Object obj) {
            return (obj instanceof DurationComparable) && compareTo((DurationComparable) obj) == 0;
        }

        public int hashCode() {
            return ((int) this.f102864f) ^ this.f102863e;
        }

        @Override // java.lang.Comparable
        public int compareTo(DurationComparable durationComparable) {
            if (this.f102863e == durationComparable.f102863e) {
                long j = this.f102864f;
                long j2 = durationComparable.f102864f;
                if (j == j2) {
                    return Integer.compare(this.f102865g, durationComparable.f102865g);
                }
                return Long.compare(j, j2);
            }
            double m64665b = (m64665b(r0) * 86400.0d) + this.f102864f;
            double m64664a = (m64664a(durationComparable.f102863e) * 86400.0d) + durationComparable.f102864f;
            if ((m64664a(this.f102863e) * 86400.0d) + this.f102864f < (m64665b(durationComparable.f102863e) * 86400.0d) + durationComparable.f102864f) {
                return -1;
            }
            return m64665b > m64664a ? 1 : Integer.MIN_VALUE;
        }
    }

    /* renamed from: net.sf.saxon.value.DurationValue$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18567a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f102866a;

        static {
            int[] iArr = new int[AccessorFn.Component.values().length];
            f102866a = iArr;
            try {
                iArr[AccessorFn.Component.YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f102866a[AccessorFn.Component.MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f102866a[AccessorFn.Component.DAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f102866a[AccessorFn.Component.HOURS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f102866a[AccessorFn.Component.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f102866a[AccessorFn.Component.SECONDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f102866a[AccessorFn.Component.WHOLE_SECONDS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f102866a[AccessorFn.Component.MICROSECONDS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f102866a[AccessorFn.Component.NANOSECONDS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public DurationValue() {
        this._negative = false;
        this._months = 0;
        this._seconds = 0L;
        this._nanoseconds = 0;
    }

    public static ValidationFailure badDuration(String str, UnicodeString unicodeString) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid duration value '" + unicodeString + "' (" + str + ')');
        validationFailure.setErrorCode("FORG0001");
        return validationFailure;
    }

    public static void formatFractionalSeconds(UnicodeBuilder unicodeBuilder, int i, long j) {
        String str = j + "";
        if (i == 0) {
            str = ("0000000000" + str).substring(r2.length() - 10);
        }
        unicodeBuilder.append(str.substring(0, str.length() - 9));
        unicodeBuilder.append('.');
        int length = str.length();
        do {
            length--;
        } while (str.charAt(length) == '0');
        unicodeBuilder.append(str.substring(str.length() - 9, length + 1));
        unicodeBuilder.append('S');
    }

    public static ConversionResult makeDuration(UnicodeString unicodeString) {
        return makeDuration(unicodeString, true, true);
    }

    public static int simpleInteger(String str) {
        int length = str.length();
        if (length == 0) {
            return -1;
        }
        long j = 0;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return -1;
            }
            j = (j * 10) + (charAt - '0');
            if (j > 2147483647L) {
                return -2;
            }
        }
        return (int) j;
    }

    public DurationValue add(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Only subtypes of xs:duration can be added");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue copyAsSubType(AtomicType atomicType) {
        return this._negative ? new DurationValue(0, -this._months, 0, 0, 0, -this._seconds, -this._nanoseconds, atomicType) : new DurationValue(0, this._months, 0, 0, 0, this._seconds, this._nanoseconds, atomicType);
    }

    public DurationValue divide(double d) throws XPathException {
        XPathException xPathException = new XPathException("Only subtypes of xs:duration can be divided by a number");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public boolean equals(Object obj) {
        if (!(obj instanceof DurationValue)) {
            return false;
        }
        DurationValue durationValue = (DurationValue) obj;
        return this._negative == durationValue._negative && this._months == durationValue._months && this._seconds == durationValue._seconds && this._nanoseconds == durationValue._nanoseconds;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicValue getComponent(AccessorFn.Component component) {
        switch (C18567a.f102866a[component.ordinal()]) {
            case 1:
                boolean z = this._negative;
                int years = getYears();
                if (z) {
                    years = -years;
                }
                return Int64Value.makeIntegerValue(years);
            case 2:
                boolean z2 = this._negative;
                int months = getMonths();
                if (z2) {
                    months = -months;
                }
                return Int64Value.makeIntegerValue(months);
            case 3:
                boolean z3 = this._negative;
                int days = getDays();
                if (z3) {
                    days = -days;
                }
                return Int64Value.makeIntegerValue(days);
            case 4:
                boolean z4 = this._negative;
                int hours = getHours();
                if (z4) {
                    hours = -hours;
                }
                return Int64Value.makeIntegerValue(hours);
            case 5:
                boolean z5 = this._negative;
                int minutes = getMinutes();
                if (z5) {
                    minutes = -minutes;
                }
                return Int64Value.makeIntegerValue(minutes);
            case 6:
                StringBuilder sb = new StringBuilder(16);
                String substring = ("000000000" + this._nanoseconds).substring(r0.length() - 9);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this._negative ? "-" : "");
                sb2.append(getSeconds());
                sb2.append('.');
                sb2.append(substring);
                sb.append(sb2.toString());
                return BigDecimalValue.parse(sb.toString());
            case 7:
                return Int64Value.makeIntegerValue(this._negative ? -this._seconds : this._seconds);
            case 8:
                boolean z6 = this._negative;
                int i = this._nanoseconds;
                if (z6) {
                    i = -i;
                }
                return new Int64Value(i / 1000);
            case 9:
                boolean z7 = this._negative;
                int i2 = this._nanoseconds;
                if (z7) {
                    i2 = -i2;
                }
                return new Int64Value(i2);
            default:
                throw new IllegalArgumentException("Unknown component for duration: " + component);
        }
    }

    public int getDays() {
        return (int) (this._seconds / 86400);
    }

    public int getHours() {
        return (int) ((this._seconds % 86400) / 3600);
    }

    public double getLengthInSeconds() {
        double d = (this._months * 30.43684991666667d * 24.0d * 60.0d * 60.0d) + this._seconds + (this._nanoseconds / 1.0E9d);
        return this._negative ? -d : d;
    }

    public int getMicroseconds() {
        return this._nanoseconds / 1000;
    }

    public int getMinutes() {
        return (int) ((this._seconds % 3600) / 60);
    }

    public int getMonths() {
        return this._months % 12;
    }

    public int getNanoseconds() {
        return this._nanoseconds;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public UnicodeString getPrimitiveStringValue() {
        if (this._months == 0 && this._seconds == 0 && this._nanoseconds == 0) {
            return BMPString.m63877of("PT0S");
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(16);
        if (this._negative) {
            unicodeBuilder.append('-');
        }
        int years = getYears();
        int months = getMonths();
        int days = getDays();
        int hours = getHours();
        int minutes = getMinutes();
        int seconds = getSeconds();
        unicodeBuilder.append("P");
        if (years != 0) {
            unicodeBuilder.append(years + "Y");
        }
        if (months != 0) {
            unicodeBuilder.append(months + "M");
        }
        if (days != 0) {
            unicodeBuilder.append(days + SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        }
        if (hours != 0 || minutes != 0 || seconds != 0 || this._nanoseconds != 0) {
            unicodeBuilder.append("T");
        }
        if (hours != 0) {
            unicodeBuilder.append(hours + "H");
        }
        if (minutes != 0) {
            unicodeBuilder.append(minutes + "M");
        }
        if (seconds != 0 || this._nanoseconds != 0) {
            if (seconds == 0 || this._nanoseconds != 0) {
                formatFractionalSeconds(unicodeBuilder, seconds, (seconds * 1000000000) + this._nanoseconds);
            } else {
                unicodeBuilder.append(seconds + "S");
            }
        }
        return unicodeBuilder.toUnicodeString();
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public BuiltInAtomicType getPrimitiveType() {
        return BuiltInAtomicType.DURATION;
    }

    public DurationComparable getSchemaComparable() {
        int i = this._months;
        long j = this._seconds;
        int i2 = this._nanoseconds;
        if (this._negative) {
            j = -j;
            i = -i;
            i2 = -i2;
        }
        return new DurationComparable(i, j, i2);
    }

    public int getSeconds() {
        return (int) (this._seconds % 60);
    }

    public int getTotalMonths() {
        boolean z = this._negative;
        int i = this._months;
        return z ? -i : i;
    }

    public BigDecimal getTotalSeconds() {
        BigDecimal valueOf = BigDecimal.valueOf(this._negative ? -this._seconds : this._seconds);
        if (this._nanoseconds == 0) {
            return valueOf;
        }
        boolean z = this._negative;
        int i = this._nanoseconds;
        if (z) {
            i = -i;
        }
        return valueOf.add(new BigDecimal(BigInteger.valueOf(i), 9));
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public XPathComparable getXPathComparable(StringCollator stringCollator, int i) throws NoDynamicContextException {
        return null;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public AtomicMatchKey getXPathMatchKey(StringCollator stringCollator, int i) {
        return this;
    }

    public int getYears() {
        return this._months / 12;
    }

    @Override // net.p110sf.saxon.value.AtomicValue
    public int hashCode() {
        return Double.valueOf(getLengthInSeconds()).hashCode();
    }

    public DurationValue multiply(long j) throws XPathException {
        return multiply(j);
    }

    public DurationValue negate() {
        return this._negative ? new DurationValue(0, this._months, 0, 0, 0, this._seconds, this._nanoseconds, this.typeLabel) : new DurationValue(0, -this._months, 0, 0, 0, -this._seconds, -this._nanoseconds, this.typeLabel);
    }

    public void normalizeZeroDuration() {
        if (this._months == 0 && this._seconds == 0 && this._nanoseconds == 0) {
            this._negative = false;
        }
    }

    public int signum() {
        if (this._negative) {
            return -1;
        }
        return (this._months == 0 && this._seconds == 0 && this._nanoseconds == 0) ? 0 : 1;
    }

    public DurationValue subtract(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Only subtypes of xs:duration can be subtracted");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    public static ConversionResult makeDuration(UnicodeString unicodeString, boolean z, boolean z2) {
        boolean z3;
        int i;
        boolean z4;
        StringTokenizer stringTokenizer = new StringTokenizer(Whitespace.trim(unicodeString).toString(), "-+.PYMDTHS", true);
        if (!stringTokenizer.hasMoreTokens()) {
            return badDuration("empty string", unicodeString);
        }
        String nextToken = stringTokenizer.nextToken();
        if ("+".equals(nextToken)) {
            return badDuration("+ sign not allowed in a duration", unicodeString);
        }
        int i2 = 0;
        if ("-".equals(nextToken)) {
            nextToken = stringTokenizer.nextToken();
            z3 = true;
        } else {
            z3 = false;
        }
        if (!"P".equals(nextToken)) {
            return badDuration("missing 'P'", unicodeString);
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        char c = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken2 = stringTokenizer.nextToken();
            if ("T".equals(nextToken2)) {
                if (!stringTokenizer.hasMoreTokens()) {
                    return badDuration("T must be followed by time components", unicodeString);
                }
                nextToken2 = stringTokenizer.nextToken();
                c = 4;
            }
            int simpleInteger = simpleInteger(nextToken2);
            if (simpleInteger < 0) {
                if (simpleInteger == -2) {
                    return badDuration("component of duration exceeds Saxon limits", unicodeString, "FODT0002");
                }
                return badDuration("invalid or non-numeric component", unicodeString);
            }
            if (!stringTokenizer.hasMoreTokens()) {
                return badDuration("missing unit letter at end", unicodeString);
            }
            char charAt = stringTokenizer.nextToken().charAt(i2);
            StringTokenizer stringTokenizer2 = stringTokenizer;
            if (charAt == '.') {
                i = 0;
                z4 = true;
                if (c < 4 || c > 6) {
                    return badDuration("misplaced decimal point", unicodeString);
                }
                c = 7;
                i9 = simpleInteger;
            } else if (charAt == 'D') {
                i = 0;
                z4 = true;
                if (c > 2) {
                    return badDuration("D is out of sequence", unicodeString);
                }
                if (!z2) {
                    return badDuration("Day component is not allowed in yearMonthDuration", unicodeString);
                }
                i3++;
                c = 3;
                i6 = simpleInteger;
            } else if (charAt == 'H') {
                i = 0;
                z4 = true;
                if (c != 4) {
                    return badDuration("H is out of sequence", unicodeString);
                }
                if (!z2) {
                    return badDuration("Hour component is not allowed in yearMonthDuration", unicodeString);
                }
                i3++;
                c = 5;
                i7 = simpleInteger;
            } else if (charAt == 'M') {
                i = 0;
                if (c == 4 || c == 5) {
                    z4 = true;
                    if (!z2) {
                        return badDuration("Minute component is not allowed in yearMonthDuration", unicodeString);
                    }
                    i3++;
                    i8 = simpleInteger;
                    c = 6;
                } else {
                    z4 = true;
                    if (c != 0 && c != 1) {
                        return badDuration("M is out of sequence", unicodeString);
                    }
                    if (!z) {
                        return badDuration("Month component is not allowed in dayTimeDuration", unicodeString);
                    }
                    i3++;
                    i5 = simpleInteger;
                    c = 2;
                }
            } else if (charAt != 'S') {
                if (charAt != 'Y') {
                    return badDuration("misplaced " + charAt, unicodeString);
                }
                if (c > 0) {
                    return badDuration("Y is out of sequence", unicodeString);
                }
                if (!z) {
                    return badDuration("Year component is not allowed in dayTimeDuration", unicodeString);
                }
                i3++;
                i4 = simpleInteger;
                i = 0;
                z4 = true;
                c = 1;
            } else {
                if (c < 4 || c > 7) {
                    return badDuration("S is out of sequence", unicodeString);
                }
                if (!z2) {
                    return badDuration("Seconds component is not allowed in yearMonthDuration", unicodeString);
                }
                if (c == 7) {
                    StringBuilder sb = new StringBuilder(nextToken2);
                    while (sb.length() < 9) {
                        sb.append("0");
                    }
                    String sb2 = sb.toString();
                    if (sb2.length() > 9) {
                        i = 0;
                        sb2 = sb2.substring(0, 9);
                    } else {
                        i = 0;
                    }
                    int simpleInteger2 = simpleInteger(sb2);
                    if (simpleInteger2 < 0) {
                        return badDuration("non-numeric fractional seconds", unicodeString);
                    }
                    i10 = simpleInteger2;
                } else {
                    i = 0;
                    i9 = simpleInteger;
                }
                i3++;
                c = '\b';
                z4 = true;
            }
            stringTokenizer = stringTokenizer2;
            i2 = i;
        }
        if (i3 == 0) {
            return badDuration("Duration specifies no components", unicodeString);
        }
        if (z3) {
            i4 = -i4;
            i5 = -i5;
            i6 = -i6;
            i7 = -i7;
            i8 = -i8;
            i9 = -i9;
            i10 = -i10;
        }
        try {
            return new DurationValue(i4, i5, i6, i7, i8, i9, i10, BuiltInAtomicType.DURATION);
        } catch (IllegalArgumentException e) {
            return new ValidationFailure(e.getMessage());
        }
    }

    public DurationValue multiply(double d) throws XPathException {
        XPathException xPathException = new XPathException("Only subtypes of xs:duration can be multiplied by a number");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    public static ValidationFailure badDuration(String str, UnicodeString unicodeString, String str2) {
        ValidationFailure validationFailure = new ValidationFailure("Invalid duration value '" + unicodeString + "' (" + str + ')');
        validationFailure.setErrorCode(str2);
        return validationFailure;
    }

    public BigDecimalValue divide(DurationValue durationValue) throws XPathException {
        XPathException xPathException = new XPathException("Only subtypes of xs:duration can be divided by another duration");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    public DurationValue(boolean z, int i, int i2, int i3, int i4, int i5, long j, int i6) throws IllegalArgumentException {
        this(z, i, i2, i3, i4, i5, j, i6, BuiltInAtomicType.DURATION);
    }

    public DurationValue multiply(BigDecimal bigDecimal) throws XPathException {
        XPathException xPathException = new XPathException("Only subtypes of xs:duration can be multiplied by a number");
        xPathException.setErrorCode("XPTY0004");
        xPathException.setIsTypeError(true);
        throw xPathException;
    }

    public DurationValue(boolean z, int i, int i2, int i3, int i4, int i5, long j, int i6, AtomicType atomicType) {
        this._months = 0;
        this._seconds = 0L;
        this._nanoseconds = 0;
        this._negative = !z;
        if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0 || i5 < 0 || j < 0 || i6 < 0) {
            throw new IllegalArgumentException("Negative component value");
        }
        if ((i * 12.0d) + i2 > 2.147483647E9d) {
            throw new IllegalArgumentException("Duration months limit exceeded");
        }
        if ((i3 * 86400.0d) + (i4 * 3600.0d) + (i5 * 60.0d) + j <= 9.223372036854776E18d) {
            this._months = (i * 12) + i2;
            this._seconds = (((((i3 * 24) + i4) * 60) + i5) * 60) + j;
            this._nanoseconds = i6 * 1000;
            normalizeZeroDuration();
            this.typeLabel = atomicType;
            return;
        }
        throw new IllegalArgumentException("Duration seconds limit exceeded");
    }

    public DurationValue(int i, int i2, int i3, int i4, int i5, long j, int i6, AtomicType atomicType) {
        int i7 = i;
        int i8 = i2;
        int i9 = i3;
        int i10 = i4;
        int i11 = i5;
        long j2 = j;
        int i12 = i6;
        this._negative = false;
        this._months = 0;
        this._seconds = 0L;
        this._nanoseconds = 0;
        boolean z = i7 > 0 || i8 > 0 || i9 > 0 || i10 > 0 || i11 > 0 || j2 > 0 || i12 > 0;
        boolean z2 = i7 < 0 || i8 < 0 || i9 < 0 || i10 < 0 || i11 < 0 || j2 < 0 || i12 < 0;
        if (z && z2) {
            throw new IllegalArgumentException("Some component values are positive and some negative");
        }
        if (z2) {
            i7 = -i7;
            i8 = -i8;
            i9 = -i9;
            i10 = -i10;
            i11 = -i11;
            j2 = -j2;
            i12 = -i12;
        }
        if ((i7 * 12.0d) + i8 > 2.147483647E9d) {
            throw new IllegalArgumentException("Duration months limit exceeded");
        }
        if ((i9 * 86400.0d) + (i10 * 3600.0d) + (i11 * 60.0d) + j2 <= 9.223372036854776E18d) {
            this._months = (i7 * 12) + i8;
            this._seconds = (((((i9 * 24) + i10) * 60) + i11) * 60) + j2;
            this._nanoseconds = i12;
            this._negative = z2;
            normalizeZeroDuration();
            this.typeLabel = atomicType;
            return;
        }
        throw new IllegalArgumentException("Duration seconds limit exceeded");
    }
}
