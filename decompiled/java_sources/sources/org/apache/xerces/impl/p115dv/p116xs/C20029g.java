package org.apache.xerces.impl.p115dv.p116xs;

import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.Duration;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* renamed from: org.apache.xerces.impl.dv.xs.g */
/* loaded from: classes13.dex */
public class C20029g extends DurationDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.DurationDV, org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str, 1);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "yearMonthDuration"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.DurationDV, org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public Duration getDuration(AbstractDateTimeDV.C20011a c20011a) {
        int i = c20011a.f112297a;
        int i2 = (i < 0 || c20011a.f112298b < 0) ? -1 : 1;
        return AbstractDateTimeDV.datatypeFactory.newDuration(i2 == 1, i != Integer.MIN_VALUE ? BigInteger.valueOf(i * i2) : null, c20011a.f112298b != Integer.MIN_VALUE ? BigInteger.valueOf(i2 * r11) : null, (BigInteger) null, (BigInteger) null, (BigInteger) null, (BigDecimal) null);
    }
}
