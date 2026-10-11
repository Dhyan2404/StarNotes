package org.apache.xerces.impl.p115dv.p116xs;

import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class DayDV extends AbstractDateTimeDV {

    /* renamed from: c */
    public static final int f112325c = 5;

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(6);
        stringBuffer.append('-');
        stringBuffer.append('-');
        stringBuffer.append('-');
        append(stringBuffer, c20011a.f112299c, 2);
        append(stringBuffer, (char) c20011a.f112302f, 0);
        return stringBuffer.toString();
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "gDay"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.C20011a c20011a) {
        return AbstractDateTimeDV.datatypeFactory.newXMLGregorianCalendar(Integer.MIN_VALUE, Integer.MIN_VALUE, c20011a.f112310n, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, c20011a.hasTimeZone() ? (c20011a.f112304h * 60) + c20011a.f112305i : Integer.MIN_VALUE);
    }

    public AbstractDateTimeDV.C20011a parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        int length = str.length();
        if (str.charAt(0) != '-' || str.charAt(1) != '-' || str.charAt(2) != '-') {
            throw new SchemaDateTimeException("Error in day parsing");
        }
        c20011a.f112297a = 2000;
        c20011a.f112298b = 1;
        c20011a.f112299c = parseInt(str, 3, 5);
        if (5 < length) {
            if (!isNextCharUTCSign(str, 5, length)) {
                throw new SchemaDateTimeException("Error in day parsing");
            }
            getTimeZone(str, c20011a, 5, length);
        }
        validateDateTime(c20011a);
        saveUnnormalized(c20011a);
        int i = c20011a.f112302f;
        if (i != 0 && i != 90) {
            normalize(c20011a);
        }
        c20011a.f112314r = 2;
        return c20011a;
    }
}
