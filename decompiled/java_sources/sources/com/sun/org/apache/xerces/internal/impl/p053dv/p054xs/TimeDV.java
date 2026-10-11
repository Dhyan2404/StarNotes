package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/* loaded from: classes10.dex */
public class TimeDV extends AbstractDateTimeDV {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.DateTimeData dateTimeData) {
        StringBuffer stringBuffer = new StringBuffer(16);
        append(stringBuffer, dateTimeData.hour, 2);
        stringBuffer.append(':');
        append(stringBuffer, dateTimeData.minute, 2);
        stringBuffer.append(':');
        append(stringBuffer, dateTimeData.second);
        append(stringBuffer, (char) dateTimeData.utc, 0);
        return stringBuffer.toString();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "time"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.DateTimeData dateTimeData) {
        BigDecimal bigDecimal;
        DatatypeFactory datatypeFactory = this.factory;
        int i = dateTimeData.unNormHour;
        int i2 = dateTimeData.unNormMinute;
        double d = dateTimeData.unNormSecond;
        int i3 = (int) d;
        if (d != 0.0d) {
            bigDecimal = new BigDecimal(dateTimeData.unNormSecond - ((int) r7));
        } else {
            bigDecimal = null;
        }
        return datatypeFactory.newXMLGregorianCalendar((BigInteger) null, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, i3, bigDecimal, (dateTimeData.timezoneHr * 60) + dateTimeData.timezoneMin);
    }

    public AbstractDateTimeDV.DateTimeData parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.DateTimeData dateTimeData = new AbstractDateTimeDV.DateTimeData(str, this);
        int length = str.length();
        dateTimeData.year = 2000;
        dateTimeData.month = 1;
        dateTimeData.day = 15;
        getTime(str, 0, length, dateTimeData);
        validateDateTime(dateTimeData);
        saveUnnormalized(dateTimeData);
        int i = dateTimeData.utc;
        if (i != 0 && i != 90) {
            normalize(dateTimeData);
        }
        dateTimeData.position = 2;
        return dateTimeData;
    }
}
