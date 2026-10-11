package org.apache.xerces.impl.p115dv.p116xs;

import java.math.BigInteger;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* loaded from: classes13.dex */
public class TimeDV extends AbstractDateTimeDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public String dateToString(AbstractDateTimeDV.C20011a c20011a) {
        StringBuffer stringBuffer = new StringBuffer(16);
        append(stringBuffer, c20011a.f112300d, 2);
        stringBuffer.append(':');
        append(stringBuffer, c20011a.f112301e, 2);
        stringBuffer.append(':');
        append(stringBuffer, c20011a.f112303g);
        append(stringBuffer, (char) c20011a.f112302f, 0);
        return stringBuffer.toString();
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "time"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public XMLGregorianCalendar getXMLGregorianCalendar(AbstractDateTimeDV.C20011a c20011a) {
        DatatypeFactory datatypeFactory = AbstractDateTimeDV.datatypeFactory;
        int i = c20011a.f112311o;
        int i2 = c20011a.f112312p;
        double d = c20011a.f112313q;
        return datatypeFactory.newXMLGregorianCalendar((BigInteger) null, Integer.MIN_VALUE, Integer.MIN_VALUE, i, i2, (int) d, d != 0.0d ? getFractionalSecondsAsBigDecimal(c20011a) : null, c20011a.hasTimeZone() ? (c20011a.f112304h * 60) + c20011a.f112305i : Integer.MIN_VALUE);
    }

    public AbstractDateTimeDV.C20011a parse(String str) throws SchemaDateTimeException {
        AbstractDateTimeDV.C20011a c20011a = new AbstractDateTimeDV.C20011a(str, this);
        int length = str.length();
        c20011a.f112297a = 2000;
        c20011a.f112298b = 1;
        c20011a.f112299c = 15;
        getTime(str, 0, length, c20011a);
        validateDateTime(c20011a);
        saveUnnormalized(c20011a);
        int i = c20011a.f112302f;
        if (i != 0 && i != 90) {
            normalize(c20011a);
            c20011a.f112299c = 15;
        }
        c20011a.f112314r = 2;
        return c20011a;
    }
}
