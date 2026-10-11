package com.sun.org.apache.xerces.internal.jaxp.datatype;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sun.org.apache.xerces.internal.util.DatatypeMessageFormatter;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;
import org.apache.commons.lang3.time.TimeZones;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes10.dex */
public class XMLGregorianCalendarImpl extends XMLGregorianCalendar implements Serializable, Cloneable {
    private static final int DAY = 2;
    private static final int HOUR = 3;
    private static final int MILLISECOND = 6;
    private static final int MINUTE = 4;
    private static final int MONTH = 1;
    private static final int SECOND = 5;
    private static final int TIMEZONE = 7;
    private static final int YEAR = 0;
    private static final long serialVersionUID = 1;
    private static final BigInteger BILLION = new BigInteger("1000000000");
    private static final Date PURE_GREGORIAN_CHANGE = new Date(Long.MIN_VALUE);
    private static final String[] FIELD_NAME = {"Year", "Month", "Day", "Hour", "Minute", "Second", "Millisecond", "Timezone"};
    public static final XMLGregorianCalendar LEAP_YEAR_DEFAULT = createDateTime(400, 1, 1, 0, 0, 0, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final BigInteger FOUR = BigInteger.valueOf(4);
    private static final BigInteger HUNDRED = BigInteger.valueOf(100);
    private static final BigInteger FOUR_HUNDRED = BigInteger.valueOf(400);
    private static final BigInteger SIXTY = BigInteger.valueOf(60);
    private static final BigInteger TWENTY_FOUR = BigInteger.valueOf(24);
    private static final BigInteger TWELVE = BigInteger.valueOf(12);
    private static final BigDecimal DECIMAL_ZERO = new BigDecimal("0");
    private static final BigDecimal DECIMAL_ONE = new BigDecimal("1");
    private static final BigDecimal DECIMAL_SIXTY = new BigDecimal("60");
    private static int[] daysInMonth = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    private BigInteger eon = null;
    private int year = Integer.MIN_VALUE;
    private int month = Integer.MIN_VALUE;
    private int day = Integer.MIN_VALUE;
    private int timezone = Integer.MIN_VALUE;
    private int hour = Integer.MIN_VALUE;
    private int minute = Integer.MIN_VALUE;
    private int second = Integer.MIN_VALUE;
    private BigDecimal fractionalSecond = null;

    /* loaded from: classes10.dex */
    public final class Parser {
        private int fidx;
        private final int flen;
        private final String format;
        private final String value;
        private int vidx;
        private final int vlen;

        private void parseAndSetYear(int i) throws IllegalArgumentException {
            boolean z;
            int i2 = this.vidx;
            int i3 = 0;
            if (peek() == '-') {
                this.vidx++;
                z = true;
            } else {
                z = false;
            }
            while (true) {
                char peek = peek();
                if (!XMLGregorianCalendarImpl.isDigit(peek)) {
                    break;
                }
                this.vidx++;
                i3 = ((i3 * 10) + peek) - 48;
            }
            int i4 = this.vidx;
            if (i4 - i2 < i) {
                throw new IllegalArgumentException(this.value);
            }
            if (i4 - i2 >= 7) {
                XMLGregorianCalendarImpl.this.setYear(new BigInteger(this.value.substring(i2, this.vidx)));
                return;
            }
            if (z) {
                i3 = -i3;
            }
            XMLGregorianCalendarImpl.this.year = i3;
            XMLGregorianCalendarImpl.this.eon = null;
        }

        private BigDecimal parseBigDecimal() throws IllegalArgumentException {
            int i = this.vidx;
            if (peek() != '.') {
                throw new IllegalArgumentException(this.value);
            }
            this.vidx++;
            while (XMLGregorianCalendarImpl.isDigit(peek())) {
                this.vidx++;
            }
            return new BigDecimal(this.value.substring(i, this.vidx));
        }

        private int parseInt(int i, int i2) throws IllegalArgumentException {
            int i3 = this.vidx;
            int i4 = 0;
            while (true) {
                char peek = peek();
                if (!XMLGregorianCalendarImpl.isDigit(peek)) {
                    break;
                }
                int i5 = this.vidx;
                if (i5 - i3 > i2) {
                    break;
                }
                this.vidx = i5 + 1;
                i4 = ((i4 * 10) + peek) - 48;
            }
            if (this.vidx - i3 >= i) {
                return i4;
            }
            throw new IllegalArgumentException(this.value);
        }

        private char peek() throws IllegalArgumentException {
            int i = this.vidx;
            if (i == this.vlen) {
                return (char) 65535;
            }
            return this.value.charAt(i);
        }

        private char read() throws IllegalArgumentException {
            int i = this.vidx;
            if (i == this.vlen) {
                throw new IllegalArgumentException(this.value);
            }
            String str = this.value;
            this.vidx = i + 1;
            return str.charAt(i);
        }

        private void skip(char c) throws IllegalArgumentException {
            if (read() != c) {
                throw new IllegalArgumentException(this.value);
            }
        }

        public void parse() throws IllegalArgumentException {
            while (true) {
                int i = this.fidx;
                if (i >= this.flen) {
                    if (this.vidx != this.vlen) {
                        throw new IllegalArgumentException(this.value);
                    }
                    return;
                }
                String str = this.format;
                this.fidx = i + 1;
                char charAt = str.charAt(i);
                if (charAt != '%') {
                    skip(charAt);
                } else {
                    String str2 = this.format;
                    int i2 = this.fidx;
                    this.fidx = i2 + 1;
                    char charAt2 = str2.charAt(i2);
                    if (charAt2 == 'D') {
                        XMLGregorianCalendarImpl.this.setDay(parseInt(2, 2));
                    } else if (charAt2 == 'M') {
                        XMLGregorianCalendarImpl.this.setMonth(parseInt(2, 2));
                    } else if (charAt2 == 'Y') {
                        parseAndSetYear(4);
                    } else if (charAt2 == 'h') {
                        XMLGregorianCalendarImpl.this.setHour(parseInt(2, 2));
                    } else if (charAt2 == 'm') {
                        XMLGregorianCalendarImpl.this.setMinute(parseInt(2, 2));
                    } else if (charAt2 == 's') {
                        XMLGregorianCalendarImpl.this.setSecond(parseInt(2, 2));
                        if (peek() == '.') {
                            XMLGregorianCalendarImpl.this.setFractionalSecond(parseBigDecimal());
                        }
                    } else {
                        if (charAt2 != 'z') {
                            throw new InternalError();
                        }
                        char peek = peek();
                        if (peek == 'Z') {
                            this.vidx++;
                            XMLGregorianCalendarImpl.this.setTimezone(0);
                        } else if (peek == '+' || peek == '-') {
                            this.vidx++;
                            int parseInt = parseInt(2, 2);
                            skip(':');
                            XMLGregorianCalendarImpl.this.setTimezone(((parseInt * 60) + parseInt(2, 2)) * (peek != '+' ? -1 : 1));
                        }
                    }
                }
            }
        }

        private Parser(String str, String str2) {
            this.format = str;
            this.value = str2;
            this.flen = str.length();
            this.vlen = str2.length();
        }
    }

    public XMLGregorianCalendarImpl(String str) throws IllegalArgumentException {
        String str2;
        int length = str.length();
        if (str.indexOf(84) != -1) {
            str2 = "%Y-%M-%DT%h:%m:%s%z";
        } else if (length >= 3 && str.charAt(2) == ':') {
            str2 = "%h:%m:%s%z";
        } else if (str.startsWith(MultiPartWriter.f115320h)) {
            str2 = (length < 3 || str.charAt(2) != '-') ? (length == 4 || length == 5 || length == 10) ? "--%M%z" : "--%M-%D%z" : "---%D%z";
        } else {
            length = str.indexOf(58) != -1 ? length - 6 : length;
            int i = 0;
            for (int i2 = 1; i2 < length; i2++) {
                if (str.charAt(i2) == '-') {
                    i++;
                }
            }
            str2 = i == 0 ? "%Y%z" : i == 1 ? "%Y-%M%z" : "%Y-%M-%D%z";
        }
        new Parser(str2, str).parse();
        if (!isValid()) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCRepresentation", new Object[]{str}));
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

    public static XMLGregorianCalendar createDateTime(BigInteger bigInteger, int i, int i2, int i3, int i4, int i5, BigDecimal bigDecimal, int i6) {
        return new XMLGregorianCalendarImpl(bigInteger, i, i2, i3, i4, i5, bigDecimal, i6);
    }

    public static XMLGregorianCalendar createTime(int i, int i2, int i3, int i4) {
        return new XMLGregorianCalendarImpl(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, Integer.MIN_VALUE, i4);
    }

    private String format(String str) {
        int i;
        char[] cArr;
        int length;
        char[] cArr2 = new char[32];
        int length2 = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length2) {
            int i4 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt != '%') {
                cArr2[i3] = charAt;
                i2 = i4;
                i3++;
            } else {
                i2 = i4 + 1;
                char charAt2 = str.charAt(i4);
                if (charAt2 == 'D') {
                    i3 = print2Number(cArr2, i3, getDay());
                } else if (charAt2 == 'M') {
                    i3 = print2Number(cArr2, i3, getMonth());
                } else if (charAt2 != 'Y') {
                    if (charAt2 == 'h') {
                        i3 = print2Number(cArr2, i3, getHour());
                    } else if (charAt2 == 'm') {
                        i3 = print2Number(cArr2, i3, getMinute());
                    } else if (charAt2 == 's') {
                        i3 = print2Number(cArr2, i3, getSecond());
                        if (getFractionalSecond() != null) {
                            String bigDecimal = getFractionalSecond().toString();
                            cArr = new char[cArr2.length + bigDecimal.length()];
                            System.arraycopy(cArr2, 0, cArr, 0, i3);
                            bigDecimal.getChars(1, bigDecimal.length(), cArr, i3);
                            length = bigDecimal.length() - 1;
                            i3 += length;
                            cArr2 = cArr;
                        }
                    } else {
                        if (charAt2 != 'z') {
                            throw new InternalError();
                        }
                        int timezone = getTimezone();
                        if (timezone == 0) {
                            cArr2[i3] = 'Z';
                            i3++;
                        } else if (timezone != Integer.MIN_VALUE) {
                            if (timezone < 0) {
                                i = i3 + 1;
                                cArr2[i3] = '-';
                                timezone *= -1;
                            } else {
                                i = i3 + 1;
                                cArr2[i3] = PhoneNumberUtil.f36455s;
                            }
                            int print2Number = print2Number(cArr2, i, timezone / 60);
                            cArr2[print2Number] = ':';
                            i3 = print2Number(cArr2, print2Number + 1, timezone % 60);
                        }
                    }
                } else if (this.eon == null) {
                    int year = getYear();
                    if (year < 0) {
                        cArr2[i3] = '-';
                        year = -year;
                        i3++;
                    }
                    i3 = print4Number(cArr2, i3, year);
                } else {
                    String bigInteger = getEonAndYear().toString();
                    cArr = new char[cArr2.length + bigInteger.length()];
                    System.arraycopy(cArr2, 0, cArr, 0, i3);
                    int length3 = bigInteger.length();
                    while (length3 < 4) {
                        cArr[i3] = '0';
                        length3++;
                        i3++;
                    }
                    bigInteger.getChars(0, bigInteger.length(), cArr, i3);
                    length = bigInteger.length();
                    i3 += length;
                    cArr2 = cArr;
                }
            }
        }
        return new String(cArr2, 0, i3);
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

    private void invalidFieldValue(int i, int i2) {
        throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidFieldValue", new Object[]{new Integer(i2), FIELD_NAME[i]}));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isDigit(char c) {
        return '0' <= c && c <= '9';
    }

    private static int maximumDayInMonthFor(BigInteger bigInteger, int i) {
        if (i != 2) {
            return daysInMonth[i];
        }
        BigInteger mod = bigInteger.mod(FOUR_HUNDRED);
        BigInteger bigInteger2 = BigInteger.ZERO;
        if (mod.equals(bigInteger2)) {
            return 29;
        }
        if (bigInteger.mod(HUNDRED).equals(bigInteger2) || !bigInteger.mod(FOUR).equals(bigInteger2)) {
            return daysInMonth[i];
        }
        return 29;
    }

    private XMLGregorianCalendar normalizeToTimezone(int i) {
        XMLGregorianCalendar xMLGregorianCalendar = (XMLGregorianCalendar) clone();
        int i2 = -i;
        boolean z = i2 >= 0;
        if (i2 < 0) {
            i2 = -i2;
        }
        xMLGregorianCalendar.add(new DurationImpl(z, 0, 0, 0, 0, i2, 0));
        xMLGregorianCalendar.setTimezone(0);
        return xMLGregorianCalendar;
    }

    public static XMLGregorianCalendar parse(String str) {
        return new XMLGregorianCalendarImpl(str);
    }

    private int print2Number(char[] cArr, int i, int i2) {
        int i3 = i + 1;
        cArr[i] = (char) ((i2 / 10) + 48);
        int i4 = i3 + 1;
        cArr[i3] = (char) ((i2 % 10) + 48);
        return i4;
    }

    private int print4Number(char[] cArr, int i, int i2) {
        cArr[i + 3] = (char) ((i2 % 10) + 48);
        int i3 = i2 / 10;
        cArr[i + 2] = (char) ((i3 % 10) + 48);
        int i4 = i3 / 10;
        cArr[i + 1] = (char) ((i4 % 10) + 48);
        cArr[i] = (char) (((i4 / 10) % 10) + 48);
        return i + 4;
    }

    public static BigInteger sanitize(Number number, int i) {
        if (i == 0 || number == null) {
            return BigInteger.ZERO;
        }
        BigInteger bigInteger = (BigInteger) number;
        return i < 0 ? bigInteger.negate() : bigInteger;
    }

    private void setEon(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.compareTo(BigInteger.ZERO) != 0) {
            this.eon = bigInteger;
        } else {
            this.eon = null;
        }
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void add(Duration duration) {
        BigDecimal seconds;
        int i;
        int i2;
        int i3;
        boolean[] zArr = {false, false, false, false, false, false};
        int sign = duration.getSign();
        int month = getMonth();
        if (month == Integer.MIN_VALUE) {
            zArr[1] = true;
            month = 1;
        }
        BigInteger add = BigInteger.valueOf(month).add(sanitize(duration.getField(DatatypeConstants.MONTHS), sign));
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger subtract = add.subtract(bigInteger);
        BigInteger bigInteger2 = TWELVE;
        setMonth(subtract.mod(bigInteger2).intValue() + 1);
        BigInteger bigInteger3 = new BigDecimal(add.subtract(bigInteger)).divide(new BigDecimal(bigInteger2), 3).toBigInteger();
        BigInteger eonAndYear = getEonAndYear();
        if (eonAndYear == null) {
            zArr[0] = true;
            eonAndYear = BigInteger.ZERO;
        }
        setYear(eonAndYear.add(sanitize(duration.getField(DatatypeConstants.YEARS), sign)).add(bigInteger3));
        if (getSecond() == Integer.MIN_VALUE) {
            zArr[5] = true;
            seconds = DECIMAL_ZERO;
        } else {
            seconds = getSeconds();
        }
        BigDecimal add2 = seconds.add(DurationImpl.sanitize((BigDecimal) duration.getField(DatatypeConstants.SECONDS), sign));
        BigDecimal bigDecimal = new BigDecimal(add2.toBigInteger());
        BigDecimal bigDecimal2 = DECIMAL_SIXTY;
        BigDecimal bigDecimal3 = new BigDecimal(bigDecimal.divide(bigDecimal2, 3).toBigInteger());
        BigDecimal subtract2 = add2.subtract(bigDecimal3.multiply(bigDecimal2));
        BigInteger bigInteger4 = bigDecimal3.toBigInteger();
        setSecond(subtract2.intValue());
        BigDecimal subtract3 = subtract2.subtract(new BigDecimal(BigInteger.valueOf(getSecond())));
        if (subtract3.compareTo(DECIMAL_ZERO) < 0) {
            setFractionalSecond(DECIMAL_ONE.add(subtract3));
            if (getSecond() == 0) {
                setSecond(59);
                bigInteger4 = bigInteger4.subtract(bigInteger);
            } else {
                setSecond(getSecond() - 1);
            }
        } else {
            setFractionalSecond(subtract3);
        }
        int minute = getMinute();
        if (minute == Integer.MIN_VALUE) {
            zArr[4] = true;
            minute = 0;
        }
        BigInteger add3 = BigInteger.valueOf(minute).add(sanitize(duration.getField(DatatypeConstants.MINUTES), sign)).add(bigInteger4);
        setMinute(add3.mod(SIXTY).intValue());
        BigInteger bigInteger5 = new BigDecimal(add3).divide(bigDecimal2, 3).toBigInteger();
        int hour = getHour();
        if (hour == Integer.MIN_VALUE) {
            zArr[3] = true;
            hour = 0;
        }
        BigInteger add4 = BigInteger.valueOf(hour).add(sanitize(duration.getField(DatatypeConstants.HOURS), sign)).add(bigInteger5);
        BigInteger bigInteger6 = TWENTY_FOUR;
        setHour(add4.mod(bigInteger6).intValue());
        BigInteger bigInteger7 = new BigDecimal(add4).divide(new BigDecimal(bigInteger6), 3).toBigInteger();
        int day = getDay();
        if (day == Integer.MIN_VALUE) {
            zArr[2] = true;
            day = 1;
        }
        BigInteger sanitize = sanitize(duration.getField(DatatypeConstants.DAYS), sign);
        int maximumDayInMonthFor = maximumDayInMonthFor(getEonAndYear(), getMonth());
        if (day > maximumDayInMonthFor) {
            bigInteger = BigInteger.valueOf(maximumDayInMonthFor);
        } else if (day >= 1) {
            bigInteger = BigInteger.valueOf(day);
        }
        BigInteger add5 = bigInteger.add(sanitize).add(bigInteger7);
        while (true) {
            if (add5.compareTo(BigInteger.ONE) >= 0) {
                if (add5.compareTo(BigInteger.valueOf(maximumDayInMonthFor(getEonAndYear(), getMonth()))) <= 0) {
                    break;
                }
                add5 = add5.add(BigInteger.valueOf(-maximumDayInMonthFor(getEonAndYear(), getMonth())));
                i = 1;
            } else {
                add5 = add5.add(this.month >= 2 ? BigInteger.valueOf(maximumDayInMonthFor(getEonAndYear(), getMonth() - 1)) : BigInteger.valueOf(maximumDayInMonthFor(getEonAndYear().subtract(BigInteger.valueOf(1L)), 12)));
                i = -1;
            }
            int month2 = (getMonth() + i) - 1;
            int i4 = month2 % 12;
            if (i4 < 0) {
                i3 = i4 + 12 + 1;
                i2 = new BigDecimal(month2).divide(new BigDecimal(TWELVE), 0).intValue();
            } else {
                i2 = month2 / 12;
                i3 = i4 + 1;
            }
            setMonth(i3);
            if (i2 != 0) {
                setYear(getEonAndYear().add(BigInteger.valueOf(i2)));
            }
        }
        setDay(add5.intValue());
        for (int i5 = 0; i5 <= 5; i5++) {
            if (zArr[i5]) {
                if (i5 == 0) {
                    setYear(Integer.MIN_VALUE);
                } else if (i5 == 1) {
                    setMonth(Integer.MIN_VALUE);
                } else if (i5 == 2) {
                    setDay(Integer.MIN_VALUE);
                } else if (i5 == 3) {
                    setHour(Integer.MIN_VALUE);
                } else if (i5 == 4) {
                    setMinute(Integer.MIN_VALUE);
                } else if (i5 == 5) {
                    setSecond(Integer.MIN_VALUE);
                    setFractionalSecond(null);
                }
            }
        }
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
        XMLGregorianCalendarImpl xMLGregorianCalendarImpl = (XMLGregorianCalendarImpl) xMLGregorianCalendar;
        if (getTimezone() == xMLGregorianCalendarImpl.getTimezone()) {
            return internalCompare(this, xMLGregorianCalendarImpl);
        }
        if (getTimezone() != Integer.MIN_VALUE && xMLGregorianCalendarImpl.getTimezone() != Integer.MIN_VALUE) {
            return internalCompare((XMLGregorianCalendarImpl) normalize(), (XMLGregorianCalendarImpl) xMLGregorianCalendarImpl.normalize());
        }
        if (getTimezone() != Integer.MIN_VALUE) {
            if (getTimezone() != 0) {
                this = (XMLGregorianCalendarImpl) normalize();
            }
            int internalCompare = internalCompare(this, xMLGregorianCalendarImpl.normalizeToTimezone(DatatypeConstants.MIN_TIMEZONE_OFFSET));
            if (internalCompare == -1) {
                return internalCompare;
            }
            int internalCompare2 = internalCompare(this, xMLGregorianCalendarImpl.normalizeToTimezone(DatatypeConstants.MAX_TIMEZONE_OFFSET));
            if (internalCompare2 == 1) {
                return internalCompare2;
            }
            return 2;
        }
        if (xMLGregorianCalendarImpl.getTimezone() != 0) {
            xMLGregorianCalendarImpl = (XMLGregorianCalendarImpl) xMLGregorianCalendarImpl.normalizeToTimezone(xMLGregorianCalendarImpl.getTimezone());
        }
        int internalCompare3 = internalCompare(normalizeToTimezone(DatatypeConstants.MAX_TIMEZONE_OFFSET), xMLGregorianCalendarImpl);
        if (internalCompare3 == -1) {
            return internalCompare3;
        }
        int internalCompare4 = internalCompare(normalizeToTimezone(DatatypeConstants.MIN_TIMEZONE_OFFSET), xMLGregorianCalendarImpl);
        if (internalCompare4 == 1) {
            return internalCompare4;
        }
        return 2;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public boolean equals(Object obj) {
        return obj != null && (obj instanceof XMLGregorianCalendar) && compare((XMLGregorianCalendar) obj) == 0;
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
        int i = (this.year != Integer.MIN_VALUE ? ' ' : (char) 0) | (this.month != Integer.MIN_VALUE ? (char) 16 : (char) 0) | (this.day != Integer.MIN_VALUE ? 8 : 0) | (this.hour != Integer.MIN_VALUE ? 4 : 0) | (this.minute != Integer.MIN_VALUE ? 2 : 0) | (this.second != Integer.MIN_VALUE ? (char) 1 : (char) 0);
        if (i == 7) {
            return DatatypeConstants.TIME;
        }
        if (i == 8) {
            return DatatypeConstants.GDAY;
        }
        if (i == 16) {
            return DatatypeConstants.GMONTH;
        }
        if (i == 24) {
            return DatatypeConstants.GMONTHDAY;
        }
        if (i == 32) {
            return DatatypeConstants.GYEAR;
        }
        if (i == 48) {
            return DatatypeConstants.GYEARMONTH;
        }
        if (i == 56) {
            return DatatypeConstants.DATE;
        }
        if (i == 63) {
            return DatatypeConstants.DATETIME;
        }
        throw new IllegalStateException(getClass().getName() + "#getXMLSchemaType() :" + DatatypeMessageFormatter.formatMessage(null, "InvalidXGCFields", null));
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int getYear() {
        return this.year;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.sun.org.apache.xerces.internal.jaxp.datatype.XMLGregorianCalendarImpl] */
    /* JADX WARN: Type inference failed for: r2v1, types: [javax.xml.datatype.XMLGregorianCalendar] */
    /* JADX WARN: Type inference failed for: r2v3, types: [javax.xml.datatype.XMLGregorianCalendar] */
    @Override // javax.xml.datatype.XMLGregorianCalendar
    public int hashCode() {
        int timezone = getTimezone();
        if (timezone == Integer.MIN_VALUE) {
            timezone = 0;
        }
        if (timezone != 0) {
            this = normalizeToTimezone(getTimezone());
        }
        return this.getYear() + this.getMonth() + this.getDay() + this.getHour() + this.getMinute() + this.getSecond();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0032 A[RETURN] */
    @Override // javax.xml.datatype.XMLGregorianCalendar
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isValid() {
        /*
            r3 = this;
            int r0 = r3.getMonth()
            r1 = 0
            r2 = 2
            if (r0 != r2) goto L33
            java.math.BigInteger r0 = r3.eon
            if (r0 != 0) goto L1b
            int r0 = r3.year
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r2) goto L2a
            int r2 = r3.getMonth()
            int r0 = maximumDayInMonthFor(r0, r2)
            goto L2c
        L1b:
            java.math.BigInteger r0 = r3.getEonAndYear()
            if (r0 == 0) goto L2a
            java.math.BigInteger r0 = r3.getEonAndYear()
            int r0 = maximumDayInMonthFor(r0, r2)
            goto L2c
        L2a:
            r0 = 29
        L2c:
            int r2 = r3.getDay()
            if (r2 <= r0) goto L33
            return r1
        L33:
            int r0 = r3.getHour()
            r2 = 24
            if (r0 != r2) goto L49
            int r0 = r3.getMinute()
            if (r0 == 0) goto L42
            return r1
        L42:
            int r0 = r3.getSecond()
            if (r0 == 0) goto L49
            return r1
        L49:
            java.math.BigInteger r0 = r3.eon
            if (r0 != 0) goto L52
            int r3 = r3.year
            if (r3 != 0) goto L61
            return r1
        L52:
            java.math.BigInteger r3 = r3.getEonAndYear()
            if (r3 == 0) goto L61
            java.math.BigInteger r0 = java.math.BigInteger.ZERO
            int r3 = compareField(r3, r0)
            if (r3 != 0) goto L61
            return r1
        L61:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.jaxp.datatype.XMLGregorianCalendarImpl.isValid():boolean");
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public XMLGregorianCalendar normalize() {
        XMLGregorianCalendar normalizeToTimezone = normalizeToTimezone(this.timezone);
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
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setDay(int i) {
        if ((i < 1 || 31 < i) && i != Integer.MIN_VALUE) {
            invalidFieldValue(2, i);
        }
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
        if ((i < 0 || i > 24) && i != Integer.MIN_VALUE) {
            invalidFieldValue(3, i);
        }
        this.hour = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMillisecond(int i) {
        if (i == Integer.MIN_VALUE) {
            this.fractionalSecond = null;
            return;
        }
        if ((i < 0 || 999 < i) && i != Integer.MIN_VALUE) {
            invalidFieldValue(6, i);
        }
        this.fractionalSecond = new BigDecimal(i).movePointLeft(3);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMinute(int i) {
        if ((i < 0 || 59 < i) && i != Integer.MIN_VALUE) {
            invalidFieldValue(4, i);
        }
        this.minute = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setMonth(int i) {
        if ((i < 1 || 12 < i) && i != Integer.MIN_VALUE) {
            invalidFieldValue(1, i);
        }
        this.month = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setSecond(int i) {
        if ((i < 0 || 60 < i) && i != Integer.MIN_VALUE) {
            invalidFieldValue(5, i);
        }
        this.second = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTime(int i, int i2, int i3) {
        setTime(i, i2, i3, (BigDecimal) null);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTimezone(int i) {
        if ((i < -840 || 840 < i) && i != Integer.MIN_VALUE) {
            invalidFieldValue(7, i);
        }
        this.timezone = i;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setYear(BigInteger bigInteger) {
        if (bigInteger == null) {
            this.eon = null;
            this.year = Integer.MIN_VALUE;
        } else {
            BigInteger remainder = bigInteger.remainder(BILLION);
            this.year = remainder.intValue();
            setEon(bigInteger.subtract(remainder));
        }
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public GregorianCalendar toGregorianCalendar() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(getTimeZone(Integer.MIN_VALUE), Locale.getDefault());
        gregorianCalendar.clear();
        gregorianCalendar.setGregorianChange(PURE_GREGORIAN_CHANGE);
        BigInteger eonAndYear = getEonAndYear();
        if (eonAndYear != null) {
            gregorianCalendar.set(0, eonAndYear.signum() == -1 ? 0 : 1);
            gregorianCalendar.set(1, eonAndYear.abs().intValue());
        }
        int i = this.month;
        if (i != Integer.MIN_VALUE) {
            gregorianCalendar.set(2, i - 1);
        }
        int i2 = this.day;
        if (i2 != Integer.MIN_VALUE) {
            gregorianCalendar.set(5, i2);
        }
        int i3 = this.hour;
        if (i3 != Integer.MIN_VALUE) {
            gregorianCalendar.set(11, i3);
        }
        int i4 = this.minute;
        if (i4 != Integer.MIN_VALUE) {
            gregorianCalendar.set(12, i4);
        }
        int i5 = this.second;
        if (i5 != Integer.MIN_VALUE) {
            gregorianCalendar.set(13, i5);
        }
        if (this.fractionalSecond != null) {
            gregorianCalendar.set(14, getMillisecond());
        }
        return gregorianCalendar;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public String toXMLFormat() {
        QName xMLSchemaType = getXMLSchemaType();
        return format(xMLSchemaType == DatatypeConstants.DATETIME ? "%Y-%M-%DT%h:%m:%s%z" : xMLSchemaType == DatatypeConstants.DATE ? "%Y-%M-%D%z" : xMLSchemaType == DatatypeConstants.TIME ? "%h:%m:%s%z" : xMLSchemaType == DatatypeConstants.GMONTH ? "--%M%z" : xMLSchemaType == DatatypeConstants.GDAY ? "---%D%z" : xMLSchemaType == DatatypeConstants.GYEAR ? "%Y%z" : xMLSchemaType == DatatypeConstants.GYEARMONTH ? "%Y-%M%z" : xMLSchemaType == DatatypeConstants.GMONTHDAY ? "--%M-%D%z" : null);
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

    public static XMLGregorianCalendar createDateTime(int i, int i2, int i3, int i4, int i5, int i6) {
        return new XMLGregorianCalendarImpl(i, i2, i3, i4, i5, i6, Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public static XMLGregorianCalendar createTime(int i, int i2, int i3, BigDecimal bigDecimal, int i4) {
        return new XMLGregorianCalendarImpl((BigInteger) null, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, bigDecimal, i4);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTime(int i, int i2, int i3, BigDecimal bigDecimal) {
        setHour(i);
        setMinute(i2);
        if (i3 != 60) {
            setSecond(i3);
        } else if ((i == 23 && i2 == 59) || (i == 0 && i2 == 0)) {
            setSecond(i3);
        } else {
            invalidFieldValue(5, i3);
        }
        setFractionalSecond(bigDecimal);
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

    private static int maximumDayInMonthFor(int i, int i2) {
        if (i2 != 2) {
            return daysInMonth[i2];
        }
        if (i % 400 == 0) {
            return 29;
        }
        if (i % 100 == 0 || i % 4 != 0) {
            return daysInMonth[2];
        }
        return 29;
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setYear(int i) {
        if (i == Integer.MIN_VALUE) {
            this.year = Integer.MIN_VALUE;
            this.eon = null;
            return;
        }
        int abs = Math.abs(i);
        BigInteger bigInteger = BILLION;
        if (abs < bigInteger.intValue()) {
            this.year = i;
            this.eon = null;
        } else {
            BigInteger valueOf = BigInteger.valueOf(i);
            BigInteger remainder = valueOf.remainder(bigInteger);
            this.year = remainder.intValue();
            setEon(valueOf.subtract(remainder));
        }
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public void setTime(int i, int i2, int i3, int i4) {
        setHour(i);
        setMinute(i2);
        if (i3 != 60) {
            setSecond(i3);
        } else if ((i == 23 && i2 == 59) || (i == 0 && i2 == 0)) {
            setSecond(i3);
        } else {
            invalidFieldValue(5, i3);
        }
        setMillisecond(i4);
    }

    @Override // javax.xml.datatype.XMLGregorianCalendar
    public GregorianCalendar toGregorianCalendar(TimeZone timeZone, Locale locale, XMLGregorianCalendar xMLGregorianCalendar) {
        if (timeZone == null) {
            timeZone = getTimeZone(xMLGregorianCalendar != null ? xMLGregorianCalendar.getTimezone() : Integer.MIN_VALUE);
        }
        if (locale == null) {
            locale = Locale.getDefault();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, locale);
        gregorianCalendar.clear();
        gregorianCalendar.setGregorianChange(PURE_GREGORIAN_CHANGE);
        BigInteger eonAndYear = getEonAndYear();
        if (eonAndYear != null) {
            gregorianCalendar.set(0, eonAndYear.signum() == -1 ? 0 : 1);
            gregorianCalendar.set(1, eonAndYear.abs().intValue());
        } else {
            BigInteger eonAndYear2 = xMLGregorianCalendar != null ? xMLGregorianCalendar.getEonAndYear() : null;
            if (eonAndYear2 != null) {
                gregorianCalendar.set(0, eonAndYear2.signum() == -1 ? 0 : 1);
                gregorianCalendar.set(1, eonAndYear2.abs().intValue());
            }
        }
        int i = this.month;
        if (i != Integer.MIN_VALUE) {
            gregorianCalendar.set(2, i - 1);
        } else {
            int month = xMLGregorianCalendar != null ? xMLGregorianCalendar.getMonth() : Integer.MIN_VALUE;
            if (month != Integer.MIN_VALUE) {
                gregorianCalendar.set(2, month - 1);
            }
        }
        int i2 = this.day;
        if (i2 != Integer.MIN_VALUE) {
            gregorianCalendar.set(5, i2);
        } else {
            int day = xMLGregorianCalendar != null ? xMLGregorianCalendar.getDay() : Integer.MIN_VALUE;
            if (day != Integer.MIN_VALUE) {
                gregorianCalendar.set(5, day);
            }
        }
        int i3 = this.hour;
        if (i3 != Integer.MIN_VALUE) {
            gregorianCalendar.set(11, i3);
        } else {
            int hour = xMLGregorianCalendar != null ? xMLGregorianCalendar.getHour() : Integer.MIN_VALUE;
            if (hour != Integer.MIN_VALUE) {
                gregorianCalendar.set(11, hour);
            }
        }
        int i4 = this.minute;
        if (i4 != Integer.MIN_VALUE) {
            gregorianCalendar.set(12, i4);
        } else {
            int minute = xMLGregorianCalendar != null ? xMLGregorianCalendar.getMinute() : Integer.MIN_VALUE;
            if (minute != Integer.MIN_VALUE) {
                gregorianCalendar.set(12, minute);
            }
        }
        int i5 = this.second;
        if (i5 != Integer.MIN_VALUE) {
            gregorianCalendar.set(13, i5);
        } else {
            int second = xMLGregorianCalendar != null ? xMLGregorianCalendar.getSecond() : Integer.MIN_VALUE;
            if (second != Integer.MIN_VALUE) {
                gregorianCalendar.set(13, second);
            }
        }
        if (this.fractionalSecond != null) {
            gregorianCalendar.set(14, getMillisecond());
        } else {
            if ((xMLGregorianCalendar != null ? xMLGregorianCalendar.getFractionalSecond() : null) != null) {
                gregorianCalendar.set(14, xMLGregorianCalendar.getMillisecond());
            }
        }
        return gregorianCalendar;
    }

    public XMLGregorianCalendarImpl() {
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
    }

    private XMLGregorianCalendarImpl(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        setYear(i);
        setMonth(i2);
        setDay(i3);
        setTime(i4, i5, i6);
        setTimezone(i8);
        setMillisecond(i7);
        if (!isValid()) {
            throw new IllegalArgumentException(DatatypeMessageFormatter.formatMessage(null, "InvalidXGCValue-milli", new Object[]{new Integer(i), new Integer(i2), new Integer(i3), new Integer(i4), new Integer(i5), new Integer(i6), new Integer(i7), new Integer(i8)}));
        }
    }

    public XMLGregorianCalendarImpl(GregorianCalendar gregorianCalendar) {
        int i = gregorianCalendar.get(1);
        setYear(gregorianCalendar.get(0) == 0 ? -i : i);
        setMonth(gregorianCalendar.get(2) + 1);
        setDay(gregorianCalendar.get(5));
        setTime(gregorianCalendar.get(11), gregorianCalendar.get(12), gregorianCalendar.get(13), gregorianCalendar.get(14));
        setTimezone((gregorianCalendar.get(15) + gregorianCalendar.get(16)) / 60000);
    }
}
