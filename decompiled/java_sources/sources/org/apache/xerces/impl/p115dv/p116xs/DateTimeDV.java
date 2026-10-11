package org.apache.xerces.impl.p115dv.p116xs;

import java.math.BigInteger;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class DateTimeDV extends AbstractDateTimeDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "dateTime"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.C20011a c20011a) {
        DatatypeFactory datatypeFactory = AbstractDateTimeDV.datatypeFactory;
        BigInteger valueOf = BigInteger.valueOf(c20011a.f112308l);
        int i = c20011a.f112309m;
        int i2 = c20011a.f112310n;
        int i3 = c20011a.f112311o;
        int i4 = c20011a.f112312p;
        double d = c20011a.f112313q;
        return datatypeFactory.newXMLGregorianCalendar(valueOf, i, i2, i3, i4, (int) d, d != 0.0d ? getFractionalSecondsAsBigDecimal(c20011a) : null, c20011a.hasTimeZone() ? (c20011a.f112304h * 60) + c20011a.f112305i : Integer.MIN_VALUE);
    }

    public AbstractDateTimeDV.C20011a parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        int length = str.length();
        int indexOf = indexOf(str, 0, length, 'T');
        int date = getDate(str, 0, indexOf, c20011a);
        getTime(str, indexOf + 1, length, c20011a);
        if (date != indexOf) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append(" is an invalid dateTime dataype value. ");
            stringBuffer.append("Invalid character(s) seprating date and time values.");
            throw new RuntimeException(stringBuffer.toString());
        }
        validateDateTime(c20011a);
        saveUnnormalized(c20011a);
        int i = c20011a.f112302f;
        if (i != 0 && i != 90) {
            normalize(c20011a);
        }
        return c20011a;
    }
}
