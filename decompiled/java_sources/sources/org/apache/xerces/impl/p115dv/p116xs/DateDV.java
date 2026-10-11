package org.apache.xerces.impl.p115dv.p116xs;

import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class DateDV extends DateTimeDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(25);
        append(stringBuffer, c20011a.f112297a, 4);
        stringBuffer.append('-');
        append(stringBuffer, c20011a.f112298b, 2);
        stringBuffer.append('-');
        append(stringBuffer, c20011a.f112299c, 2);
        append(stringBuffer, (char) c20011a.f112302f, 0);
        return stringBuffer.toString();
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.DateTimeDV, org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "date"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.DateTimeDV, org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.C20011a c20011a) {
        return AbstractDateTimeDV.datatypeFactory.newXMLGregorianCalendar(c20011a.f112308l, c20011a.f112309m, c20011a.f112310n, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, c20011a.hasTimeZone() ? (c20011a.f112304h * 60) + c20011a.f112305i : Integer.MIN_VALUE);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.DateTimeDV
    public AbstractDateTimeDV.C20011a parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        int length = str.length();
        parseTimeZone(str, getDate(str, 0, length, c20011a), length, c20011a);
        validateDateTime(c20011a);
        saveUnnormalized(c20011a);
        int i = c20011a.f112302f;
        if (i != 0 && i != 90) {
            normalize(c20011a);
        }
        return c20011a;
    }
}
