package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/* loaded from: classes10.dex */
public class DateTimeDV extends AbstractDateTimeDV {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "dateTime"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.DateTimeData dateTimeData) {
        BigDecimal bigDecimal;
        DatatypeFactory datatypeFactory = this.factory;
        BigInteger valueOf = BigInteger.valueOf(dateTimeData.unNormYear);
        int i = dateTimeData.unNormMonth;
        int i2 = dateTimeData.unNormDay;
        int i3 = dateTimeData.unNormHour;
        int i4 = dateTimeData.unNormMinute;
        double d = dateTimeData.unNormSecond;
        int i5 = (int) d;
        if (d != 0.0d) {
            bigDecimal = new BigDecimal(dateTimeData.unNormSecond - ((int) r7));
        } else {
            bigDecimal = null;
        }
        return datatypeFactory.newXMLGregorianCalendar(valueOf, i, i2, i3, i4, i5, bigDecimal, (dateTimeData.timezoneHr * 60) + dateTimeData.timezoneMin);
    }

    public AbstractDateTimeDV.DateTimeData parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.DateTimeData dateTimeData = new AbstractDateTimeDV.DateTimeData(str, this);
        int length = str.length();
        int indexOf = indexOf(str, 0, length, 'T');
        int date = getDate(str, 0, indexOf, dateTimeData);
        getTime(str, indexOf + 1, length, dateTimeData);
        if (date != indexOf) {
            throw new RuntimeException(str + " is an invalid dateTime dataype value. Invalid character(s) seprating date and time values.");
        }
        validateDateTime(dateTimeData);
        saveUnnormalized(dateTimeData);
        int i = dateTimeData.utc;
        if (i != 0 && i != 90) {
            normalize(dateTimeData);
        }
        return dateTimeData;
    }
}
