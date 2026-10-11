package org.apache.xerces.impl.p115dv.p116xs;

import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.Duration;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV;

/* renamed from: org.apache.xerces.impl.dv.xs.a */
/* loaded from: classes13.dex */
public class C20023a extends DurationDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.DurationDV, org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str, 2);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "dayTimeDuration"});
        }
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.DurationDV, org.apache.xerces.impl.p115dv.p116xs.AbstractDateTimeDV
    public Duration getDuration(AbstractDateTimeDV.C20011a c20011a) {
        int i = c20011a.f112299c;
        int i2 = (i < 0 || c20011a.f112300d < 0 || c20011a.f112301e < 0 || c20011a.f112303g < 0.0d) ? -1 : 1;
        return AbstractDateTimeDV.datatypeFactory.newDuration(i2 == 1, (BigInteger) null, (BigInteger) null, i != Integer.MIN_VALUE ? BigInteger.valueOf(i * i2) : null, c20011a.f112300d != Integer.MIN_VALUE ? BigInteger.valueOf(r7 * i2) : null, c20011a.f112301e != Integer.MIN_VALUE ? BigInteger.valueOf(r8 * i2) : null, c20011a.f112303g != -2.147483648E9d ? new BigDecimal(String.valueOf(i2 * c20011a.f112303g)) : null);
    }
}
