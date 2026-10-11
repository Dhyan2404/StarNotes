package org.apache.xerces.impl.p115dv.p116xs;

import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class YearDV extends AbstractDateTimeDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(5);
        append(stringBuffer, c20011a.f112297a, 4);
        append(stringBuffer, (char) c20011a.f112302f, 0);
        return stringBuffer.toString();
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "gYear"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.C20011a c20011a) {
        return AbstractDateTimeDV.datatypeFactory.newXMLGregorianCalendar(c20011a.f112308l, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, c20011a.hasTimeZone() ? (c20011a.f112304h * 60) + c20011a.f112305i : Integer.MIN_VALUE);
    }

    public AbstractDateTimeDV.C20011a parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        int length = str.length();
        int i = str.charAt(0) == '-' ? 1 : 0;
        int findUTCSign = findUTCSign(str, i, length);
        int i2 = (findUTCSign == -1 ? length : findUTCSign) - i;
        if (i2 < 4) {
            throw new RuntimeException("Year must have 'CCYY' format");
        }
        if (i2 > 4 && str.charAt(i) == '0') {
            throw new RuntimeException("Leading zeros are required if the year value would otherwise have fewer than four digits; otherwise they are forbidden");
        }
        if (findUTCSign == -1) {
            c20011a.f112297a = parseIntYear(str, length);
        } else {
            c20011a.f112297a = parseIntYear(str, findUTCSign);
            getTimeZone(str, c20011a, findUTCSign, length);
        }
        c20011a.f112298b = 1;
        c20011a.f112299c = 1;
        validateDateTime(c20011a);
        saveUnnormalized(c20011a);
        int i3 = c20011a.f112302f;
        if (i3 != 0 && i3 != 90) {
            normalize(c20011a);
        }
        c20011a.f112314r = 0;
        return c20011a;
    }
}
