package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.Duration;

/* loaded from: classes10.dex */
public class DurationDV extends AbstractDateTimeDV {
    private static final AbstractDateTimeDV.DateTimeData[] DATETIMES = {new AbstractDateTimeDV.DateTimeData(1696, 9, 1, 0, 0, 0.0d, 90, null, true, null), new AbstractDateTimeDV.DateTimeData(1697, 2, 1, 0, 0, 0.0d, 90, null, true, null), new AbstractDateTimeDV.DateTimeData(1903, 3, 1, 0, 0, 0.0d, 90, null, true, null), new AbstractDateTimeDV.DateTimeData(1903, 7, 1, 0, 0, 0.0d, 90, null, true, null)};
    public static final int DAYTIMEDURATION_TYPE = 2;
    public static final int DURATION_TYPE = 0;
    public static final int YEARMONTHDURATION_TYPE = 1;

    private AbstractDateTimeDV.DateTimeData addDuration(AbstractDateTimeDV.DateTimeData dateTimeData, AbstractDateTimeDV.DateTimeData dateTimeData2, AbstractDateTimeDV.DateTimeData dateTimeData3) {
        int i;
        resetDateObj(dateTimeData3);
        int i2 = dateTimeData2.month + dateTimeData.month;
        dateTimeData3.month = modulo(i2, 1, 13);
        dateTimeData3.year = dateTimeData2.year + dateTimeData.year + fQuotient(i2, 1, 13);
        double d = dateTimeData2.second + dateTimeData.second;
        int floor = (int) Math.floor(d / 60.0d);
        dateTimeData3.second = d - (floor * 60);
        int i3 = dateTimeData2.minute + dateTimeData.minute + floor;
        int fQuotient = fQuotient(i3, 60);
        dateTimeData3.minute = mod(i3, 60, fQuotient);
        int i4 = dateTimeData2.hour + dateTimeData.hour + fQuotient;
        int fQuotient2 = fQuotient(i4, 24);
        dateTimeData3.hour = mod(i4, 24, fQuotient2);
        dateTimeData3.day = dateTimeData2.day + dateTimeData.day + fQuotient2;
        while (true) {
            int maxDayInMonthFor = maxDayInMonthFor(dateTimeData3.year, dateTimeData3.month);
            int i5 = dateTimeData3.day;
            if (i5 < 1) {
                dateTimeData3.day = i5 + maxDayInMonthFor(dateTimeData3.year, dateTimeData3.month - 1);
                i = -1;
            } else {
                if (i5 <= maxDayInMonthFor) {
                    dateTimeData3.utc = 90;
                    return dateTimeData3;
                }
                dateTimeData3.day = i5 - maxDayInMonthFor;
                i = 1;
            }
            int i6 = dateTimeData3.month + i;
            dateTimeData3.month = modulo(i6, 1, 13);
            dateTimeData3.year += fQuotient(i6, 1, 13);
        }
    }

    private short compareResults(short s, short s2, boolean z) {
        if (s2 == 2) {
            return (short) 2;
        }
        if (s != s2 && z) {
            return (short) 2;
        }
        if (s == s2 || z) {
            return s;
        }
        if (s == 0 || s2 == 0) {
            return s != 0 ? s : s2;
        }
        return (short) 2;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public short compareDates(AbstractDateTimeDV.DateTimeData dateTimeData, AbstractDateTimeDV.DateTimeData dateTimeData2, boolean z) {
        short compareResults;
        short compareResults2;
        if (compareOrder(dateTimeData, dateTimeData2) == 0) {
            return (short) 0;
        }
        AbstractDateTimeDV.DateTimeData[] dateTimeDataArr = {new AbstractDateTimeDV.DateTimeData(null, this), new AbstractDateTimeDV.DateTimeData(null, this)};
        AbstractDateTimeDV.DateTimeData[] dateTimeDataArr2 = DATETIMES;
        short compareOrder = compareOrder(addDuration(dateTimeData, dateTimeDataArr2[0], dateTimeDataArr[0]), addDuration(dateTimeData2, dateTimeDataArr2[0], dateTimeDataArr[1]));
        if (compareOrder == 2 || (compareResults = compareResults(compareOrder, compareOrder(addDuration(dateTimeData, dateTimeDataArr2[1], dateTimeDataArr[0]), addDuration(dateTimeData2, dateTimeDataArr2[1], dateTimeDataArr[1])), z)) == 2 || (compareResults2 = compareResults(compareResults, compareOrder(addDuration(dateTimeData, dateTimeDataArr2[2], dateTimeDataArr[0]), addDuration(dateTimeData2, dateTimeDataArr2[2], dateTimeDataArr[1])), z)) == 2) {
            return (short) 2;
        }
        return compareResults(compareResults2, compareOrder(addDuration(dateTimeData, dateTimeDataArr2[3], dateTimeDataArr[0]), addDuration(dateTimeData2, dateTimeDataArr2[3], dateTimeDataArr[1])), z);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.DateTimeData dateTimeData) {
        StringBuffer stringBuffer = new StringBuffer(30);
        if (dateTimeData.year < 0 || dateTimeData.month < 0 || dateTimeData.day < 0 || dateTimeData.hour < 0 || dateTimeData.minute < 0 || dateTimeData.second < 0.0d) {
            stringBuffer.append('-');
        }
        stringBuffer.append('P');
        int i = dateTimeData.year;
        stringBuffer.append((i < 0 ? -1 : 1) * i);
        stringBuffer.append('Y');
        int i2 = dateTimeData.month;
        stringBuffer.append((i2 < 0 ? -1 : 1) * i2);
        stringBuffer.append('M');
        int i3 = dateTimeData.day;
        stringBuffer.append((i3 < 0 ? -1 : 1) * i3);
        stringBuffer.append('D');
        stringBuffer.append('T');
        int i4 = dateTimeData.hour;
        stringBuffer.append((i4 < 0 ? -1 : 1) * i4);
        stringBuffer.append('H');
        int i5 = dateTimeData.minute;
        stringBuffer.append((i5 < 0 ? -1 : 1) * i5);
        stringBuffer.append('M');
        double d = dateTimeData.second;
        stringBuffer.append((d >= 0.0d ? 1 : -1) * d);
        stringBuffer.append('S');
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str, 0);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "duration"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public Duration getDuration(AbstractDateTimeDV.DateTimeData dateTimeData) {
        int i = dateTimeData.year;
        int i2 = (i < 0 || dateTimeData.month < 0 || dateTimeData.day < 0 || dateTimeData.hour < 0 || dateTimeData.minute < 0 || dateTimeData.second < 0.0d) ? -1 : 1;
        return this.factory.newDuration(i2 == 1, i != Integer.MIN_VALUE ? BigInteger.valueOf(i * i2) : null, dateTimeData.month != Integer.MIN_VALUE ? BigInteger.valueOf(r0 * i2) : null, dateTimeData.day != Integer.MIN_VALUE ? BigInteger.valueOf(r0 * i2) : null, dateTimeData.hour != Integer.MIN_VALUE ? BigInteger.valueOf(r0 * i2) : null, dateTimeData.minute != Integer.MIN_VALUE ? BigInteger.valueOf(r0 * i2) : null, dateTimeData.second != -2.147483648E9d ? new BigDecimal(String.valueOf(i2 * dateTimeData.second)) : null);
    }

    public AbstractDateTimeDV.DateTimeData parse(String str, int i) throws SchemaDateTimeException {
        int i2;
        int length = str.length();
        AbstractDateTimeDV.DateTimeData dateTimeData = new AbstractDateTimeDV.DateTimeData(str, this);
        boolean z = false;
        char charAt = str.charAt(0);
        if (charAt != 'P' && charAt != '-') {
            throw new SchemaDateTimeException();
        }
        dateTimeData.utc = charAt == '-' ? 45 : 0;
        boolean z2 = true;
        if (charAt != '-') {
            i2 = 1;
        } else {
            if (str.charAt(1) != 'P') {
                throw new SchemaDateTimeException();
            }
            i2 = 2;
        }
        int i3 = dateTimeData.utc == 45 ? -1 : 1;
        int indexOf = indexOf(str, i2, length, 'T');
        if (indexOf == -1) {
            indexOf = length;
        } else if (i == 1) {
            throw new SchemaDateTimeException();
        }
        int indexOf2 = indexOf(str, i2, indexOf, 'Y');
        if (indexOf2 != -1) {
            if (i == 2) {
                throw new SchemaDateTimeException();
            }
            dateTimeData.year = parseInt(str, i2, indexOf2) * i3;
            i2 = indexOf2 + 1;
            z = true;
        }
        int indexOf3 = indexOf(str, i2, indexOf, 'M');
        if (indexOf3 != -1) {
            if (i == 2) {
                throw new SchemaDateTimeException();
            }
            dateTimeData.month = parseInt(str, i2, indexOf3) * i3;
            i2 = indexOf3 + 1;
            z = true;
        }
        int indexOf4 = indexOf(str, i2, indexOf, 'D');
        if (indexOf4 != -1) {
            if (i == 1) {
                throw new SchemaDateTimeException();
            }
            dateTimeData.day = parseInt(str, i2, indexOf4) * i3;
            i2 = indexOf4 + 1;
            z = true;
        }
        if (length == indexOf && i2 != length) {
            throw new SchemaDateTimeException();
        }
        if (length != indexOf) {
            int i4 = i2 + 1;
            int indexOf5 = indexOf(str, i4, length, 'H');
            if (indexOf5 != -1) {
                dateTimeData.hour = parseInt(str, i4, indexOf5) * i3;
                i4 = indexOf5 + 1;
                z = true;
            }
            int indexOf6 = indexOf(str, i4, length, 'M');
            if (indexOf6 != -1) {
                dateTimeData.minute = parseInt(str, i4, indexOf6) * i3;
                i4 = indexOf6 + 1;
                z = true;
            }
            int indexOf7 = indexOf(str, i4, length, 'S');
            if (indexOf7 != -1) {
                dateTimeData.second = i3 * parseSecond(str, i4, indexOf7);
                i4 = indexOf7 + 1;
            } else {
                z2 = z;
            }
            if (i4 != length || str.charAt(i4 - 1) == 'T') {
                throw new SchemaDateTimeException();
            }
            z = z2;
        }
        if (z) {
            return dateTimeData;
        }
        throw new SchemaDateTimeException();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
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
        if (i3 + 1 != i2) {
            return Double.parseDouble(str.substring(i, i2));
        }
        throw new NumberFormatException(CloudStorageConstants.SINGLE_QUOTES + str + "' has wrong format");
    }
}
