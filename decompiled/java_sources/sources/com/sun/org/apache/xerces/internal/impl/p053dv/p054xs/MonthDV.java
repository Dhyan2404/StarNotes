package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import javax.xml.datatype.XMLGregorianCalendar;

/* loaded from: classes10.dex */
public class MonthDV extends AbstractDateTimeDV {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.DateTimeData dateTimeData) {
        StringBuffer stringBuffer = new StringBuffer(5);
        stringBuffer.append('-');
        stringBuffer.append('-');
        append(stringBuffer, dateTimeData.month, 2);
        append(stringBuffer, (char) dateTimeData.utc, 0);
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "gMonth"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.DateTimeData dateTimeData) {
        return this.factory.newXMLGregorianCalendar(Integer.MIN_VALUE, dateTimeData.unNormMonth, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, (dateTimeData.timezoneHr * 60) + dateTimeData.timezoneMin);
    }

    public AbstractDateTimeDV.DateTimeData parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.DateTimeData dateTimeData = new AbstractDateTimeDV.DateTimeData(str, this);
        int length = str.length();
        dateTimeData.year = 2000;
        dateTimeData.day = 1;
        if (str.charAt(0) != '-' || str.charAt(1) != '-') {
            throw new SchemaDateTimeException("Invalid format for gMonth: " + str);
        }
        int i = 4;
        dateTimeData.month = parseInt(str, 2, 4);
        if (str.length() >= 6 && str.charAt(4) == '-' && str.charAt(5) == '-') {
            i = 6;
        }
        if (i < length) {
            if (!isNextCharUTCSign(str, i, length)) {
                throw new SchemaDateTimeException("Error in month parsing: " + str);
            }
            getTimeZone(str, dateTimeData, i, length);
        }
        validateDateTime(dateTimeData);
        saveUnnormalized(dateTimeData);
        int i2 = dateTimeData.utc;
        if (i2 != 0 && i2 != 90) {
            normalize(dateTimeData);
        }
        dateTimeData.position = 1;
        return dateTimeData;
    }
}
