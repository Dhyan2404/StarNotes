package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.DecimalDV;

/* loaded from: classes13.dex */
public class IntegerDV extends DecimalDV {
    @Override // org.apache.xerces.impl.p115dv.p116xs.DecimalDV, org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        try {
            return new DecimalDV.C20013a(str, true);
        } catch (NumberFormatException unused) {
            throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "integer"});
        }
    }
}
