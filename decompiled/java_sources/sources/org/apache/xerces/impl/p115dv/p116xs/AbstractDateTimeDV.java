package org.apache.xerces.impl.p115dv.p116xs;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.math.BigDecimal;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.jaxp.datatype.DatatypeFactoryImpl;
import org.apache.xerces.p118xs.datatypes.XSDateTime;

/* loaded from: classes13.dex */
public abstract class AbstractDateTimeDV extends TypeValidator {
    protected static final int DAY = 1;
    protected static final int MONTH = 1;
    protected static final int YEAR = 2000;

    /* renamed from: b */
    public static final boolean f112296b = false;
    protected static final DatatypeFactory datatypeFactory = new DatatypeFactoryImpl();

    /* renamed from: org.apache.xerces.impl.dv.xs.AbstractDateTimeDV$a */
    /* loaded from: classes13.dex */
    public static final class C20011a implements XSDateTime {

        /* renamed from: a */
        public int f112297a;

        /* renamed from: b */
        public int f112298b;

        /* renamed from: c */
        public int f112299c;

        /* renamed from: d */
        public int f112300d;

        /* renamed from: e */
        public int f112301e;

        /* renamed from: f */
        public int f112302f;

        /* renamed from: g */
        public double f112303g;

        /* renamed from: h */
        public int f112304h;

        /* renamed from: i */
        public int f112305i;

        /* renamed from: j */
        public String f112306j;

        /* renamed from: k */
        public boolean f112307k = true;

        /* renamed from: l */
        public int f112308l;

        /* renamed from: m */
        public int f112309m;

        /* renamed from: n */
        public int f112310n;

        /* renamed from: o */
        public int f112311o;

        /* renamed from: p */
        public int f112312p;

        /* renamed from: q */
        public double f112313q;

        /* renamed from: r */
        public int f112314r;

        /* renamed from: s */
        public final AbstractDateTimeDV f112315s;

        /* renamed from: t */
        public String f112316t;

        public C20011a(int i, int i2, int i3, int i4, int i5, double d, int i6, String str, boolean z, AbstractDateTimeDV abstractDateTimeDV) {
            this.f112297a = i;
            this.f112298b = i2;
            this.f112299c = i3;
            this.f112300d = i4;
            this.f112301e = i5;
            this.f112303g = d;
            this.f112302f = i6;
            this.f112315s = abstractDateTimeDV;
            this.f112306j = str;
        }

        public Object clone() {
            C20011a c20011a = new C20011a(this.f112297a, this.f112298b, this.f112299c, this.f112300d, this.f112301e, this.f112303g, this.f112302f, this.f112306j, this.f112307k, this.f112315s);
            c20011a.f112316t = this.f112316t;
            c20011a.f112314r = this.f112314r;
            c20011a.f112304h = this.f112304h;
            c20011a.f112305i = this.f112305i;
            c20011a.f112308l = this.f112308l;
            c20011a.f112309m = this.f112309m;
            c20011a.f112310n = this.f112310n;
            c20011a.f112311o = this.f112311o;
            c20011a.f112312p = this.f112312p;
            c20011a.f112313q = this.f112313q;
            return c20011a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C20011a) && this.f112315s.compareDates(this, (C20011a) obj, true) == 0;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getDays() {
            if (this.f112315s instanceof DurationDV) {
                return 0;
            }
            return this.f112307k ? this.f112299c : this.f112310n;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public Duration getDuration() {
            return this.f112315s.getDuration(this);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getHours() {
            if (this.f112315s instanceof DurationDV) {
                return 0;
            }
            return this.f112307k ? this.f112300d : this.f112311o;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public String getLexicalValue() {
            return this.f112306j;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getMinutes() {
            if (this.f112315s instanceof DurationDV) {
                return 0;
            }
            return this.f112307k ? this.f112301e : this.f112312p;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getMonths() {
            return this.f112315s instanceof DurationDV ? (this.f112297a * 12) + this.f112298b : this.f112307k ? this.f112298b : this.f112309m;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public double getSeconds() {
            return this.f112315s instanceof DurationDV ? (this.f112299c * 24 * 60 * 60) + (this.f112300d * 60 * 60) + (this.f112301e * 60) + this.f112303g : this.f112307k ? this.f112303g : this.f112313q;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getTimeZoneHours() {
            return this.f112304h;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getTimeZoneMinutes() {
            return this.f112305i;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public XMLGregorianCalendar getXMLGregorianCalendar() {
            return this.f112315s.getXMLGregorianCalendar(this);
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public int getYears() {
            if (this.f112315s instanceof DurationDV) {
                return 0;
            }
            return this.f112307k ? this.f112297a : this.f112308l;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public boolean hasTimeZone() {
            return this.f112302f != 0;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public boolean isNormalized() {
            return this.f112307k;
        }

        @Override // org.apache.xerces.p118xs.datatypes.XSDateTime
        public XSDateTime normalize() {
            if (this.f112307k) {
                return this;
            }
            C20011a c20011a = (C20011a) clone();
            c20011a.f112307k = true;
            return c20011a;
        }

        public synchronized String toString() {
            if (this.f112316t == null) {
                this.f112316t = this.f112315s.dateToString(this);
            }
            return this.f112316t;
        }

        public C20011a(String str, AbstractDateTimeDV abstractDateTimeDV) {
            this.f112306j = str;
            this.f112315s = abstractDateTimeDV;
        }
    }

    public final void append(StringBuffer stringBuffer, double d) {
        if (d < 0.0d) {
            stringBuffer.append('-');
            d = -d;
        }
        if (d < 10.0d) {
            stringBuffer.append('0');
        }
        append2(stringBuffer, d);
    }

    public final void append2(StringBuffer stringBuffer, double d) {
        int i = (int) d;
        if (d == i) {
            stringBuffer.append(i);
        } else {
            m69931b(stringBuffer, d);
        }
    }

    /* renamed from: b */
    public final void m69931b(StringBuffer stringBuffer, double d) {
        String valueOf = String.valueOf(d);
        int indexOf = valueOf.indexOf(69);
        if (indexOf == -1) {
            stringBuffer.append(valueOf);
            return;
        }
        int i = 0;
        if (d >= 1.0d) {
            try {
                int parseInt = parseInt(valueOf, indexOf + 1, valueOf.length()) + 2;
                while (i < indexOf) {
                    char charAt = valueOf.charAt(i);
                    if (charAt != '.') {
                        if (i == parseInt) {
                            stringBuffer.append('.');
                        }
                        stringBuffer.append(charAt);
                    }
                    i++;
                }
                for (int i2 = parseInt - indexOf; i2 > 0; i2--) {
                    stringBuffer.append('0');
                }
                return;
            } catch (Exception unused) {
                stringBuffer.append(valueOf);
                return;
            }
        }
        try {
            int parseInt2 = parseInt(valueOf, indexOf + 2, valueOf.length());
            stringBuffer.append("0.");
            for (int i3 = 1; i3 < parseInt2; i3++) {
                stringBuffer.append('0');
            }
            int i4 = indexOf - 1;
            while (i4 > 0 && valueOf.charAt(i4) == '0') {
                i4--;
            }
            while (i <= i4) {
                char charAt2 = valueOf.charAt(i);
                if (charAt2 != '.') {
                    stringBuffer.append(charAt2);
                }
                i++;
            }
        } catch (Exception unused2) {
            stringBuffer.append(valueOf);
        }
    }

    /* renamed from: c */
    public final void m69932c(C20011a c20011a, C20011a c20011a2) {
        c20011a2.f112297a = c20011a.f112297a;
        c20011a2.f112298b = c20011a.f112298b;
        c20011a2.f112299c = c20011a.f112299c;
        c20011a2.f112300d = c20011a.f112300d;
        c20011a2.f112301e = c20011a.f112301e;
        c20011a2.f112303g = c20011a.f112303g;
        c20011a2.f112302f = c20011a.f112302f;
        c20011a2.f112304h = c20011a.f112304h;
        c20011a2.f112305i = c20011a.f112305i;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return compareDates((C20011a) obj, (C20011a) obj2, true);
    }

    public short compareDates(C20011a c20011a, C20011a c20011a2, boolean z) {
        if (c20011a.f112302f == c20011a2.f112302f) {
            return compareOrder(c20011a, c20011a2);
        }
        C20011a c20011a3 = new C20011a(null, this);
        if (c20011a.f112302f == 90) {
            m69932c(c20011a2, c20011a3);
            c20011a3.f112304h = 14;
            c20011a3.f112305i = 0;
            c20011a3.f112302f = 43;
            normalize(c20011a3);
            short compareOrder = compareOrder(c20011a, c20011a3);
            if (compareOrder == -1) {
                return compareOrder;
            }
            m69932c(c20011a2, c20011a3);
            c20011a3.f112304h = -14;
            c20011a3.f112305i = 0;
            c20011a3.f112302f = 45;
            normalize(c20011a3);
            short compareOrder2 = compareOrder(c20011a, c20011a3);
            if (compareOrder2 == 1) {
                return compareOrder2;
            }
            return (short) 2;
        }
        if (c20011a2.f112302f == 90) {
            m69932c(c20011a, c20011a3);
            c20011a3.f112304h = -14;
            c20011a3.f112305i = 0;
            c20011a3.f112302f = 45;
            normalize(c20011a3);
            short compareOrder3 = compareOrder(c20011a3, c20011a2);
            if (compareOrder3 == -1) {
                return compareOrder3;
            }
            m69932c(c20011a, c20011a3);
            c20011a3.f112304h = 14;
            c20011a3.f112305i = 0;
            c20011a3.f112302f = 43;
            normalize(c20011a3);
            short compareOrder4 = compareOrder(c20011a3, c20011a2);
            if (compareOrder4 == 1) {
                return compareOrder4;
            }
        }
        return (short) 2;
    }

    public short compareOrder(C20011a c20011a, C20011a c20011a2) {
        int i = c20011a.f112314r;
        if (i < 1) {
            int i2 = c20011a.f112297a;
            int i3 = c20011a2.f112297a;
            if (i2 < i3) {
                return (short) -1;
            }
            if (i2 > i3) {
                return (short) 1;
            }
        }
        if (i < 2) {
            int i4 = c20011a.f112298b;
            int i5 = c20011a2.f112298b;
            if (i4 < i5) {
                return (short) -1;
            }
            if (i4 > i5) {
                return (short) 1;
            }
        }
        int i6 = c20011a.f112299c;
        int i7 = c20011a2.f112299c;
        if (i6 < i7) {
            return (short) -1;
        }
        if (i6 > i7) {
            return (short) 1;
        }
        int i8 = c20011a.f112300d;
        int i9 = c20011a2.f112300d;
        if (i8 < i9) {
            return (short) -1;
        }
        if (i8 > i9) {
            return (short) 1;
        }
        int i10 = c20011a.f112301e;
        int i11 = c20011a2.f112301e;
        if (i10 < i11) {
            return (short) -1;
        }
        if (i10 > i11) {
            return (short) 1;
        }
        double d = c20011a.f112303g;
        double d2 = c20011a2.f112303g;
        if (d < d2) {
            return (short) -1;
        }
        if (d > d2) {
            return (short) 1;
        }
        int i12 = c20011a.f112302f;
        int i13 = c20011a2.f112302f;
        if (i12 < i13) {
            return (short) -1;
        }
        return i12 > i13 ? (short) 1 : (short) 0;
    }

    /* renamed from: d */
    public final boolean m69933d(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % 400 == 0);
    }

    public String dateToString(C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(25);
        append(stringBuffer, c20011a.f112297a, 4);
        stringBuffer.append('-');
        append(stringBuffer, c20011a.f112298b, 2);
        stringBuffer.append('-');
        append(stringBuffer, c20011a.f112299c, 2);
        stringBuffer.append('T');
        append(stringBuffer, c20011a.f112300d, 2);
        stringBuffer.append(':');
        append(stringBuffer, c20011a.f112301e, 2);
        stringBuffer.append(':');
        append(stringBuffer, c20011a.f112303g);
        append(stringBuffer, (char) c20011a.f112302f, 0);
        return stringBuffer.toString();
    }

    public int fQuotient(int i, int i2) {
        return (int) Math.floor(i / i2);
    }

    public int findUTCSign(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt == 'Z' || charAt == '+' || charAt == '-') {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2552;
    }

    public int getDate(String str, int i, int i2, C20011a c20011a) throws RuntimeException {
        int yearMonth = getYearMonth(str, i, i2, c20011a);
        int i3 = yearMonth + 1;
        if (str.charAt(yearMonth) != '-') {
            throw new RuntimeException("CCYY-MM must be followed by '-' sign");
        }
        int i4 = i3 + 2;
        c20011a.f112299c = parseInt(str, i3, i4);
        return i4;
    }

    public Duration getDuration(C20011a c20011a) {
        return null;
    }

    public final BigDecimal getFractionalSecondsAsBigDecimal(C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer();
        m69931b(stringBuffer, c20011a.f112313q);
        String stringBuffer2 = stringBuffer.toString();
        int indexOf = stringBuffer2.indexOf(46);
        if (indexOf == -1) {
            return null;
        }
        BigDecimal bigDecimal = new BigDecimal(stringBuffer2.substring(indexOf));
        if (bigDecimal.compareTo(BigDecimal.valueOf(0L)) == 0) {
            return null;
        }
        return bigDecimal;
    }

    public void getTime(String str, int i, int i2, C20011a c20011a) throws RuntimeException {
        int i3 = i + 2;
        c20011a.f112300d = parseInt(str, i, i3);
        int i4 = i3 + 1;
        if (str.charAt(i3) != ':') {
            throw new RuntimeException("Error in parsing time zone");
        }
        int i5 = i4 + 2;
        c20011a.f112301e = parseInt(str, i4, i5);
        int i6 = i5 + 1;
        if (str.charAt(i5) != ':') {
            throw new RuntimeException("Error in parsing time zone");
        }
        int findUTCSign = findUTCSign(str, i4, i2);
        c20011a.f112303g = parseSecond(str, i6, findUTCSign < 0 ? i2 : findUTCSign);
        if (findUTCSign > 0) {
            getTimeZone(str, c20011a, findUTCSign, i2);
        }
    }

    public void getTimeZone(String str, C20011a c20011a, int i, int i2) throws RuntimeException {
        c20011a.f112302f = str.charAt(i);
        if (str.charAt(i) == 'Z') {
            if (i2 > i + 1) {
                throw new RuntimeException("Error in parsing time zone");
            }
            return;
        }
        if (i > i2 - 6) {
            throw new RuntimeException("Error in parsing time zone");
        }
        int i3 = str.charAt(i) == '-' ? -1 : 1;
        int i4 = i + 1;
        int i5 = i4 + 2;
        c20011a.f112304h = parseInt(str, i4, i5) * i3;
        int i6 = i5 + 1;
        if (str.charAt(i5) != ':') {
            throw new RuntimeException("Error in parsing time zone");
        }
        int i7 = i6 + 2;
        int parseInt = i3 * parseInt(str, i6, i7);
        c20011a.f112305i = parseInt;
        if (i7 != i2) {
            throw new RuntimeException("Error in parsing time zone");
        }
        if (c20011a.f112304h == 0 && parseInt == 0) {
            return;
        }
        c20011a.f112307k = false;
    }

    public XMLGregorianCalendar getXMLGregorianCalendar(C20011a c20011a) {
        return null;
    }

    public int getYearMonth(String str, int i, int i2, C20011a c20011a) throws RuntimeException {
        if (str.charAt(0) == '-') {
            i++;
        }
        int indexOf = indexOf(str, i, i2, '-');
        if (indexOf == -1) {
            throw new RuntimeException("Year separator is missing or misplaced");
        }
        int i3 = indexOf - i;
        if (i3 < 4) {
            throw new RuntimeException("Year must have 'CCYY' format");
        }
        if (i3 > 4 && str.charAt(i) == '0') {
            throw new RuntimeException("Leading zeros are required if the year value would otherwise have fewer than four digits; otherwise they are forbidden");
        }
        c20011a.f112297a = parseIntYear(str, indexOf);
        if (str.charAt(indexOf) != '-') {
            throw new RuntimeException("CCYY must be followed by '-' sign");
        }
        int i4 = indexOf + 1;
        int i5 = i4 + 2;
        c20011a.f112298b = parseInt(str, i4, i5);
        return i5;
    }

    public int indexOf(String str, int i, int i2, char c) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if ((obj instanceof C20011a) && (obj2 instanceof C20011a)) {
            C20011a c20011a = (C20011a) obj;
            C20011a c20011a2 = (C20011a) obj2;
            if (c20011a.f112304h == c20011a2.f112304h && c20011a.f112305i == c20011a2.f112305i) {
                return c20011a.equals(c20011a2);
            }
        }
        return false;
    }

    public final boolean isNextCharUTCSign(String str, int i, int i2) {
        if (i >= i2) {
            return false;
        }
        char charAt = str.charAt(i);
        return charAt == 'Z' || charAt == '+' || charAt == '-';
    }

    public int maxDayInMonthFor(int i, int i2) {
        if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            return 30;
        }
        if (i2 == 2) {
            return m69933d(i) ? 29 : 28;
        }
        return 31;
    }

    public int mod(int i, int i2, int i3) {
        return i - (i3 * i2);
    }

    public int modulo(int i, int i2, int i3) {
        int i4 = i - i2;
        int i5 = i3 - i2;
        return mod(i4, i5, fQuotient(i4, i5)) + i2;
    }

    public void normalize(C20011a c20011a) {
        int i;
        int i2 = c20011a.f112301e + (c20011a.f112305i * (-1));
        int fQuotient = fQuotient(i2, 60);
        c20011a.f112301e = mod(i2, 60, fQuotient);
        int i3 = c20011a.f112300d + (c20011a.f112304h * (-1)) + fQuotient;
        int fQuotient2 = fQuotient(i3, 24);
        c20011a.f112300d = mod(i3, 24, fQuotient2);
        c20011a.f112299c += fQuotient2;
        while (true) {
            int maxDayInMonthFor = maxDayInMonthFor(c20011a.f112297a, c20011a.f112298b);
            int i4 = c20011a.f112299c;
            int i5 = 1;
            if (i4 < 1) {
                c20011a.f112299c = i4 + maxDayInMonthFor(c20011a.f112297a, c20011a.f112298b - 1);
                i = -1;
            } else if (i4 <= maxDayInMonthFor) {
                c20011a.f112302f = 90;
                return;
            } else {
                c20011a.f112299c = i4 - maxDayInMonthFor;
                i = 1;
            }
            int i6 = c20011a.f112298b + i;
            c20011a.f112298b = modulo(i6, 1, 13);
            int fQuotient3 = c20011a.f112297a + fQuotient(i6, 1, 13);
            c20011a.f112297a = fQuotient3;
            if (fQuotient3 == 0) {
                if (c20011a.f112304h >= 0 && c20011a.f112305i >= 0) {
                    i5 = -1;
                }
                c20011a.f112297a = i5;
            }
        }
    }

    public int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3 = 0;
        do {
            int digit = TypeValidator.getDigit(str.charAt(i));
            if (digit < 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer.append(str);
                stringBuffer.append("' has wrong format");
                throw new NumberFormatException(stringBuffer.toString());
            }
            if (i3 < -214748364) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer2.append(str);
                stringBuffer2.append("' has wrong format");
                throw new NumberFormatException(stringBuffer2.toString());
            }
            int i4 = i3 * 10;
            if (i4 < (-2147483647) + digit) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer3.append(str);
                stringBuffer3.append("' has wrong format");
                throw new NumberFormatException(stringBuffer3.toString());
            }
            i3 = i4 - digit;
            i++;
        } while (i < i2);
        return -i3;
    }

    public int parseIntYear(String str, int i) {
        int i2;
        int i3;
        int i4 = 0;
        if (str.charAt(0) == '-') {
            i2 = Integer.MIN_VALUE;
            i3 = 1;
        } else {
            i2 = -2147483647;
            i3 = 0;
        }
        int i5 = i3;
        int i6 = i2 / 10;
        while (i5 < i) {
            int i7 = i5 + 1;
            int digit = TypeValidator.getDigit(str.charAt(i5));
            if (digit < 0) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer.append(str);
                stringBuffer.append("' has wrong format");
                throw new NumberFormatException(stringBuffer.toString());
            }
            if (i4 < i6) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer2.append(str);
                stringBuffer2.append("' has wrong format");
                throw new NumberFormatException(stringBuffer2.toString());
            }
            int i8 = i4 * 10;
            if (i8 < i2 + digit) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer3.append(str);
                stringBuffer3.append("' has wrong format");
                throw new NumberFormatException(stringBuffer3.toString());
            }
            i4 = i8 - digit;
            i5 = i7;
        }
        if (i3 == 0) {
            return -i4;
        }
        if (i5 > 1) {
            return i4;
        }
        StringBuffer stringBuffer4 = new StringBuffer();
        stringBuffer4.append(CloudStorageConstants.SINGLE_QUOTES);
        stringBuffer4.append(str);
        stringBuffer4.append("' has wrong format");
        throw new NumberFormatException(stringBuffer4.toString());
    }

    public double parseSecond(String str, int i, int i2) throws NumberFormatException {
        int i3 = -1;
        for (int i4 = i; i4 < i2; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '.') {
                i3 = i4;
            } else if (charAt > '9' || charAt < '0') {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer.append(str);
                stringBuffer.append("' has wrong format");
                throw new NumberFormatException(stringBuffer.toString());
            }
        }
        if (i3 == -1) {
            if (i + 2 != i2) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(CloudStorageConstants.SINGLE_QUOTES);
                stringBuffer2.append(str);
                stringBuffer2.append("' has wrong format");
                throw new NumberFormatException(stringBuffer2.toString());
            }
        } else if (i + 2 != i3 || i3 + 1 == i2) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(CloudStorageConstants.SINGLE_QUOTES);
            stringBuffer3.append(str);
            stringBuffer3.append("' has wrong format");
            throw new NumberFormatException(stringBuffer3.toString());
        }
        return Double.parseDouble(str.substring(i, i2));
    }

    public void parseTimeZone(String str, int i, int i2, C20011a c20011a) throws RuntimeException {
        if (i < i2) {
            if (!isNextCharUTCSign(str, i, i2)) {
                throw new RuntimeException("Error in month parsing");
            }
            getTimeZone(str, c20011a, i, i2);
        }
    }

    public void resetDateObj(C20011a c20011a) {
        c20011a.f112297a = 0;
        c20011a.f112298b = 0;
        c20011a.f112299c = 0;
        c20011a.f112300d = 0;
        c20011a.f112301e = 0;
        c20011a.f112303g = 0.0d;
        c20011a.f112302f = 0;
        c20011a.f112304h = 0;
        c20011a.f112305i = 0;
    }

    public void saveUnnormalized(C20011a c20011a) {
        c20011a.f112308l = c20011a.f112297a;
        c20011a.f112309m = c20011a.f112298b;
        c20011a.f112310n = c20011a.f112299c;
        c20011a.f112311o = c20011a.f112300d;
        c20011a.f112312p = c20011a.f112301e;
        c20011a.f112313q = c20011a.f112303g;
    }

    public void validateDateTime(C20011a c20011a) {
        int i;
        int i2 = c20011a.f112297a;
        if (i2 == 0) {
            throw new RuntimeException("The year \"0000\" is an illegal year value");
        }
        int i3 = c20011a.f112298b;
        if (i3 < 1 || i3 > 12) {
            throw new RuntimeException("The month must have values 1 to 12");
        }
        if (c20011a.f112299c > maxDayInMonthFor(i2, i3) || (i = c20011a.f112299c) < 1) {
            throw new RuntimeException("The day must have values 1 to 31");
        }
        int i4 = c20011a.f112300d;
        if (i4 > 23 || i4 < 0) {
            if (i4 != 24 || c20011a.f112301e != 0 || c20011a.f112303g != 0.0d) {
                throw new RuntimeException("Hour must have values 0-23, unless 24:00:00");
            }
            c20011a.f112300d = 0;
            int i5 = i + 1;
            c20011a.f112299c = i5;
            if (i5 > maxDayInMonthFor(c20011a.f112297a, c20011a.f112298b)) {
                c20011a.f112299c = 1;
                int i6 = c20011a.f112298b + 1;
                c20011a.f112298b = i6;
                if (i6 > 12) {
                    c20011a.f112298b = 1;
                    int i7 = c20011a.f112297a + 1;
                    c20011a.f112297a = i7;
                    if (i7 == 0) {
                        c20011a.f112297a = 1;
                    }
                }
            }
        }
        int i8 = c20011a.f112301e;
        if (i8 > 59 || i8 < 0) {
            throw new RuntimeException("Minute must have values 0-59");
        }
        double d = c20011a.f112303g;
        if (d >= 60.0d || d < 0.0d) {
            throw new RuntimeException("Second must have values 0-59");
        }
        int i9 = c20011a.f112304h;
        if (i9 > 14 || i9 < -14) {
            throw new RuntimeException("Time zone should have range -14:00 to +14:00");
        }
        if ((i9 == 14 || i9 == -14) && c20011a.f112305i != 0) {
            throw new RuntimeException("Time zone should have range -14:00 to +14:00");
        }
        int i10 = c20011a.f112305i;
        if (i10 > 59 || i10 < -59) {
            throw new RuntimeException("Minute must have values 0-59");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0028, code lost:
    
        if (r4 < 1000) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r3.append('0');
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002e, code lost:
    
        if (r4 < 10) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void append(java.lang.StringBuffer r3, int r4, int r5) {
        /*
            r2 = this;
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r4 != r2) goto L8
            r3.append(r4)
            return
        L8:
            if (r4 >= 0) goto L10
            r2 = 45
            r3.append(r2)
            int r4 = -r4
        L10:
            r2 = 4
            r0 = 48
            r1 = 10
            if (r5 != r2) goto L2b
            if (r4 >= r1) goto L1f
            java.lang.String r2 = "000"
        L1b:
            r3.append(r2)
            goto L33
        L1f:
            r2 = 100
            if (r4 >= r2) goto L26
            java.lang.String r2 = "00"
            goto L1b
        L26:
            r2 = 1000(0x3e8, float:1.401E-42)
            if (r4 >= r2) goto L33
            goto L30
        L2b:
            r2 = 2
            if (r5 != r2) goto L37
            if (r4 >= r1) goto L33
        L30:
            r3.append(r0)
        L33:
            r3.append(r4)
            goto L3d
        L37:
            if (r4 == 0) goto L3d
            char r2 = (char) r4
            r3.append(r2)
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV.append(java.lang.StringBuffer, int, int):void");
    }

    public int fQuotient(int i, int i2, int i3) {
        return fQuotient(i - i2, i3 - i2);
    }
}
