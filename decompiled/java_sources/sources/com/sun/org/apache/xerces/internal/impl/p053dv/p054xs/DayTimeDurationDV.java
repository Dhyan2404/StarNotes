package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.xml.datatype.Duration;

/* loaded from: classes10.dex */
class DayTimeDurationDV extends DurationDV {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DurationDV, com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return parse(str, 2);
        } catch (Exception unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "dayTimeDuration"});
        }
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.DurationDV, com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.AbstractDateTimeDV
    public Duration getDuration(AbstractDateTimeDV.DateTimeData dateTimeData) {
        int i = dateTimeData.day;
        int i2 = (i < 0 || dateTimeData.hour < 0 || dateTimeData.minute < 0 || dateTimeData.second < 0.0d) ? -1 : 1;
        return this.factory.newDuration(i2 == 1, (BigInteger) null, (BigInteger) null, i != Integer.MIN_VALUE ? BigInteger.valueOf(i * i2) : null, dateTimeData.hour != Integer.MIN_VALUE ? BigInteger.valueOf(r0 * i2) : null, dateTimeData.minute != Integer.MIN_VALUE ? BigInteger.valueOf(r0 * i2) : null, dateTimeData.second != -2.147483648E9d ? new BigDecimal(String.valueOf(i2 * dateTimeData.second)) : null);
    }
}
