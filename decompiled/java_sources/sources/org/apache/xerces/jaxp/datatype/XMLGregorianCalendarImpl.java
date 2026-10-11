package org.apache.xerces.jaxp.datatype;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.apache.commons.lang3.time.TimeZones;
import org.apache.xerces.util.DatatypeMessageFormatter;
import org.mortbay.util.MultiPartWriter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public class XMLGregorianCalendarImpl extends XMLGregorianCalendar implements Serializable, Cloneable {
    private static final int BILLION_I = 1000000000;
    private static final int DAY = 2;
    private static final int HOUR = 3;
    private static final int MILLISECOND = 6;
    private static final int MINUTE = 4;
    private static final int MONTH = 1;
    private static final int SECOND = 5;
    private static final int TIMEZONE = 7;
    private static final int YEAR = 0;
    private static final long serialVersionUID = 3905403108073447394L;
    private BigInteger orig_eon;
    private BigDecimal orig_fracSeconds;
    private static final BigInteger BILLION_B = BigInteger.valueOf(1000000000);
    private static final Date PURE_GREGORIAN_CHANGE = new Date(Long.MIN_VALUE);
    private static final int[] MIN_FIELD_VALUE = {Integer.MIN_VALUE, 1, 1, 0, 0, 0, 0, DatatypeConstants.MAX_TIMEZONE_OFFSET};
    private static final int[] MAX_FIELD_VALUE = {Integer.MAX_VALUE, 12, 31, 24, 59, 60, 999, DatatypeConstants.MIN_TIMEZONE_OFFSET};
    private static final String[] FIELD_NAME = {"Year", "Month", "Day", "Hour", "Minute", "Second", "Millisecond", "Timezone"};
    public static final XMLGregorianCalendar LEAP_YEAR_DEFAULT = createDateTime(400, 1, 1, 0, 0, 0, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final BigInteger FOUR = BigInteger.valueOf(4);
    private static final BigInteger HUNDRED = BigInteger.valueOf(100);
    private static final BigInteger FOUR_HUNDRED = BigInteger.valueOf(400);
    private static final BigInteger SIXTY = BigInteger.valueOf(60);
    private static final BigInteger TWENTY_FOUR = BigInteger.valueOf(24);
    private static final BigInteger TWELVE = BigInteger.valueOf(12);
    private static final BigDecimal DECIMAL_ZERO = BigDecimal.valueOf(0L);
    private static final BigDecimal DECIMAL_ONE = BigDecimal.valueOf(1L);
    private static final BigDecimal DECIMAL_SIXTY = BigDecimal.valueOf(60L);
    private int orig_year = Integer.MIN_VALUE;
    private int orig_month = Integer.MIN_VALUE;
    private int orig_day = Integer.MIN_VALUE;
    private int orig_hour = Integer.MIN_VALUE;
    private int orig_minute = Integer.MIN_VALUE;
    private int orig_second = Integer.MIN_VALUE;
    private int orig_timezone = Integer.MIN_VALUE;
    private BigInteger eon = null;
    private int year = Integer.MIN_VALUE;
    private int month = Integer.MIN_VALUE;
    private int day = Integer.MIN_VALUE;
    private int timezone = Integer.MIN_VALUE;
    private int hour = Integer.MIN_VALUE;
    private int minute = Integer.MIN_VALUE;
    private int second = Integer.MIN_VALUE;
    private BigDecimal fractionalSecond = null;

    /* renamed from: org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl$a */
    /* loaded from: classes13.dex */
    public static class C20068a {

        /* renamed from: a */
        public static final int[] f113323a = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    }

    /* renamed from: org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl$b */
    /* loaded from: classes13.dex */
    public final class C20069b {

        /* renamed from: a */
        public final String f113324a;

        /* renamed from: b */
        public final String f113325b;

        /* renamed from: c */
        public final int f113326c;

        /* renamed from: d */
        public final int f113327d;

        /* renamed from: e */
        public int f113328e;

        /* renamed from: f */
        public int f113329f;

        public C20069b(String str, String str2) {
            this.f113324a = str;
            this.f113325b = str2;
            this.f113326c = str.length();
            this.f113327d = str2.length();
        }

        /* renamed from: a */
        public void m70511a() throws IllegalArgumentException {
            while (true) {
                int i = this.f113328e;
                if (i >= this.f113326c) {
                    if (this.f113329f != this.f113327d) {
                        throw new IllegalArgumentException(this.f113325b);
                    }
                    return;
                }
                String str = this.f113324a;
                this.f113328e = i + 1;
                char charAt = str.charAt(i);
                if (charAt != '%') {
                    m70517g(charAt);
                } else {
                    String str2 = this.f113324a;
                    int i2 = this.f113328e;
                    this.f113328e = i2 + 1;
                    char charAt2 = str2.charAt(i2);
                    if (charAt2 == 'D') {
                        XMLGregorianCalendarImpl.this.setDay(m70513c(2, 2));
                    } else if (charAt2 == 'M') {
                        XMLGregorianCalendarImpl.this.setMonth(m70513c(2, 2));
                    } else if (charAt2 == 'Y') {
                        m70514d();
                    } else if (charAt2 == 'h') {
                        XMLGregorianCalendarImpl.this.setHour(m70513c(2, 2));
                    } else if (charAt2 == 'm') {
                        XMLGregorianCalendarImpl.this.setMinute(m70513c(2, 2));
                    } else if (charAt2 == 's') {
                        XMLGregorianCalendarImpl.this.setSecond(m70513c(2, 2));
                        if (m70515e() == '.') {
                            XMLGregorianCalendarImpl.this.setFractionalSecond(m70512b());
                        }
                    } else {
                        if (charAt2 != 'z') {
                            throw new InternalError();
                        }
                        char m70515e = m70515e();
                        if (m70515e == 'Z') {
                            this.f113329f++;
                            XMLGregorianCalendarImpl.this.setTimezone(0);
                        } else if (m70515e == '+' || m70515e == '-') {
                            this.f113329f++;
                            int m70513c = m70513c(2, 2);
                            m70517g(':');
                            XMLGregorianCalendarImpl.this.setTimezone(((m70513c * 60) + m70513c(2, 2)) * (m70515e != '+' ? -1 : 1));
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        public final BigDecimal m70512b() throws IllegalArgumentException {
            int i = this.f113329f;
            if (m70515e() != '.') {
                throw new IllegalArgumentException(this.f113325b);
            }
            int i2 = this.f113329f;
            while (true) {
                this.f113329f = i2 + 1;
                if (!XMLGregorianCalendarImpl.isDigit(m70515e())) {
                    return new BigDecimal(this.f113325b.substring(i, this.f113329f));
                }
                i2 = this.f113329f;
            }
        }

        /* renamed from: c */
        public final int m70513c(int i, int i2) throws IllegalArgumentException {
            int i3 = this.f113329f;
            while (XMLGregorianCalendarImpl.isDigit(m70515e())) {
                int i4 = this.f113329f;
                if (i4 - i3 >= i2) {
                    break;
                }
                this.f113329f = i4 + 1;
            }
            int i5 = this.f113329f;
            if (i5 - i3 >= i) {
                return Integer.parseInt(this.f113325b.substring(i3, i5));
            }
            throw new IllegalArgumentException(this.f113325b);
        }

        /* renamed from: d */
        public final void m70514d() throws IllegalArgumentException {
            int i;
            int i2 = this.f113329f;
            if (m70515e() == '-') {
                this.f113329f++;
                i = 1;
            } else {
                i = 0;
            }
            while (XMLGregorianCalendarImpl.isDigit(m70515e())) {
                this.f113329f++;
            }
            int i3 = this.f113329f;
            int i4 = (i3 - i2) - i;
            if (i4 < 4) {
                throw new IllegalArgumentException(this.f113325b);
            }
            String substring = this.f113325b.substring(i2, i3);
            XMLGregorianCalendarImpl xMLGregorianCalendarImpl = XMLGregorianCalendarImpl.this;
            if (i4 < 10) {
                xMLGregorianCalendarImpl.setYear(Integer.parseInt(substring));
            } else {
                xMLGregorianCalendarImpl.setYear(new BigInteger(substring));
            }
        }

        /* renamed from: e */
        public final char m70515e() throws IllegalArgumentException {
            int i = this.f113329f;
            if (i == this.f113327d) {
                return (char) 65535;
            }
            return this.f113325b.charAt(i);
        }

        /* renamed from: f */
        public final char m70516f() throws IllegalArgumentException {
            int i = this.f113329f;
            if (i == this.f113327d) {
                throw new IllegalArgumentException(this.f113325b);
            }
            String str = this.f113325b;
            this.f113329f = i + 1;
            return str.charAt(i);
        }

        /* renamed from: g */
        public final void m70517g(char c) throws IllegalArgumentException {
            if (m70516f() != c) {
                throw new IllegalArgumentException(this.f113325b);
            }
        }

        public /* synthetic */ C20069b(XMLGregorianCalendarImpl xMLGregorianCalendarImpl, String str, String str2, C20070a c20070a) {
            this(str, str2);
        }
    }

    public XMLGregorianCalendarImpl() {
    }

    private void checkFieldValueConstraint(int i, int i2) throws IllegalArgumentException {
        if ((i2 < MIN_FIELD_VALUE[i] && i2 != Integer.MIN_VALUE) || i2 > MAX_FIELD_VALUE[i]) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidFieldValue", new Object[]{new Integer(i2), FIELD_NAME[i]}));
        }
    }

    private static int compareField(int i, int i2) {
        if (i == i2) {
            return 0;
        }
        if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
            return 2;
        }
        return i < i2 ? -1 : 1;
    }

    public static XMLGregorianCalendar createDate(int i, int i2, int i3, int i4) {
        return new XMLGregorianCalendarImpl(i, i2, i3, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, i4);
    }

    public static XMLGregorianCalendar createDateTime(int i, int i2, int i3, int i4, int i5, int i6) {
        return new XMLGregorianCalendarImpl(i, i2, i3, i4, i5, i6, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public static XMLGregorianCalendar createTime(int i, int i2, int i3, int i4) {
        return new XMLGregorianCalendarImpl(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, Integer.MIN_VALUE, i4);
    }

    private String format(String str) {
        int day;
        StringBuffer stringBuffer = new StringBuffer();
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != '%') {
                stringBuffer.append(charAt);
                i = i2;
            } else {
                i = i2 + 1;
                char charAt2 = str.charAt(i2);
                if (charAt2 == 'D') {
                    day = getDay();
                } else if (charAt2 == 'M') {
                    day = getMonth();
                } else if (charAt2 != 'Y') {
                    if (charAt2 == 'h') {
                        day = getHour();
                    } else if (charAt2 == 'm') {
                        day = getMinute();
                    } else if (charAt2 == 's') {
                        printNumber(stringBuffer, getSecond(), 2);
                        if (getFractionalSecond() != null) {
                            String xMLGregorianCalendarImpl = toString(getFractionalSecond());
                            stringBuffer.append(xMLGregorianCalendarImpl.substring(1, xMLGregorianCalendarImpl.length()));
                        }
                    } else {
                        if (charAt2 != 'z') {
                            throw new InternalError();
                        }
                        int timezone = getTimezone();
                        if (timezone == 0) {
                            stringBuffer.append('Z');
                        } else if (timezone != Integer.MIN_VALUE) {
                            if (timezone < 0) {
                                stringBuffer.append('-');
                                timezone *= -1;
                            } else {
                                stringBuffer.append(PhoneNumberUtil.f36455s);
                            }
                            printNumber(stringBuffer, timezone / 60, 2);
                            stringBuffer.append(':');
                            day = timezone % 60;
                        }
                    }
                } else if (this.eon == null) {
                    int i3 = this.year;
                    if (i3 < 0) {
                        stringBuffer.append('-');
                        i3 = -this.year;
                    }
                    printNumber(stringBuffer, i3, 4);
                } else {
                    printNumber(stringBuffer, getEonAndYear(), 4);
                }
                printNumber(stringBuffer, day, 2);
            }
        }
        return stringBuffer.toString();
    }

    private BigDecimal getSeconds() {
        int i = this.second;
        if (i == Integer.MIN_VALUE) {
            return DECIMAL_ZERO;
        }
        BigDecimal valueOf = BigDecimal.valueOf(i);
        BigDecimal bigDecimal = this.fractionalSecond;
        return bigDecimal != null ? valueOf.add(bigDecimal) : valueOf;
    }

    private static int internalCompare(XMLGregorianCalendar xMLGregorianCalendar, XMLGregorianCalendar xMLGregorianCalendar2) {
        if (xMLGregorianCalendar.getEon() == xMLGregorianCalendar2.getEon()) {
            int compareField = compareField(xMLGregorianCalendar.getYear(), xMLGregorianCalendar2.getYear());
            if (compareField != 0) {
                return compareField;
            }
        } else {
            int compareField2 = compareField(xMLGregorianCalendar.getEonAndYear(), xMLGregorianCalendar2.getEonAndYear());
            if (compareField2 != 0) {
                return compareField2;
            }
        }
        int compareField3 = compareField(xMLGregorianCalendar.getMonth(), xMLGregorianCalendar2.getMonth());
        if (compareField3 != 0) {
            return compareField3;
        }
        int compareField4 = compareField(xMLGregorianCalendar.getDay(), xMLGregorianCalendar2.getDay());
        if (compareField4 != 0) {
            return compareField4;
        }
        int compareField5 = compareField(xMLGregorianCalendar.getHour(), xMLGregorianCalendar2.getHour());
        if (compareField5 != 0) {
            return compareField5;
        }
        int compareField6 = compareField(xMLGregorianCalendar.getMinute(), xMLGregorianCalendar2.getMinute());
        if (compareField6 != 0) {
            return compareField6;
        }
        int compareField7 = compareField(xMLGregorianCalendar.getSecond(), xMLGregorianCalendar2.getSecond());
        return compareField7 != 0 ? compareField7 : compareField(xMLGregorianCalendar.getFractionalSecond(), xMLGregorianCalendar2.getFractionalSecond());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static int maximumDayInMonthFor(int i, int i2) {
        if (i2 != 2) {
            return C20068a.f113323a[i2];
        }
        if (i % 400 == 0) {
            return 29;
        }
        if (i % 100 == 0 || i % 4 != 0) {
            return C20068a.f113323a[2];
        }
        return 29;
    }

    private XMLGregorianCalendar normalizeToTimezone(XMLGregorianCalendar xMLGregorianCalendar, int i) {
        XMLGregorianCalendar xMLGregorianCalendar2 = (XMLGregorianCalendar) xMLGregorianCalendar.clone();
        int i2 = -i;
        boolean z = i2 >= 0;
        if (i2 < 0) {
            i2 = -i2;
        }
        xMLGregorianCalendar2.add(new DurationImpl(z, 0, 0, 0, 0, i2, 0));
        xMLGregorianCalendar2.setTimezone(0);
        return xMLGregorianCalendar2;
    }

    public static XMLGregorianCalendar parse(String str) {
        return new XMLGregorianCalendarImpl(str);
    }

    private void printNumber(StringBuffer stringBuffer, int i, int i2) {
        String valueOf = String.valueOf(i);
        for (int length = valueOf.length(); length < i2; length++) {
            stringBuffer.append('0');
        }
        stringBuffer.append(valueOf);
    }

    public static BigInteger sanitize(Number number, int i) {
        if (i == 0 || number == null) {
            return BigInteger.ZERO;
        }
        BigInteger bigInteger = (BigInteger) number;
        return i < 0 ? bigInteger.negate() : bigInteger;
    }

    private void save() {
        this.orig_eon = this.eon;
        this.orig_year = this.year;
        this.orig_month = this.month;
        this.orig_day = this.day;
        this.orig_hour = this.hour;
        this.orig_minute = this.minute;
        this.orig_second = this.second;
        this.orig_fracSeconds = this.fractionalSecond;
        this.orig_timezone = this.timezone;
    }

    private void setEon(BigInteger bigInteger) {
        if (bigInteger != null && bigInteger.compareTo(BigInteger.ZERO) == 0) {
            bigInteger = null;
        }
        this.eon = bigInteger;
    }

    private String toString(BigDecimal bigDecimal) {
        StringBuffer stringBuffer;
        String bigInteger = bigDecimal.unscaledValue().toString();
        int scale = bigDecimal.scale();
        if (scale == 0) {
            return bigInteger;
        }
        int length = bigInteger.length() - scale;
        if (length == 0) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("0.");
            stringBuffer2.append(bigInteger);
            return stringBuffer2.toString();
        }
        if (length > 0) {
            stringBuffer = new StringBuffer(bigInteger);
            stringBuffer.insert(length, '.');
        } else {
            StringBuffer stringBuffer3 = new StringBuffer((3 - length) + bigInteger.length());
            stringBuffer3.append("0.");
            for (int i = 0; i < (-length); i++) {
                stringBuffer3.append('0');
            }
            stringBuffer3.append(bigInteger);
            stringBuffer = stringBuffer3;
        }
        return stringBuffer.toString();
    }

    private Object writeReplace() throws IOException {
        return new SerializedXMLGregorianCalendar(toXMLFormat());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0254 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0270  */
    @Override // javax.xml.datatype.XMLGregorianCalendar
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void add(javax.xml.datatype.Duration r17) {
        /*
            Method dump skipped, instructions count: 693
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl.add(javax.xml.datatype.Duration):void");
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void clear() {
        this.eon = null;
        this.year = Integer.MIN_VALUE;
        this.month = Integer.MIN_VALUE;
        this.day = Integer.MIN_VALUE;
        this.timezone = Integer.MIN_VALUE;
        this.hour = Integer.MIN_VALUE;
        this.minute = Integer.MIN_VALUE;
        this.second = Integer.MIN_VALUE;
        this.fractionalSecond = null;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public Object clone() {
        return new XMLGregorianCalendarImpl(getEonAndYear(), this.month, this.day, this.hour, this.minute, this.second, this.fractionalSecond, this.timezone);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int compare(XMLGregorianCalendar xMLGregorianCalendar) {
        if (getTimezone() == xMLGregorianCalendar.getTimezone()) {
            return internalCompare(this, xMLGregorianCalendar);
        }
        if (getTimezone() != Integer.MIN_VALUE && xMLGregorianCalendar.getTimezone() != Integer.MIN_VALUE) {
            return internalCompare((XMLGregorianCalendarImpl) normalize(), (XMLGregorianCalendarImpl) xMLGregorianCalendar.normalize());
        }
        if (getTimezone() != Integer.MIN_VALUE) {
            XMLGregorianCalendarImpl xMLGregorianCalendarImpl = getTimezone() != 0 ? (XMLGregorianCalendarImpl) normalize() : this;
            int internalCompare = internalCompare(xMLGregorianCalendarImpl, normalizeToTimezone(xMLGregorianCalendar, DatatypeConstants.MIN_TIMEZONE_OFFSET));
            if (internalCompare == -1) {
                return internalCompare;
            }
            int internalCompare2 = internalCompare(xMLGregorianCalendarImpl, normalizeToTimezone(xMLGregorianCalendar, DatatypeConstants.MAX_TIMEZONE_OFFSET));
            if (internalCompare2 == 1) {
                return internalCompare2;
            }
            return 2;
        }
        if (xMLGregorianCalendar.getTimezone() != 0) {
            xMLGregorianCalendar = (XMLGregorianCalendarImpl) normalizeToTimezone(xMLGregorianCalendar, xMLGregorianCalendar.getTimezone());
        }
        int internalCompare3 = internalCompare(normalizeToTimezone(this, DatatypeConstants.MAX_TIMEZONE_OFFSET), xMLGregorianCalendar);
        if (internalCompare3 == -1) {
            return internalCompare3;
        }
        int internalCompare4 = internalCompare(normalizeToTimezone(this, DatatypeConstants.MIN_TIMEZONE_OFFSET), xMLGregorianCalendar);
        if (internalCompare4 == 1) {
            return internalCompare4;
        }
        return 2;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof XMLGregorianCalendar) && compare((XMLGregorianCalendar) obj) == 0;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getDay() {
        return this.day;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public BigInteger getEon() {
        return this.eon;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public BigInteger getEonAndYear() {
        BigInteger bigInteger;
        int i = this.year;
        if (i != Integer.MIN_VALUE && (bigInteger = this.eon) != null) {
            return bigInteger.add(BigInteger.valueOf(i));
        }
        if (i == Integer.MIN_VALUE || this.eon != null) {
            return null;
        }
        return BigInteger.valueOf(i);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public BigDecimal getFractionalSecond() {
        return this.fractionalSecond;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getHour() {
        return this.hour;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getMillisecond() {
        BigDecimal bigDecimal = this.fractionalSecond;
        if (bigDecimal == null) {
            return Integer.MIN_VALUE;
        }
        return bigDecimal.movePointRight(3).intValue();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getMinute() {
        return this.minute;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getMonth() {
        return this.month;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getSecond() {
        return this.second;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public TimeZone getTimeZone(int i) {
        int timezone = getTimezone();
        if (timezone != Integer.MIN_VALUE) {
            i = timezone;
        }
        if (i == Integer.MIN_VALUE) {
            return TimeZone.getDefault();
        }
        char c = i < 0 ? '-' : PhoneNumberUtil.f36455s;
        if (c == '-') {
            i = -i;
        }
        int i2 = i / 60;
        int i3 = i - (i2 * 60);
        StringBuffer stringBuffer = new StringBuffer(8);
        stringBuffer.append(TimeZones.GMT_ID);
        stringBuffer.append(c);
        stringBuffer.append(i2);
        if (i3 != 0) {
            if (i3 < 10) {
                stringBuffer.append('0');
            }
            stringBuffer.append(i3);
        }
        return TimeZone.getTimeZone(stringBuffer.toString());
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getTimezone() {
        return this.timezone;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public QName getXMLSchemaType() {
        int i = this.year;
        if (i != Integer.MIN_VALUE && this.month != Integer.MIN_VALUE && this.day != Integer.MIN_VALUE && this.hour != Integer.MIN_VALUE && this.minute != Integer.MIN_VALUE && this.second != Integer.MIN_VALUE) {
            return DatatypeConstants.DATETIME;
        }
        if (i != Integer.MIN_VALUE && this.month != Integer.MIN_VALUE && this.day != Integer.MIN_VALUE && this.hour == Integer.MIN_VALUE && this.minute == Integer.MIN_VALUE && this.second == Integer.MIN_VALUE) {
            return DatatypeConstants.DATE;
        }
        if (i == Integer.MIN_VALUE && this.month == Integer.MIN_VALUE && this.day == Integer.MIN_VALUE && this.hour != Integer.MIN_VALUE && this.minute != Integer.MIN_VALUE && this.second != Integer.MIN_VALUE) {
            return DatatypeConstants.TIME;
        }
        if (i != Integer.MIN_VALUE && this.month != Integer.MIN_VALUE && this.day == Integer.MIN_VALUE && this.hour == Integer.MIN_VALUE && this.minute == Integer.MIN_VALUE && this.second == Integer.MIN_VALUE) {
            return DatatypeConstants.GYEARMONTH;
        }
        if (i == Integer.MIN_VALUE && this.month != Integer.MIN_VALUE && this.day != Integer.MIN_VALUE && this.hour == Integer.MIN_VALUE && this.minute == Integer.MIN_VALUE && this.second == Integer.MIN_VALUE) {
            return DatatypeConstants.GMONTHDAY;
        }
        if (i != Integer.MIN_VALUE && this.month == Integer.MIN_VALUE && this.day == Integer.MIN_VALUE && this.hour == Integer.MIN_VALUE && this.minute == Integer.MIN_VALUE && this.second == Integer.MIN_VALUE) {
            return DatatypeConstants.GYEAR;
        }
        if (i == Integer.MIN_VALUE && this.month != Integer.MIN_VALUE && this.day == Integer.MIN_VALUE && this.hour == Integer.MIN_VALUE && this.minute == Integer.MIN_VALUE && this.second == Integer.MIN_VALUE) {
            return DatatypeConstants.GMONTH;
        }
        if (i == Integer.MIN_VALUE && this.month == Integer.MIN_VALUE && this.day != Integer.MIN_VALUE && this.hour == Integer.MIN_VALUE && this.minute == Integer.MIN_VALUE && this.second == Integer.MIN_VALUE) {
            return DatatypeConstants.GDAY;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getClass().getName());
        stringBuffer.append("#getXMLSchemaType() :");
        stringBuffer.append(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCFields", null));
        throw new IllegalStateException(stringBuffer.toString());
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getYear() {
        return this.year;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl, javax.xml.datatype.XMLGregorianCalendar] */
    /* JADX WARN: Type inference failed for: r2v1, types: [javax.xml.datatype.XMLGregorianCalendar] */
    /* JADX WARN: Type inference failed for: r2v3, types: [javax.xml.datatype.XMLGregorianCalendar] */
    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int hashCode() {
        int timezone = getTimezone();
        if (timezone == Integer.MIN_VALUE) {
            timezone = 0;
        }
        if (timezone != 0) {
            this = normalizeToTimezone(this, getTimezone());
        }
        return this.getYear() + this.getMonth() + this.getDay() + this.getHour() + this.getMinute() + this.getSecond();
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public boolean isValid() {
        BigDecimal bigDecimal;
        int i;
        int i2 = this.month;
        if (i2 != Integer.MIN_VALUE && (i = this.day) != Integer.MIN_VALUE) {
            int i3 = this.year;
            if (i3 != Integer.MIN_VALUE) {
                if (this.eon == null) {
                    if (i > maximumDayInMonthFor(i3, i2)) {
                        return false;
                    }
                } else if (i > maximumDayInMonthFor(getEonAndYear(), this.month)) {
                    return false;
                }
            } else if (i > maximumDayInMonthFor(2000, i2)) {
                return false;
            }
        }
        if (this.hour != 24 || (this.minute == 0 && this.second == 0 && ((bigDecimal = this.fractionalSecond) == null || bigDecimal.compareTo(DECIMAL_ZERO) == 0))) {
            return (this.eon == null && this.year == 0) ? false : true;
        }
        return false;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public XMLGregorianCalendar normalize() {
        XMLGregorianCalendar normalizeToTimezone = normalizeToTimezone(this, this.timezone);
        if (getTimezone() == Integer.MIN_VALUE) {
            normalizeToTimezone.setTimezone(Integer.MIN_VALUE);
        }
        if (getMillisecond() == Integer.MIN_VALUE) {
            normalizeToTimezone.setMillisecond(Integer.MIN_VALUE);
        }
        return normalizeToTimezone;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void reset() {
        this.eon = this.orig_eon;
        this.year = this.orig_year;
        this.month = this.orig_month;
        this.day = this.orig_day;
        this.hour = this.orig_hour;
        this.minute = this.orig_minute;
        this.second = this.orig_second;
        this.fractionalSecond = this.orig_fracSeconds;
        this.timezone = this.orig_timezone;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setDay(int i) {
        checkFieldValueConstraint(2, i);
        this.day = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setFractionalSecond(BigDecimal bigDecimal) {
        if (bigDecimal != null && (bigDecimal.compareTo(DECIMAL_ZERO) < 0 || bigDecimal.compareTo(DECIMAL_ONE) > 0)) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidFractional", new Object[]{bigDecimal}));
        }
        this.fractionalSecond = bigDecimal;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setHour(int i) {
        checkFieldValueConstraint(3, i);
        this.hour = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMillisecond(int i) {
        BigDecimal valueOf;
        if (i == Integer.MIN_VALUE) {
            valueOf = null;
        } else {
            checkFieldValueConstraint(6, i);
            valueOf = BigDecimal.valueOf(i, 3);
        }
        this.fractionalSecond = valueOf;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMinute(int i) {
        checkFieldValueConstraint(4, i);
        this.minute = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMonth(int i) {
        checkFieldValueConstraint(1, i);
        this.month = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setSecond(int i) {
        checkFieldValueConstraint(5, i);
        this.second = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTime(int i, int i2, int i3) {
        setTime(i, i2, i3, (BigDecimal) null);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTimezone(int i) {
        checkFieldValueConstraint(7, i);
        this.timezone = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setYear(int i) {
        if (i == Integer.MIN_VALUE) {
            this.year = Integer.MIN_VALUE;
        } else {
            if (Math.abs(i) >= 1000000000) {
                BigInteger valueOf = BigInteger.valueOf(i);
                BigInteger remainder = valueOf.remainder(BILLION_B);
                this.year = remainder.intValue();
                setEon(valueOf.subtract(remainder));
                return;
            }
            this.year = i;
        }
        this.eon = null;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public GregorianCalendar toGregorianCalendar() {
        int intValue;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(getTimeZone(Integer.MIN_VALUE), Locale.getDefault());
        gregorianCalendar.clear();
        gregorianCalendar.setGregorianChange(PURE_GREGORIAN_CHANGE);
        int i = this.year;
        if (i != Integer.MIN_VALUE) {
            if (this.eon == null) {
                gregorianCalendar.set(0, i < 0 ? 0 : 1);
                intValue = Math.abs(this.year);
            } else {
                BigInteger eonAndYear = getEonAndYear();
                gregorianCalendar.set(0, eonAndYear.signum() == -1 ? 0 : 1);
                intValue = eonAndYear.abs().intValue();
            }
            gregorianCalendar.set(1, intValue);
        }
        int i2 = this.month;
        if (i2 != Integer.MIN_VALUE) {
            gregorianCalendar.set(2, i2 - 1);
        }
        int i3 = this.day;
        if (i3 != Integer.MIN_VALUE) {
            gregorianCalendar.set(5, i3);
        }
        int i4 = this.hour;
        if (i4 != Integer.MIN_VALUE) {
            gregorianCalendar.set(11, i4);
        }
        int i5 = this.minute;
        if (i5 != Integer.MIN_VALUE) {
            gregorianCalendar.set(12, i5);
        }
        int i6 = this.second;
        if (i6 != Integer.MIN_VALUE) {
            gregorianCalendar.set(13, i6);
        }
        if (this.fractionalSecond != null) {
            gregorianCalendar.set(14, getMillisecond());
        }
        return gregorianCalendar;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public String toXMLFormat() {
        QName xMLSchemaType = getXMLSchemaType();
        return format(xMLSchemaType == DatatypeConstants.DATETIME ? "%Y-%M-%DT%h:%m:%s%z" : xMLSchemaType == DatatypeConstants.DATE ? "%Y-%M-%D%z" : xMLSchemaType == DatatypeConstants.TIME ? "%h:%m:%s%z" : xMLSchemaType == DatatypeConstants.GMONTH ? "--%M--%z" : xMLSchemaType == DatatypeConstants.GDAY ? "---%D%z" : xMLSchemaType == DatatypeConstants.GYEAR ? "%Y%z" : xMLSchemaType == DatatypeConstants.GYEARMONTH ? "%Y-%M%z" : xMLSchemaType == DatatypeConstants.GMONTHDAY ? "--%M-%D%z" : null);
    }

    private XMLGregorianCalendarImpl(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        setYear(i);
        setMonth(i2);
        setDay(i3);
        setTime(i4, i5, i6);
        setTimezone(i8);
        setFractionalSecond(i7 != Integer.MIN_VALUE ? BigDecimal.valueOf(i7, 3) : null);
        if (!isValid()) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCValue-milli", new Object[]{new Integer(i), new Integer(i2), new Integer(i3), new Integer(i4), new Integer(i5), new Integer(i6), new Integer(i7), new Integer(i8)}));
        }
        save();
    }

    private static int compareField(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        if (bigDecimal == bigDecimal2) {
            return 0;
        }
        if (bigDecimal == null) {
            bigDecimal = DECIMAL_ZERO;
        }
        if (bigDecimal2 == null) {
            bigDecimal2 = DECIMAL_ZERO;
        }
        return bigDecimal.compareTo(bigDecimal2);
    }

    public static XMLGregorianCalendar createDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return new XMLGregorianCalendarImpl(i, i2, i3, i4, i5, i6, i7, i8);
    }

    public static XMLGregorianCalendar createTime(int i, int i2, int i3, int i4, int i5) {
        return new XMLGregorianCalendarImpl(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, i4, i5);
    }

    private static int maximumDayInMonthFor(BigInteger bigInteger, int i) {
        if (i != 2) {
            return C20068a.f113323a[i];
        }
        BigInteger mod = bigInteger.mod(FOUR_HUNDRED);
        BigInteger bigInteger2 = BigInteger.ZERO;
        if (mod.equals(bigInteger2)) {
            return 29;
        }
        if (bigInteger.mod(HUNDRED).equals(bigInteger2) || !bigInteger.mod(FOUR).equals(bigInteger2)) {
            return C20068a.f113323a[i];
        }
        return 29;
    }

    private void printNumber(StringBuffer stringBuffer, BigInteger bigInteger, int i) {
        String bigInteger2 = bigInteger.toString();
        for (int length = bigInteger2.length(); length < i; length++) {
            stringBuffer.append('0');
        }
        stringBuffer.append(bigInteger2);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTime(int i, int i2, int i3, int i4) {
        setHour(i);
        setMinute(i2);
        setSecond(i3);
        setMillisecond(i4);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setYear(BigInteger bigInteger) {
        if (bigInteger == null) {
            this.eon = null;
            this.year = Integer.MIN_VALUE;
        } else {
            BigInteger remainder = bigInteger.remainder(BILLION_B);
            this.year = remainder.intValue();
            setEon(bigInteger.subtract(remainder));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e0, code lost:
    
        if (r6 != Integer.MIN_VALUE) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00cb, code lost:
    
        if (r6 != Integer.MIN_VALUE) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b6, code lost:
    
        if (r6 != Integer.MIN_VALUE) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a1, code lost:
    
        if (r6 != Integer.MIN_VALUE) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x008d, code lost:
    
        if (r6 != Integer.MIN_VALUE) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0045, code lost:
    
        if (r6.signum() == (-1)) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0047, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x004a, code lost:
    
        r1.set(0, r7);
        r6 = r6.abs().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0049, code lost:
    
        r7 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0078, code lost:
    
        if (r6.signum() == (-1)) goto L21;
     */
    @Override // javax.xml.datatype.XMLGregorianCalendar
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.GregorianCalendar toGregorianCalendar(java.util.TimeZone r6, java.util.Locale r7, javax.xml.datatype.XMLGregorianCalendar r8) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl.toGregorianCalendar(java.util.TimeZone, java.util.Locale, javax.xml.datatype.XMLGregorianCalendar):java.util.GregorianCalendar");
    }

    public XMLGregorianCalendarImpl(String str) throws IllegalArgumentException {
        String str2;
        C20070a c20070a = null;
        int length = str.length();
        if (str.indexOf(84) != -1) {
            str2 = "%Y-%M-%DT%h:%m:%s%z";
        } else if (length >= 3 && str.charAt(2) == ':') {
            str2 = "%h:%m:%s%z";
        } else if (!str.startsWith(MultiPartWriter.f115320h)) {
            length = str.indexOf(58) != -1 ? length - 6 : length;
            int i = 0;
            for (int i2 = 1; i2 < length; i2++) {
                if (str.charAt(i2) == '-') {
                    i++;
                }
            }
            str2 = i == 0 ? "%Y%z" : i == 1 ? "%Y-%M%z" : "%Y-%M-%D%z";
        } else if (length >= 3 && str.charAt(2) == '-') {
            str2 = "---%D%z";
        } else if (length == 4 || (length >= 6 && (str.charAt(4) == '+' || (str.charAt(4) == '-' && (str.charAt(5) == '-' || length == 10))))) {
            try {
                new C20069b(this, "--%M--%z", str, c20070a).m70511a();
                if (!isValid()) {
                    throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCRepresentation", new Object[]{str}));
                }
                save();
                return;
            } catch (IllegalArgumentException unused) {
                str2 = "--%M%z";
            }
        } else {
            str2 = "--%M-%D%z";
        }
        new C20069b(this, str2, str, c20070a).m70511a();
        if (!isValid()) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCRepresentation", new Object[]{str}));
        }
        save();
    }

    private static int compareField(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger == null) {
            return bigInteger2 == null ? 0 : 2;
        }
        if (bigInteger2 == null) {
            return 2;
        }
        return bigInteger.compareTo(bigInteger2);
    }

    public static XMLGregorianCalendar createDateTime(BigInteger bigInteger, int i, int i2, int i3, int i4, int i5, BigDecimal bigDecimal, int i6) {
        return new XMLGregorianCalendarImpl(bigInteger, i, i2, i3, i4, i5, bigDecimal, i6);
    }

    public static XMLGregorianCalendar createTime(int i, int i2, int i3, BigDecimal bigDecimal, int i4) {
        return new XMLGregorianCalendarImpl((BigInteger) null, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, bigDecimal, i4);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTime(int i, int i2, int i3, BigDecimal bigDecimal) {
        setHour(i);
        setMinute(i2);
        setSecond(i3);
        setFractionalSecond(bigDecimal);
    }

    public XMLGregorianCalendarImpl(BigInteger bigInteger, int i, int i2, int i3, int i4, int i5, BigDecimal bigDecimal, int i6) {
        setYear(bigInteger);
        setMonth(i);
        setDay(i2);
        setTime(i3, i4, i5, bigDecimal);
        setTimezone(i6);
        if (!isValid()) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCValue-fractional", new Object[]{bigInteger, new Integer(i), new Integer(i2), new Integer(i3), new Integer(i4), new Integer(i5), bigDecimal, new Integer(i6)}));
        }
        save();
    }

    public XMLGregorianCalendarImpl(GregorianCalendar gregorianCalendar) {
        int i = gregorianCalendar.get(1);
        setYear(gregorianCalendar.get(0) == 0 ? -i : i);
        setMonth(gregorianCalendar.get(2) + 1);
        setDay(gregorianCalendar.get(5));
        setTime(gregorianCalendar.get(11), gregorianCalendar.get(12), gregorianCalendar.get(13), gregorianCalendar.get(14));
        setTimezone((gregorianCalendar.get(15) + gregorianCalendar.get(16)) / 60000);
        save();
    }
}
