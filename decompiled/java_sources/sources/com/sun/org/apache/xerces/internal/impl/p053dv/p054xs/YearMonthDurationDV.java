package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.Duration;

/* loaded from: classes10.dex */
class YearMonthDurationDV extends DurationDV {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DurationDV, com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str, 1);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "yearMonthDuration"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DurationDV, com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public Duration getDuration(AbstractDateTimeDV.DateTimeData dateTimeData) {
        int i = dateTimeData.year;
        int i2 = (i < 0 || dateTimeData.month < 0) ? -1 : 1;
        return this.factory.newDuration(i2 == 1, i != Integer.MIN_VALUE ? BigInteger.valueOf(i * i2) : null, dateTimeData.month != Integer.MIN_VALUE ? BigInteger.valueOf(i2 * r12) : null, (BigInteger) null, (BigInteger) null, (BigInteger) null, (BigDecimal) null);
    }
}
