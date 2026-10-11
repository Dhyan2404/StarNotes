package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.evernote.edam.type.Constants;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xerces.internal.jaxp.datatype.DatatypeFactoryImpl;
import com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;

/* loaded from: classes10.dex */
public abstract class AbstractDateTimeDV extends TypeValidator {
    protected static final int DAY = 1;
    private static final boolean DEBUG = false;
    protected static final int MONTH = 1;
    protected static final int YEAR = 2000;
    protected DatatypeFactory factory = new DatatypeFactoryImpl();

    private void cloneDate(DateTimeData dateTimeData, DateTimeData dateTimeData2) {
        dateTimeData2.year = dateTimeData.year;
        dateTimeData2.month = dateTimeData.month;
        dateTimeData2.day = dateTimeData.day;
        dateTimeData2.hour = dateTimeData.hour;
        dateTimeData2.minute = dateTimeData.minute;
        dateTimeData2.second = dateTimeData.second;
        dateTimeData2.utc = dateTimeData.utc;
        dateTimeData2.timezoneHr = dateTimeData.timezoneHr;
        dateTimeData2.timezoneMin = dateTimeData.timezoneMin;
    }

    private boolean isLeapYear(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % 400 == 0);
    }

    public void append(StringBuffer stringBuffer, int i, int i2) {
        if (i == Integer.MIN_VALUE) {
            stringBuffer.append(i);
            return;
        }
        if (i < 0) {
            stringBuffer.append('-');
            i = -i;
        }
        if (i2 == 4) {
            if (i < 10) {
                stringBuffer.append(Constants.CLASSIFICATION_RECIPE_USER_NON_RECIPE);
            } else if (i < 100) {
                stringBuffer.append("00");
            } else if (i < 1000) {
                stringBuffer.append("0");
            }
            stringBuffer.append(i);
            return;
        }
        if (i2 == 2) {
            if (i < 10) {
                stringBuffer.append('0');
            }
            stringBuffer.append(i);
        } else if (i != 0) {
            stringBuffer.append((char) i);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public int compare(Object obj, Object obj2) {
        return compareDates((DateTimeData) obj, (DateTimeData) obj2, true);
    }

    public short compareDates(DateTimeData dateTimeData, DateTimeData dateTimeData2, boolean z) {
        if (dateTimeData.utc == dateTimeData2.utc) {
            return compareOrder(dateTimeData, dateTimeData2);
        }
        DateTimeData dateTimeData3 = new DateTimeData(null, this);
        if (dateTimeData.utc == 90) {
            cloneDate(dateTimeData2, dateTimeData3);
            dateTimeData3.timezoneHr = 14;
            dateTimeData3.timezoneMin = 0;
            dateTimeData3.utc = 43;
            normalize(dateTimeData3);
            short compareOrder = compareOrder(dateTimeData, dateTimeData3);
            if (compareOrder == -1) {
                return compareOrder;
            }
            cloneDate(dateTimeData2, dateTimeData3);
            dateTimeData3.timezoneHr = -14;
            dateTimeData3.timezoneMin = 0;
            dateTimeData3.utc = 45;
            normalize(dateTimeData3);
            short compareOrder2 = compareOrder(dateTimeData, dateTimeData3);
            if (compareOrder2 == 1) {
                return compareOrder2;
            }
            return (short) 2;
        }
        if (dateTimeData2.utc == 90) {
            cloneDate(dateTimeData, dateTimeData3);
            dateTimeData3.timezoneHr = -14;
            dateTimeData3.timezoneMin = 0;
            dateTimeData3.utc = 45;
            normalize(dateTimeData3);
            short compareOrder3 = compareOrder(dateTimeData3, dateTimeData2);
            if (compareOrder3 == -1) {
                return compareOrder3;
            }
            cloneDate(dateTimeData, dateTimeData3);
            dateTimeData3.timezoneHr = 14;
            dateTimeData3.timezoneMin = 0;
            dateTimeData3.utc = 43;
            normalize(dateTimeData3);
            short compareOrder4 = compareOrder(dateTimeData3, dateTimeData2);
            if (compareOrder4 == 1) {
                return compareOrder4;
            }
        }
        return (short) 2;
    }

    public short compareOrder(DateTimeData dateTimeData, DateTimeData dateTimeData2) {
        int i = dateTimeData.position;
        if (i < 1) {
            int i2 = dateTimeData.year;
            int i3 = dateTimeData2.year;
            if (i2 < i3) {
                return (short) -1;
            }
            if (i2 > i3) {
                return (short) 1;
            }
        }
        if (i < 2) {
            int i4 = dateTimeData.month;
            int i5 = dateTimeData2.month;
            if (i4 < i5) {
                return (short) -1;
            }
            if (i4 > i5) {
                return (short) 1;
            }
        }
        int i6 = dateTimeData.day;
        int i7 = dateTimeData2.day;
        if (i6 < i7) {
            return (short) -1;
        }
        if (i6 > i7) {
            return (short) 1;
        }
        int i8 = dateTimeData.hour;
        int i9 = dateTimeData2.hour;
        if (i8 < i9) {
            return (short) -1;
        }
        if (i8 > i9) {
            return (short) 1;
        }
        int i10 = dateTimeData.minute;
        int i11 = dateTimeData2.minute;
        if (i10 < i11) {
            return (short) -1;
        }
        if (i10 > i11) {
            return (short) 1;
        }
        double d = dateTimeData.second;
        double d2 = dateTimeData2.second;
        if (d < d2) {
            return (short) -1;
        }
        if (d > d2) {
            return (short) 1;
        }
        int i12 = dateTimeData.utc;
        int i13 = dateTimeData2.utc;
        if (i12 < i13) {
            return (short) -1;
        }
        return i12 > i13 ? (short) 1 : (short) 0;
    }

    public String dateToString(DateTimeData dateTimeData) {
        StringBuffer stringBuffer = new StringBuffer(25);
        append(stringBuffer, dateTimeData.year, 4);
        stringBuffer.append('-');
        append(stringBuffer, dateTimeData.month, 2);
        stringBuffer.append('-');
        append(stringBuffer, dateTimeData.day, 2);
        stringBuffer.append('T');
        append(stringBuffer, dateTimeData.hour, 2);
        stringBuffer.append(':');
        append(stringBuffer, dateTimeData.minute, 2);
        stringBuffer.append(':');
        append(stringBuffer, dateTimeData.second);
        append(stringBuffer, (char) dateTimeData.utc, 0);
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

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2552;
    }

    public int getDate(String str, int i, int i2, DateTimeData dateTimeData) throws RuntimeException {
        int yearMonth = getYearMonth(str, i, i2, dateTimeData);
        int i3 = yearMonth + 1;
        if (str.charAt(yearMonth) != '-') {
            throw new RuntimeException("CCYY-MM must be followed by '-' sign");
        }
        int i4 = i3 + 2;
        dateTimeData.day = parseInt(str, i3, i4);
        return i4;
    }

    public Duration getDuration(DateTimeData dateTimeData) {
        return null;
    }

    public void getTime(String str, int i, int i2, DateTimeData dateTimeData) throws RuntimeException {
        int i3 = i + 2;
        dateTimeData.hour = parseInt(str, i, i3);
        int i4 = i3 + 1;
        if (str.charAt(i3) != ':') {
            throw new RuntimeException("Error in parsing time zone");
        }
        int i5 = i4 + 2;
        dateTimeData.minute = parseInt(str, i4, i5);
        int i6 = i5 + 1;
        if (str.charAt(i5) != ':') {
            throw new RuntimeException("Error in parsing time zone");
        }
        int findUTCSign = findUTCSign(str, i4, i2);
        dateTimeData.second = parseSecond(str, i6, findUTCSign < 0 ? i2 : findUTCSign);
        if (findUTCSign > 0) {
            getTimeZone(str, dateTimeData, findUTCSign, i2);
        }
    }

    public void getTimeZone(String str, DateTimeData dateTimeData, int i, int i2) throws RuntimeException {
        dateTimeData.utc = str.charAt(i);
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
        dateTimeData.timezoneHr = parseInt(str, i4, i5) * i3;
        int i6 = i5 + 1;
        if (str.charAt(i5) != ':') {
            throw new RuntimeException("Error in parsing time zone");
        }
        int i7 = i6 + 2;
        int parseInt = i3 * parseInt(str, i6, i7);
        dateTimeData.timezoneMin = parseInt;
        if (i7 != i2) {
            throw new RuntimeException("Error in parsing time zone");
        }
        if (dateTimeData.timezoneHr == 0 && parseInt == 0) {
            return;
        }
        dateTimeData.normalized = false;
    }

    public XMLGregorianCalendar getXMLGregorianCalendar(DateTimeData dateTimeData) {
        return null;
    }

    public int getYearMonth(String str, int i, int i2, DateTimeData dateTimeData) throws RuntimeException {
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
        dateTimeData.year = parseIntYear(str, indexOf);
        if (str.charAt(indexOf) != '-') {
            throw new RuntimeException("CCYY must be followed by '-' sign");
        }
        int i4 = indexOf + 1;
        int i5 = i4 + 2;
        dateTimeData.month = parseInt(str, i4, i5);
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

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public boolean isIdentical(Object obj, Object obj2) {
        if ((obj instanceof DateTimeData) && (obj2 instanceof DateTimeData)) {
            DateTimeData dateTimeData = (DateTimeData) obj;
            DateTimeData dateTimeData2 = (DateTimeData) obj2;
            if (dateTimeData.timezoneHr == dateTimeData2.timezoneHr && dateTimeData.timezoneMin == dateTimeData2.timezoneMin) {
                return dateTimeData.equals(dateTimeData2);
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
            return isLeapYear(i) ? 29 : 28;
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

    public void normalize(DateTimeData dateTimeData) {
        int i;
        int i2 = dateTimeData.minute + (dateTimeData.timezoneMin * (-1));
        int fQuotient = fQuotient(i2, 60);
        dateTimeData.minute = mod(i2, 60, fQuotient);
        int i3 = dateTimeData.hour + (dateTimeData.timezoneHr * (-1)) + fQuotient;
        int fQuotient2 = fQuotient(i3, 24);
        dateTimeData.hour = mod(i3, 24, fQuotient2);
        dateTimeData.day += fQuotient2;
        while (true) {
            int maxDayInMonthFor = maxDayInMonthFor(dateTimeData.year, dateTimeData.month);
            int i4 = dateTimeData.day;
            int i5 = 1;
            if (i4 < 1) {
                dateTimeData.day = i4 + maxDayInMonthFor(dateTimeData.year, dateTimeData.month - 1);
                i = -1;
            } else if (i4 <= maxDayInMonthFor) {
                dateTimeData.utc = 90;
                return;
            } else {
                dateTimeData.day = i4 - maxDayInMonthFor;
                i = 1;
            }
            int i6 = dateTimeData.month + i;
            dateTimeData.month = modulo(i6, 1, 13);
            int fQuotient3 = dateTimeData.year + fQuotient(i6, 1, 13);
            dateTimeData.year = fQuotient3;
            if (fQuotient3 == 0) {
                if (dateTimeData.timezoneHr >= 0 && dateTimeData.timezoneMin >= 0) {
                    i5 = -1;
                }
                dateTimeData.year = i5;
            }
        }
    }

    public int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3 = 0;
        do {
            int digit = TypeValidator.getDigit(str.charAt(i));
            if (digit < 0) {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
            }
            if (i3 < -214748364) {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
            }
            int i4 = i3 * 10;
            if (i4 < (-2147483647) + digit) {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
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
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
            }
            if (i4 < i6) {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
            }
            int i8 = i4 * 10;
            if (i8 < i2 + digit) {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
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
        throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
    }

    public double parseSecond(String str, int i, int i2) throws NumberFormatException {
        int i3 = -1;
        for (int i4 = i; i4 < i2; i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '.') {
                i3 = i4;
            } else if (charAt > '9' || charAt < '0') {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
            }
        }
        if (i3 == -1) {
            if (i + 2 != i2) {
                throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
            }
        } else if (i + 2 != i3 || i3 + 1 == i2) {
            throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
        }
        return Double.parseDouble(str.substring(i, i2));
    }

    public void parseTimeZone(String str, int i, int i2, DateTimeData dateTimeData) throws RuntimeException {
        if (i < i2) {
            if (!isNextCharUTCSign(str, i, i2)) {
                throw new RuntimeException("Error in month parsing");
            }
            getTimeZone(str, dateTimeData, i, i2);
        }
    }

    public void resetDateObj(DateTimeData dateTimeData) {
        dateTimeData.year = 0;
        dateTimeData.month = 0;
        dateTimeData.day = 0;
        dateTimeData.hour = 0;
        dateTimeData.minute = 0;
        dateTimeData.second = 0.0d;
        dateTimeData.utc = 0;
        dateTimeData.timezoneHr = 0;
        dateTimeData.timezoneMin = 0;
    }

    public void saveUnnormalized(DateTimeData dateTimeData) {
        dateTimeData.unNormYear = dateTimeData.year;
        dateTimeData.unNormMonth = dateTimeData.month;
        dateTimeData.unNormDay = dateTimeData.day;
        dateTimeData.unNormHour = dateTimeData.hour;
        dateTimeData.unNormMinute = dateTimeData.minute;
        dateTimeData.unNormSecond = dateTimeData.second;
    }

    public void validateDateTime(DateTimeData dateTimeData) {
        int i;
        int i2 = dateTimeData.year;
        if (i2 == 0) {
            throw new RuntimeException("The year \"0000\" is an illegal year value");
        }
        int i3 = dateTimeData.month;
        if (i3 < 1 || i3 > 12) {
            throw new RuntimeException("The month must have values 1 to 12");
        }
        if (dateTimeData.day > maxDayInMonthFor(i2, i3) || (i = dateTimeData.day) < 1) {
            throw new RuntimeException("The day must have values 1 to 31");
        }
        int i4 = dateTimeData.hour;
        if (i4 > 23 || i4 < 0) {
            if (i4 != 24 || dateTimeData.minute != 0 || dateTimeData.second != 0.0d) {
                throw new RuntimeException("Hour must have values 0-23, unless 24:00:00");
            }
            dateTimeData.hour = 0;
            int i5 = i + 1;
            dateTimeData.day = i5;
            if (i5 > maxDayInMonthFor(dateTimeData.year, dateTimeData.month)) {
                dateTimeData.day = 1;
                int i6 = dateTimeData.month + 1;
                dateTimeData.month = i6;
                if (i6 > 12) {
                    dateTimeData.month = 1;
                    int i7 = dateTimeData.year + 1;
                    dateTimeData.year = i7;
                    if (i7 == 0) {
                        dateTimeData.year = 1;
                    }
                }
            }
        }
        int i8 = dateTimeData.minute;
        if (i8 > 59 || i8 < 0) {
            throw new RuntimeException("Minute must have values 0-59");
        }
        double d = dateTimeData.second;
        if (d >= 60.0d || d < 0.0d) {
            throw new RuntimeException("Second must have values 0-59");
        }
        int i9 = dateTimeData.timezoneHr;
        if (i9 > 14 || i9 < -14) {
            throw new RuntimeException("Time zone should have range -14:00 to +14:00");
        }
        if ((i9 == 14 || i9 == -14) && dateTimeData.timezoneMin != 0) {
            throw new RuntimeException("Time zone should have range -14:00 to +14:00");
        }
        int i10 = dateTimeData.timezoneMin;
        if (i10 > 59 || i10 < -59) {
            throw new RuntimeException("Minute must have values 0-59");
        }
    }

    public int fQuotient(int i, int i2, int i3) {
        return fQuotient(i - i2, i3 - i2);
    }

    /* loaded from: classes10.dex */
    public static final class DateTimeData implements XSDateTime {
        private String canonical;
        int day;
        int hour;
        int minute;
        int month;
        boolean normalized = true;
        private String originalValue;
        int position;
        double second;
        int timezoneHr;
        int timezoneMin;
        final AbstractDateTimeDV type;
        int unNormDay;
        int unNormHour;
        int unNormMinute;
        int unNormMonth;
        double unNormSecond;
        int unNormYear;
        int utc;
        int year;

        public DateTimeData(String str, AbstractDateTimeDV abstractDateTimeDV) {
            this.originalValue = str;
            this.type = abstractDateTimeDV;
        }

        public Object clone() {
            DateTimeData dateTimeData = new DateTimeData(this.year, this.month, this.day, this.hour, this.minute, this.second, this.utc, this.originalValue, this.normalized, this.type);
            dateTimeData.canonical = this.canonical;
            dateTimeData.position = this.position;
            dateTimeData.timezoneHr = this.timezoneHr;
            dateTimeData.timezoneMin = this.timezoneMin;
            dateTimeData.unNormYear = this.unNormYear;
            dateTimeData.unNormMonth = this.unNormMonth;
            dateTimeData.unNormDay = this.unNormDay;
            dateTimeData.unNormHour = this.unNormHour;
            dateTimeData.unNormMinute = this.unNormMinute;
            dateTimeData.unNormSecond = this.unNormSecond;
            return dateTimeData;
        }

        public boolean equals(Object obj) {
            return (obj instanceof DateTimeData) && this.type.compareDates(this, (DateTimeData) obj, true) == 0;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getDays() {
            if (this.type instanceof DurationDV) {
                return 0;
            }
            return this.normalized ? this.day : this.unNormDay;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public Duration getDuration() {
            return this.type.getDuration(this);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getHours() {
            if (this.type instanceof DurationDV) {
                return 0;
            }
            return this.normalized ? this.hour : this.unNormHour;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public String getLexicalValue() {
            return this.originalValue;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getMinutes() {
            if (this.type instanceof DurationDV) {
                return 0;
            }
            return this.normalized ? this.minute : this.unNormMinute;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getMonths() {
            return this.type instanceof DurationDV ? (this.year * 12) + this.month : this.normalized ? this.month : this.unNormMonth;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public double getSeconds() {
            return this.type instanceof DurationDV ? (this.day * 24 * 60 * 60) + (this.hour * 60 * 60) + (this.minute * 60) + this.second : this.normalized ? this.second : this.unNormSecond;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getTimeZoneHours() {
            return this.timezoneHr;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getTimeZoneMinutes() {
            return this.timezoneMin;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public XMLGregorianCalendar getXMLGregorianCalendar() {
            return this.type.getXMLGregorianCalendar(this);
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public int getYears() {
            if (this.type instanceof DurationDV) {
                return 0;
            }
            return this.normalized ? this.year : this.unNormYear;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public boolean hasTimeZone() {
            return this.utc != 0;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public boolean isNormalized() {
            return this.normalized;
        }

        @Override // com.sun.org.apache.xerces.internal.p056xs.datatypes.XSDateTime
        public XSDateTime normalize() {
            if (this.normalized) {
                return this;
            }
            DateTimeData dateTimeData = (DateTimeData) clone();
            dateTimeData.normalized = true;
            return dateTimeData;
        }

        public synchronized String toString() {
            if (this.canonical == null) {
                this.canonical = this.type.dateToString(this);
            }
            return this.canonical;
        }

        public DateTimeData(int i, int i2, int i3, int i4, int i5, double d, int i6, String str, boolean z, AbstractDateTimeDV abstractDateTimeDV) {
            this.year = i;
            this.month = i2;
            this.day = i3;
            this.hour = i4;
            this.minute = i5;
            this.second = d;
            this.utc = i6;
            this.type = abstractDateTimeDV;
            this.originalValue = str;
        }
    }

    public void append(StringBuffer stringBuffer, double d) {
        if (d < 0.0d) {
            stringBuffer.append('-');
            d = -d;
        }
        if (d < 10.0d) {
            stringBuffer.append('0');
        }
        stringBuffer.append(d);
    }
}
