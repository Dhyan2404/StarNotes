package org.apache.xerces.impl.p115dv.p116xs;

import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class MonthDV extends AbstractDateTimeDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(5);
        stringBuffer.append('-');
        stringBuffer.append('-');
        append(stringBuffer, c20011a.f112298b, 2);
        append(stringBuffer, (char) c20011a.f112302f, 0);
        return stringBuffer.toString();
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "gMonth"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.C20011a c20011a) {
        return AbstractDateTimeDV.datatypeFactory.newXMLGregorianCalendar(Integer.MIN_VALUE, c20011a.f112309m, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, c20011a.hasTimeZone() ? (c20011a.f112304h * 60) + c20011a.f112305i : Integer.MIN_VALUE);
    }

    public AbstractDateTimeDV.C20011a parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        int length = str.length();
        c20011a.f112297a = 2000;
        c20011a.f112299c = 1;
        if (str.charAt(0) != '-' || str.charAt(1) != '-') {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Invalid format for gMonth: ");
            stringBuffer.append(str);
            throw new SchemaDateTimeException(stringBuffer.toString());
        }
        int i = 4;
        c20011a.f112298b = parseInt(str, 2, 4);
        if (str.length() >= 6 && str.charAt(4) == '-' && str.charAt(5) == '-') {
            i = 6;
        }
        if (i < length) {
            if (!isNextCharUTCSign(str, i, length)) {
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("Error in month parsing: ");
                stringBuffer2.append(str);
                throw new SchemaDateTimeException(stringBuffer2.toString());
            }
            getTimeZone(str, c20011a, i, length);
        }
        validateDateTime(c20011a);
        saveUnnormalized(c20011a);
        int i2 = c20011a.f112302f;
        if (i2 != 0 && i2 != 90) {
            normalize(c20011a);
        }
        c20011a.f112314r = 1;
        return c20011a;
    }
}
