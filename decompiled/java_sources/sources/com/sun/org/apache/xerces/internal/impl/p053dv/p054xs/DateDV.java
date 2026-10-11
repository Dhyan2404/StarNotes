package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import javax.xml.datatype.XMLGregorianCalendar;

/* loaded from: classes10.dex */
public class DateDV extends DateTimeDV {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.DateTimeData dateTimeData) {
        StringBuffer stringBuffer = new StringBuffer(25);
        append(stringBuffer, dateTimeData.year, 4);
        stringBuffer.append('-');
        append(stringBuffer, dateTimeData.month, 2);
        stringBuffer.append('-');
        append(stringBuffer, dateTimeData.day, 2);
        append(stringBuffer, (char) dateTimeData.utc, 0);
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DateTimeDV, com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "date"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DateTimeDV, com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.DateTimeData dateTimeData) {
        return this.factory.newXMLGregorianCalendar(dateTimeData.unNormYear, dateTimeData.unNormMonth, dateTimeData.unNormDay, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, (dateTimeData.timezoneHr * 60) + dateTimeData.timezoneMin);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DateTimeDV
    public AbstractDateTimeDV.DateTimeData parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.DateTimeData dateTimeData = new AbstractDateTimeDV.DateTimeData(str, this);
        int length = str.length();
        parseTimeZone(str, getDate(str, 0, length, dateTimeData), length, dateTimeData);
        validateDateTime(dateTimeData);
        saveUnnormalized(dateTimeData);
        int i = dateTimeData.utc;
        if (i != 0 && i != 90) {
            normalize(dateTimeData);
        }
        return dateTimeData;
    }
}
